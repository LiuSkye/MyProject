// Copyright 2010, Shuo Chen.  All rights reserved.
// http://code.google.com/p/muduo/
//
// Use of this source code is governed by a BSD-style license
// that can be found in the License file.

// Author: Shuo Chen (chenshuo at chenshuo dot com)
//

#include "muduo/net/Buffer.h"

#include "muduo/net/SocketsOps.h"

#include <errno.h>
#include <sys/uio.h>

using namespace muduo;
using namespace muduo::net;

const char Buffer::kCRLF[] = "\r\n";

const size_t Buffer::kCheapPrepend;
const size_t Buffer::kInitialSize;

ssize_t Buffer::readFd(int fd, int *savedErrno)
{
    // 结合栈上空间，避免内存使用过大，提高内存使用率
    // saved an ioctl()/FIONREAD call to tell how much to read
    // 节省一次ioctl()系统调用：获取有多少数据可读。
    char extrabuf[65536]; // 栈上空间64k，足够全部读取
    struct iovec vec[2];
    const size_t writable = writableBytes();
    // 堆上缓冲区
    vec[0].iov_base = begin() + writerIndex_;
    vec[0].iov_len = writable;
    // 栈上临时缓冲区
    vec[1].iov_base = extrabuf;
    vec[1].iov_len = sizeof extrabuf;
    // when there is enough space in this buffer, don't read into extrabuf.
    // when extrabuf is used, we read 128k-1 bytes at most. 至多读128k-1字节
    const int iovcnt = (writable < sizeof extrabuf) ? 2 : 1;
    const ssize_t n = sockets::readv(fd, vec, iovcnt); // 将数据读到多块分散的缓冲区
    if (n < 0)
    {
        *savedErrno = errno;
    }
    else if (implicit_cast<size_t>(n) <= writable) // 当前堆上缓冲区足够容纳
    {
        writerIndex_ += n;
    }
    else // 不够容纳，数据被接收到栈上缓冲区中，将其append至buffer_中
    {
        writerIndex_ = buffer_.size();
        append(extrabuf, n - writable);
    }
    // if (n == writable + sizeof extrabuf)
    // {
    //   goto line_30;
    // }
    return n;
}
