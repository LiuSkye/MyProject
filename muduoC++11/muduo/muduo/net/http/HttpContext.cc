/*
 * @Author: Skye_Liu 
 * @Date: 2021-04-30 15:42:28 
 * @Last Modified by:   Skye_Liu 
 * @Last Modified time: 2021-04-30 15:42:28 
 */

#include "muduo/net/Buffer.h"
#include "muduo/net/http/HttpContext.h"

using namespace muduo;
using namespace muduo::net;

bool HttpContext::processRequestLine(const char *begin, const char *end)
{
    bool succeed = false;
    const char *start = begin;
    const char *space = std::find(start, end, ' ');
    if (space != end && request_.setMethod(start, space))
    {
        start = space + 1;
        space = std::find(start, end, ' ');
        if (space != end)
        {
            const char *question = std::find(start, space, '?');
            if (question != space)
            {
                request_.setPath(start, question);
                request_.setQuery(question, space);
            }
            else
            {
                request_.setPath(start, space);
            }
            start = space + 1;
            succeed = end - start == 8 && std::equal(start, end - 1, "HTTP/1.");
            if (succeed)
            {
                if (*(end - 1) == '1')
                {
                    request_.setVersion(HttpRequest::kHttp11);
                }
                else if (*(end - 1) == '0')
                {
                    request_.setVersion(HttpRequest::kHttp10);
                }
                else
                {
                    succeed = false;
                }
            }
        }
    }
    return succeed;
}
int ConverHex(char ch)
{
    if (ch >= 'A' && ch <= 'F')
        return ch - 'A' + 10;
    if (ch >= 'a' && ch <= 'f')
        return ch - 'a' + 10;
    return ch;
}
// return false if any error
bool HttpContext::parseRequest(Buffer *buf, Timestamp receiveTime)
{
    bool ok = true;
    bool hasMore = true;
    while (hasMore)
    {
        if (state_ == kExpectRequestLine)
        {
            const char *crlf = buf->findCRLF();
            if (crlf)
            {
                ok = processRequestLine(buf->peek(), crlf);
                if (ok)
                {
                    request_.setReceiveTime(receiveTime);
                    buf->retrieveUntil(crlf + 2);
                    state_ = kExpectHeaders;
                }
                else
                {
                    hasMore = false;
                }
            }
            else
            {
                hasMore = false;
            }
        }
        else if (state_ == kExpectHeaders) //解析请求头header
        {
            const char *crlf = buf->findCRLF();
            if (crlf)
            {
                const char *colon = std::find(buf->peek(), crlf, ':'); //":"所在位置
                if (colon != crlf)
                {
                    request_.addHeader(buf->peek(), colon, crlf);
                }
                else
                {
                    // empty line, end of header
                    // FIXME:
                    // state_ = kGotAll; //请求头处理完毕
                    if (request_.method() == HttpRequest::Method::kGet)
                    {
                        hasMore = false; //解析完毕
                        state_ = kGotAll;
                    }
                    else if (request_.method() == HttpRequest::Method::kPost)
                    {
                        // hasMore = true;
                        state_ = kExpectBody;
                    }
                    else
                        hasMore = false;
                }
                buf->retrieveUntil(crlf + 2);
            }
            else
            {
                hasMore = false;
            }
        }
        else if (state_ == kExpectBody) //解析请求体
        {
            // FIXME:
            size_t remain = buf->readableBytes();
            if (remain)
            {
                body.append(buf->retrieveAllAsString());
                buf->retrieveAll();
            }
            else
            {
                auto ParseFromUrlencoded = [&]() {
                    //const char *body = buf->peek();
                    if (body.empty())
                    {
                        return;
                    }

                    string key, value;
                    int num = 0;
                    size_t n = body.size();
                    size_t i = 0, j = 0;

                    for (; i < n; i++)
                    {
                        char ch = body[i];
                        switch (ch)
                        {
                        case '=':
                            key = body.substr(j, i - j);
                            j = i + 1;
                            break;
                        case '+':
                            body[i] = ' ';
                            break;
                        case '%':
                            num = ConverHex(body[i + 1]) * 16 + ConverHex(body[i + 2]);
                            body[i + 2] = static_cast<char>((num % 10) + '0');
                            body[i + 1] = static_cast<char>((num / 10) + '0');
                            i += 2;
                            break;
                        case '&':
                            value = body.substr(j, i - j);
                            j = i + 1;
                            post_[key] = value;
                            // LOG_DEBUG("%s = %s", key.c_str(), value.c_str());
                            break;
                        default:
                            break;
                        }
                    }
                    assert(j <= i);
                    if (post_.count(key) == 0 && j < i)
                    {
                        value = body.substr(j, i - j);
                        post_[key] = value;
                    }
                };
                ParseFromUrlencoded();
                // 校验用户身份
                request_.setPath("/welcome");
                state_ = kGotAll;
                hasMore = false;
            }
        }
    }
    return ok;
}
