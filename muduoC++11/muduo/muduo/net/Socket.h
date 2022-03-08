/* 用RAII方法封装socket fd
 * @Author: Skye_Liu 
 * @Date: 2021-04-17 16:37:44 
 * @Last Modified by: Skye_Liu
 * @Last Modified time: 2021-04-17 16:38:29
 */
// Copyright 2010, Shuo Chen.  All rights reserved.
// http://code.google.com/p/muduo/
//
// Use of this source code is governed by a BSD-style license
// that can be found in the License file.

// Author: Shuo Chen (chenshuo at chenshuo dot com)
//
// This is an internal header file, you should not include this.

#ifndef MUDUO_NET_SOCKET_H
#define MUDUO_NET_SOCKET_H

#include "muduo/base/noncopyable.h"

// struct tcp_info is in <netinet/tcp.h>
struct tcp_info;

namespace muduo
{
    ///
    /// TCP networking.
    ///
    namespace net
    {

        class InetAddress;

        ///
        /// Wrapper of socket file descriptor.
        ///
        /// It closes the sockfd when desctructs.
        /// It's thread safe, all operations are delagated to OS.
        class Socket : noncopyable
        {
        public:
            explicit Socket(int sockfd)
                : sockfd_(sockfd)
            {
            }

            // Socket(Socket&&) // move constructor in C++11
            ~Socket();

            int fd() const { return sockfd_; }
            // return true if success.
            bool getTcpInfo(struct tcp_info *) const;
            bool getTcpInfoString(char *buf, int len) const;

            /// abort if address in use
            void bindAddress(const InetAddress &localaddr);
            /// abort if address in use
            void listen();

            /// On success, returns a non-negative integer that is
            /// a descriptor for the accepted socket, which has been
            /// set to non-blocking and close-on-exec. *peeraddr is assigned.
            /// On error, -1 is returned, and *peeraddr is untouched.
            int accept(InetAddress *peeraddr);

            void shutdownWrite();

            ///
            /// Enable/disable TCP_NODELAY (disable/enable Nagle's algorithm).
            /// 关闭Nagle算法：将多个小包合并成一个大包发送
            void setTcpNoDelay(bool on);

            ///
            /// Enable/disable SO_REUSEADDR
            /// 设置地址重用
            void setReuseAddr(bool on);

            ///
            /// Enable/disable SO_REUSEPORT
            /// 设置端口重用,让端口被释放后可以立即被重用
            void setReusePort(bool on);

            ///
            /// Enable/disable SO_KEEPALIVE
            /// Tcp keep-alive: 定期探测连接是否存在，可用应用层心跳替代
            void setKeepAlive(bool on);

        private:
            const int sockfd_;
        };

    } // namespace net
} // namespace muduo

#endif // MUDUO_NET_SOCKET_H
