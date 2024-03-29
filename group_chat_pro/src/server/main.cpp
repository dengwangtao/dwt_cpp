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

int main() {
    //std::cout << "Hello World\n";

    // 处理ctrl + C 信号
    signal(SIGINT, quit_reset_user);

    EventLoop loop;
    InetAddress addr("127.0.0.1", 8888);

    ChatServer server(&loop, addr, "chatserver");

    server.start();

    loop.loop(); // 开启事件循环

    return 0;
}