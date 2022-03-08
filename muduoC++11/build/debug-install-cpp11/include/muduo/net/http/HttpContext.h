/*
 * @Author: Skye_Liu 
 * @Date: 2021-04-30 15:42:55 
 * @Last Modified by:   Skye_Liu 
 * @Last Modified time: 2021-04-30 15:42:55 
 */

// This is an internal header file, you should not include this.

#ifndef MUDUO_NET_HTTP_HTTPCONTEXT_H
#define MUDUO_NET_HTTP_HTTPCONTEXT_H

#include "muduo/base/copyable.h"

#include "muduo/net/http/HttpRequest.h"
#include <unordered_map>

namespace muduo
{
    namespace net
    {

        class Buffer;

        class HttpContext : public muduo::copyable
        {
        public:
            // 解析状态
            enum HttpRequestParseState
            {
                kExpectRequestLine,
                kExpectHeaders,
                kExpectBody,
                kGotAll,
            };

            HttpContext()
                : state_(kExpectRequestLine)
            {
            }

            // default copy-ctor, dtor and assignment are fine

            // return false if any error
            bool parseRequest(Buffer *buf, Timestamp receiveTime);

            bool gotAll() const
            {
                return state_ == kGotAll;
            }

            void reset()
            {
                state_ = kExpectRequestLine;
                HttpRequest dummy;
                request_.swap(dummy);
            }

            const HttpRequest &request() const
            {
                return request_;
            }

            HttpRequest &request()
            {
                return request_;
            }

        private:
            bool processRequestLine(const char *begin, const char *end);

            HttpRequestParseState state_;
            HttpRequest request_;

            std::unordered_map<std::string, std::string> post_;
            string body;
        };

    } // namespace net
} // namespace muduo

#endif // MUDUO_NET_HTTP_HTTPCONTEXT_H
