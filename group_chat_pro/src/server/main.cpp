#include <iostream>
#include "chatserver.hpp"

using namespace std;
using namespace muduo;
using namespace muduo::net;

int main() {
    //std::cout << "Hello World\n";

    EventLoop loop;
    InetAddress addr("127.0.0.1", 8888);

    ChatServer server(&loop, addr, "chatserver");

    server.start();

    loop.loop(); // 开启事件循环

    return 0;
}