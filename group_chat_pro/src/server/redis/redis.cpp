#include "redis.hpp"

#include <iostream>
#include <thread>
#include <muduo/base/Logging.h>

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

    std::string ip = "local-redis";
    int port = 6379;

    _publish_context = redisConnect(ip.c_str(), port);
    if(_publish_context == nullptr) {
        LOG_ERROR << "connect redis failed";
        return false;
    }

    _subscribe_context = redisConnect(ip.c_str(), port);
    if(_subscribe_context == nullptr) {
        LOG_ERROR << "connect redis failed";
        return false;
    }


    std::thread t(std::bind(&Redis::observer_channel_message, this));
    t.detach();

    // std::thread t([&]() {
    //     observer_channel_message();
    // });

    LOG_INFO << "connect redis-server success";

    return true;
}

// 发布管道
bool Redis::publish(int channel, const std::string& message) {
    redisReply *reply = (redisReply *)redisCommand(_publish_context, "PUBLISH %d %s", channel, message.c_str());
    if (nullptr == reply) {
        LOG_ERROR << "publish command failed!";
        return false;
    }
    freeReplyObject(reply);
    return true;
}

// 订阅管道
bool Redis::subscribe(int channel) {
    // SUBSCRIBE命令本身会造成线程阻塞等待通道里面发生消息，这里只做订阅通道，不接收通道消息
    // 通道消息的接收专门在observer_channel_message函数中的独立线程中进行
    // 只负责发送命令，不阻塞接收redis server响应消息，否则和notifyMsg线程抢占响应资源
    if (REDIS_ERR == redisAppendCommand(this->_subscribe_context, "SUBSCRIBE %d", channel)) {
        LOG_ERROR << "subscribe command failed!";
        return false;
    }
    // redisBufferWrite可以循环发送缓冲区，直到缓冲区数据发送完毕（done被置为1）
    int done = 0;
    while (!done) {
        if (REDIS_ERR == redisBufferWrite(this->_subscribe_context, &done)) {
            LOG_ERROR << "subscribe command failed!";
            return false;
        }
    }

    return true;
}

// 取消订阅管道
bool Redis::unsubscribe(int channel) {
    
    if (REDIS_ERR == redisAppendCommand(this->_subscribe_context, "UNSUBSCRIBE %d", channel)) {
        LOG_ERROR << "unsubscribe command failed!";
        return false;
    }
    // redisBufferWrite可以循环发送缓冲区，直到缓冲区数据发送完毕（done被置为1）
    int done = 0;
    while (!done) {
        if (REDIS_ERR == redisBufferWrite(this->_subscribe_context, &done)) {
            LOG_ERROR << "unsubscribe command failed!";
            return false;
        }
    }
    return true;
}

// 在独立线程中接收订阅channel的消息
bool Redis::observer_channel_message() {
redisReply *reply = nullptr;
    while (REDIS_OK == redisGetReply(this->_subscribe_context, (void **)&reply)) {
        // 订阅收到的消息是一个带三元素的数组
        if (reply != nullptr && reply->element[2] != nullptr && reply->element[2]->str != nullptr) {
            // 给业务层上报通道上发生的消息        channel                  消息体
            _notify_message_handler(atoi(reply->element[1]->str) , reply->element[2]->str);
        }
        freeReplyObject(reply);
    }

    LOG_ERROR << ">>>>>>>>>>>>> observer_channel_message quit <<<<<<<<<<<<<";
}

// 初始化向业务层上报通道消息的回调对象
void Redis::init_notify_handler(std::function<void(int, const std::string&)> fn) {
    this->_notify_message_handler = fn;
}