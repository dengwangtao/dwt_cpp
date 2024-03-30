#include "redis.hpp"

#include <iostream>
#include <thread>

using std::cerr;
using std::cin;
using std::cout;
using std::endl;

Redis::Redis():_publish_context(nullptr), _subscribe_context(nullptr) {
    
}
Redis::~Redis() {
    // 释放资源
    if(_publish_context) {
        redisFree(_publish_context);
    }

    if(_subscribe_context) {
        redisFree(_subscribe_context);
    }
}

// 连接到Redis服务器 
bool Redis::connect() {

    std::string ip = "172.17.0.4";
    int port = 6379;

    _publish_context = redisConnect(ip.c_str(), port);
    if(_publish_context == nullptr) {
        cerr << "connect redis failed" << endl;
        return false;
    }

    _subscribe_context = redisConnect(ip.c_str(), port);
    if(_subscribe_context == nullptr) {
        cerr << "connect redis failed" << endl;
        return false;
    }


    std::thread t(std::bind(Redis::observer_channel_message, this));
    t.detach();

    // std::thread t([&]() {
    //     observer_channel_message();
    // });

    cout << "connect redis-server success" << endl;

    return true;
}

// 发布管道
bool Redis::publish(int channel, const std::string& message) {

}

// 订阅管道
bool Redis::subscribe(int channel) {

}

// 取消订阅管道
bool Redis::unsubscribe(int channel) {

}

// 在独立线程中接收订阅channel的消息
bool Redis::observer_channel_message() {

}

// 初始化向业务层上报通道消息的回调对象
void Redis::init_notify_handler(std::function<void(int, const std::string&)> fn) {

}