// Use of this source code is governed by a BSD-style license
// that can be found in the License file.
//
// Author: Shuo Chen (chenshuo at chenshuo dot com)

#ifndef MUDUO_BASE_ASYNCLOGGING_H
#define MUDUO_BASE_ASYNCLOGGING_H

#include "muduo/base/BlockingQueue.h"
#include "muduo/base/BoundedBlockingQueue.h"
#include "muduo/base/CountDownLatch.h"
#include "muduo/base/Mutex.h"
#include "muduo/base/Thread.h"
#include "muduo/base/LogStream.h"

#include <atomic>
#include <vector>

namespace muduo
{

    class AsyncLogging : noncopyable
    {
    public:
        AsyncLogging(const string &basename,
                     off_t rollSize,
                     int flushInterval = 3);

        ~AsyncLogging()
        {
            if (running_)
            {
                stop();
            }
        }

        void append(const char *logline, int len);

        void start()
        {
            running_ = true;
            thread_.start();
            latch_.wait();
        }

        void stop() NO_THREAD_SAFETY_ANALYSIS
        {
            running_ = false;
            cond_.notify();
            thread_.join();
        }

    private:
        //后端log线程调用（消费者）
        void threadFunc();

        typedef muduo::detail::FixedBuffer<muduo::detail::kLargeBuffer> Buffer; /// 固定大小缓冲区
        typedef std::vector<std::unique_ptr<Buffer>> BufferVector;
        typedef BufferVector::value_type BufferPtr;

        const int flushInterval_; //超时时间，超过此时间，即使缓冲区没有写满，也将缓冲区交换给log线程写入文件
        std::atomic<bool> running_;
        const string basename_;
        const off_t rollSize_;
        muduo::Thread thread_;
        muduo::CountDownLatch latch_; //用于等待线程启动
        muduo::MutexLock mutex_;
        muduo::Condition cond_ GUARDED_BY(mutex_);
        BufferPtr currentBuffer_ GUARDED_BY(mutex_); //当前缓冲区
        BufferPtr nextBuffer_ GUARDED_BY(mutex_);    //备用缓冲区
        BufferVector buffers_ GUARDED_BY(mutex_);    //待写入文件的缓冲区列表
    };

} // namespace muduo

#endif // MUDUO_BASE_ASYNCLOGGING_H
