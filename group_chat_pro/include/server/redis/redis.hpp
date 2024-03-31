#ifndef REDIS_H
#define REDIS_H

// hiredis.h async.h read.h sds.h alloc.h sockcompat.h /usr/local/include/hiredis
// libhiredis.so
#include <hiredis/hiredis.h>
#include <string>
#include <functional>

class Redis {

public:
    Redis();
    ~Redis();

    // 连接到Redis服务器 
    bool connect();

    // 发布消息
    bool publish(int channel, const std::string& message);

    // 订阅管道
    bool subscribe(int channel);

    // 取消订阅管道
    bool unsubscribe(int channel);

    // 在独立线程中接收订阅channel的消息
    bool observer_channel_message();

    // 初始化向业务层上报通道消息的回调对象
    void init_notify_handler(std::function<void(int, const std::string&)> fn);

private:
    // hiredis 同步上下文对象. 负责publish
    redisContext* _publish_context;

    // hiredis 同步上下文对象. 负责subscribe
    redisContext* _subscribe_context;

    // 回调操作, 收到订阅的消息, 给service层上报
    std::function<void(int, const std::string&)> _notify_message_handler;
};

#endif