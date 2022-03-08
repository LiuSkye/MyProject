/*
 * @Author: Skye_Liu 
 * @Date: 2021-04-30 15:43:06 
 * @Last Modified by:   Skye_Liu 
 * @Last Modified time: 2021-04-30 15:43:06 
 */


#include "muduo/net/http/HttpResponse.h"
#include "muduo/net/Buffer.h"

#include <stdio.h>

using namespace muduo;
using namespace muduo::net;

void HttpResponse::appendToBuffer(Buffer *output) const
{
    char buf[32];
    snprintf(buf, sizeof buf, "HTTP/1.1 %d ", statusCode_);
    output->append(buf);
    output->append(statusMessage_);
    output->append("\r\n");

    if (closeConnection_)
    {
        //如果是短连接，就不需要告诉浏览器Content-length了，直接关闭，不存在粘包
        output->append("Connection: close\r\n");
    }
    else
    {
        //实体长度
        snprintf(buf, sizeof buf, "Content-Length: %zd\r\n", body_.size());
        output->append(buf);
        output->append("Connection: Keep-Alive\r\n");
    }
    // 添加header列表
    for (const auto &header : headers_)
    {
        output->append(header.first);
        output->append(": ");
        output->append(header.second);
        output->append("\r\n");
    }
    // 添加空行\r\n
    output->append("\r\n");
    // 添加响应体
    output->append(body_);
}
