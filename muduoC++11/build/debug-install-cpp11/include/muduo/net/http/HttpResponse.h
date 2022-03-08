/*
 * @Author: Skye_Liu 
 * @Date: 2021-04-30 15:43:16 
 * @Last Modified by:   Skye_Liu 
 * @Last Modified time: 2021-04-30 15:43:16 
 */

// This is a public header file, it must only include public header files.

#ifndef MUDUO_NET_HTTP_HTTPRESPONSE_H
#define MUDUO_NET_HTTP_HTTPRESPONSE_H

#include "muduo/base/copyable.h"
#include "muduo/base/Types.h"

#include <map>

namespace muduo
{
    namespace net
    {

        class Buffer;
        class HttpResponse : public muduo::copyable
        {
        public:
            enum HttpStatusCode
            {
                kUnknown,
                k200Ok = 200,
                k301MovedPermanently = 301,
                k400BadRequest = 400,
                k404NotFound = 404,
            };

            explicit HttpResponse(bool close)
                : statusCode_(kUnknown),
                  closeConnection_(close)
            {
            }

            void setStatusCode(HttpStatusCode code)
            {
                statusCode_ = code;
            }

            void setStatusMessage(const string &message)
            {
                statusMessage_ = message;
            }

            void setCloseConnection(bool on)
            {
                closeConnection_ = on;
            }

            bool closeConnection() const
            {
                return closeConnection_;
            }
            //设置文档媒体类型MIME
            void setContentType(const string &contentType)
            {
                addHeader("Content-Type", contentType);
            }

            // FIXME: replace string with StringPiece
            void addHeader(const string &key, const string &value)
            {
                headers_[key] = value;
            }

            void setBody(const string &body)
            {
                body_ = body;
            }

            void appendToBuffer(Buffer *output) const;

        private:
            std::map<string, string> headers_;
            HttpStatusCode statusCode_;
            // FIXME: add http version
            string statusMessage_;
            bool closeConnection_;
            string body_;
        };

    } // namespace net
} // namespace muduo

#endif // MUDUO_NET_HTTP_HTTPRESPONSE_H
