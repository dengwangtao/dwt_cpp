#include "chatserver.hpp"

#include <functional>
#include <string>
#include <json.hpp>
#include "chatservice.hpp"

using namespace std::placeholders;
using json = nlohmann::json;

ChatServer::ChatServer(EventLoop *loop, const InetAddress &listenAddr, const string &nameArg)
    :_server(loop, listenAddr, nameArg), _loop(loop)
{   

    // 注册连接到达回调
    _server.setConnectionCallback(
        std::bind(&ChatServer::onConnection, this, _1)
    );

    // 注册信息处理回调
    _server.setMessageCallback(
        std::bind(&ChatServer::onMessage, this, _1, _2, _3)
    );

    // 设置线程数
    _server.setThreadNum(4);
}


void ChatServer::start() {
    _server.start();
}

void ChatServer::onConnection(const TcpConnectionPtr& conn) {
   

    if(!conn->connected()) {
        
        ChatService::getInstance()->clientCloseException(conn); // 断开客户端连接

        conn->shutdown(); // 断开连接
    }
}


void ChatServer::onMessage(const TcpConnectionPtr& conn, Buffer* buffer, Timestamp time) {

    // 拿到所有数据
    std::string data = buffer->retrieveAllAsString();

    // json解析(发序列化)
    json js = json::parse(data);

    // 通过 js["msgid"] 判断消息类型
    auto handler = ChatService::getInstance()->getHandler(js["msgid"].get<int>());

    // 执行
    handler(conn, js, time);
}