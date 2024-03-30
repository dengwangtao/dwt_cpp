#include <iostream>
#include "chatserver.hpp"
#include "chatservice.hpp"
#include <signal.h>

using namespace std;
using namespace muduo;
using namespace muduo::net;

void quit_reset_user(int) {
    ChatService::getInstance()->reset();
    exit(0);
}

int main(int argc, char** argv) {

    uint16_t port = 8888;
    std::string ip = "127.0.0.1";
    
    if(argc >= 3) {
        ip = std::string(argv[1]);
        port = atoi(argv[2]);
    }

    // 处理ctrl + C 信号
    signal(SIGINT, quit_reset_user);

    EventLoop loop;
    InetAddress addr(ip, port);

    ChatServer server(&loop, addr, "chatserver");

    server.start();

    loop.loop(); // 开启事件循环

    return 0;
}