#ifndef MUDUO_EXAMPLES_IDLECONNECTION_ECHO_H
#define MUDUO_EXAMPLES_IDLECONNECTION_ECHO_H

#include "muduo/net/TcpServer.h"
//#include <muduo/base/Types.h>

#include <unordered_set>

#include <boost/circular_buffer.hpp>

// RFC 862
class EchoServer
{
public:
    EchoServer(muduo::net::EventLoop *loop,
               const muduo::net::InetAddress &listenAddr,
               int idleSeconds);

    void start();

private:
    void onConnection(const muduo::net::TcpConnectionPtr &conn);

    void onMessage(const muduo::net::TcpConnectionPtr &conn,
                   muduo::net::Buffer *buf,
                   muduo::Timestamp time);

    void onTimer();

    void dumpConnectionBuckets() const;

    typedef std::weak_ptr<muduo::net::TcpConnection> WeakTcpConnectionPtr;

    struct Entry : public muduo::copyable
    {
        explicit Entry(const WeakTcpConnectionPtr &weakConn)
            : weakConn_(weakConn)
        {
        }

        ~Entry()
        {
            muduo::net::TcpConnectionPtr conn = weakConn_.lock();
            if (conn)
            {
                conn->shutdown();
            }
        }

        WeakTcpConnectionPtr weakConn_;
    };
    //时间轮定时器
    typedef std::shared_ptr<Entry> EntryPtr;
    typedef std::weak_ptr<Entry> WeakEntryPtr;
    typedef std::unordered_set<EntryPtr> Bucket;
    typedef boost::circular_buffer<Bucket> WeakConnectionList; //环形缓冲区

    muduo::net::TcpServer server_;
    WeakConnectionList connectionBuckets_;
};

#endif // MUDUO_EXAMPLES_IDLECONNECTION_ECHO_H
