// Use of this source code is governed by a BSD-style license
// that can be found in the License file.
//
// Author: Shuo Chen (chenshuo at chenshuo dot com)

#include "muduo/base/AsyncLogging.h"
#include "muduo/base/LogFile.h"
#include "muduo/base/Timestamp.h"

#include <stdio.h>

using namespace muduo;

AsyncLogging::AsyncLogging(const string &basename,
                           off_t rollSize,
                           int flushInterval)
    : flushInterval_(flushInterval),
      running_(false),
      basename_(basename),
      rollSize_(rollSize),
      thread_(std::bind(&AsyncLogging::threadFunc, this), "Logging"),
      latch_(1),
      mutex_(),
      cond_(mutex_),
      currentBuffer_(new Buffer),
      nextBuffer_(new Buffer),
      buffers_()
{
    currentBuffer_->bzero();
    nextBuffer_->bzero();
    //缓冲区列表预留16个槽
    buffers_.reserve(16);
}

void AsyncLogging::append(const char *logline, int len)
{
    //往缓冲区中写数据，加锁保护
    muduo::MutexLockGuard lock(mutex_);
    if (currentBuffer_->avail() > len)
    {
        currentBuffer_->append(logline, len);
    }
    else
    {
        // 当前缓冲区已满，将当前缓冲区添加到待写入文件的缓冲区列表
        buffers_.push_back(std::move(currentBuffer_));
        // 如果有下一块备用缓冲区，切换到备用缓冲区
        if (nextBuffer_)
        {
            currentBuffer_ = std::move(nextBuffer_);
        }
        // 否者重新申请一块新的前端缓冲区,待会会由后端线程释放。只有前端线程写日志过快时才会发生
        else
        {
            currentBuffer_.reset(new Buffer); // Rarely happens
        }
        currentBuffer_->append(logline, len);
        // 通知log后端线程
        cond_.notify();
    }
}

void AsyncLogging::threadFunc()
{
    assert(running_ == true);
    latch_.countDown();
    LogFile output(basename_, rollSize_, false);
    // 后端log线程也准备两块空闲缓冲区
    BufferPtr newBuffer1(new Buffer);
    BufferPtr newBuffer2(new Buffer);
    newBuffer1->bzero();
    newBuffer2->bzero();
    BufferVector buffersToWrite; //后端的buffer列表，用于交换前端buffers_
    buffersToWrite.reserve(16);
    while (running_)
    {
        assert(newBuffer1 && newBuffer1->length() == 0);
        assert(newBuffer2 && newBuffer2->length() == 0);
        assert(buffersToWrite.empty());

        {
            muduo::MutexLockGuard lock(mutex_);
            if (buffers_.empty()) // unusual usage!  等待待写入缓冲区列表非空，非常规用法，没有使用while，可能会有虚假唤醒:(可能是遇到了signal被唤醒了，条件并没有满足）
            {
                cond_.waitForSeconds(flushInterval_); //超时了，即使条件不满足也写文件
            }
            buffers_.push_back(std::move(currentBuffer_)); // 将当前缓冲区移入到buffers_
            currentBuffer_ = std::move(newBuffer1);        // 将空闲的newBuffer1置为当前缓冲区
            buffersToWrite.swap(buffers_);                 // 将buffers_交换出来，缩小临界区，这样后面可以在临界区外安全的访问 “待写入列表” 写文件
            if (!nextBuffer_)                              //为空
            {
                nextBuffer_ = std::move(newBuffer2); //将前端的下一块备用缓冲区重新填充，确保前端始终有一个备用buffer可用，减少前端临界区分配新内存的概率
            }
        }

        // 在临界区外进行真正的写文件操作
        assert(!buffersToWrite.empty());
        // 消息堆积，前端陷入死循环，拼命发送日志消息，超过后端的处理能力，造成日志数据在内存中堆积，严重时可能会引发性能问题
        if (buffersToWrite.size() > 25)
        {
            char buf[256];
            snprintf(buf, sizeof buf, "Dropped log messages at %s, %zd larger buffers\n",
                     Timestamp::now().toFormattedString().c_str(),
                     buffersToWrite.size() - 2);
            fputs(buf, stderr);
            output.append(buf, static_cast<int>(strlen(buf)));
            // 直接丢掉多余日志，以腾出内存，仅保留两块
            buffersToWrite.erase(buffersToWrite.begin() + 2, buffersToWrite.end());
        }
        // 写入文件
        for (const auto &buffer : buffersToWrite)
        {
            // FIXME: use unbuffered stdio FILE ? or use ::writev ?
            output.append(buffer->data(), buffer->length());
        }

        // 仅保留两块buffer
        if (buffersToWrite.size() > 2)
        {
            // drop non-bzero-ed buffers, avoid trashing
            buffersToWrite.resize(2);
        }
        // 如果后端的主buffer没有
        if (!newBuffer1)
        {
            assert(!buffersToWrite.empty());
            // 重新填充后端的主buffer
            newBuffer1 = std::move(buffersToWrite.back());
            buffersToWrite.pop_back();
            newBuffer1->reset();
        }
        // 如果后端的备用buffer没有
        if (!newBuffer2)
        {
            assert(!buffersToWrite.empty());
            newBuffer2 = std::move(buffersToWrite.back());
            buffersToWrite.pop_back();
            newBuffer2->reset();
        }

        buffersToWrite.clear();
        output.flush();
    }
    // 刷新文件流
    output.flush();
}
