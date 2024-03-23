#ifndef CHATSERVER_H
#define CHATSERVER_H

#include <muduo/net/TcpServer.h>
#include <muduo/net/EventLoop.h>

using namespace muduo;
using namespace muduo::net;


class ChatServer {
public:
    // 构造函数
    ChatServer(EventLoop* loop, const InetAddress& listenAddr, const string& nameArg);

    // 启动服务
    void start();

private:

    // 连接事件回调
    void onConnection(const TcpConnectionPtr&);

    // 消息到达回调
    void onMessage(const TcpConnectionPtr&, Buffer*, Timestamp);




    TcpServer _server;
    EventLoop* _loop;
};

#endif