#include "chatservice.hpp"
#include "public.hpp"

#include <functional>
#include <muduo/base/Logging.h>
#include "db.hpp"

using namespace std::placeholders;

// 获取单例 (静态方法 类外实现 不需要static)
ChatService* ChatService::getInstance() {

    static ChatService service;

    return &service;
}

// private 构造函数
ChatService::ChatService() {
    _handlerMap[EnMsgType::LOGIN_MSG] = std::bind(&ChatService::login, this, _1, _2, _3);
    _handlerMap[EnMsgType::REG_MSG] = std::bind(&ChatService::reg, this, _1, _2, _3);
}

myHandler ChatService::getHandler(int msgid) {

    // 有对应的处理函数
    if(_handlerMap.count(msgid)) {
        return _handlerMap[msgid];
    }
    // 默认行为, 没有该函数, 返回一个函数
    // return [=](const TcpConnectionPtr&, json& js, Timestamp) {
    //     LOG_ERROR << "msgid: " << msgid << " no mapping handler!!!";
    // };
    return [=](const TcpConnectionPtr&, json& js, Timestamp) {
        LOG_ERROR << "msgid: " << msgid << " no mapping handler!!!";
    };
}

// 登录
void ChatService::login(const TcpConnectionPtr& conn, json& js, Timestamp time) {
    LOG_INFO << "================= do login";

}

// 注册
void ChatService::reg(const TcpConnectionPtr& conn, json& js, Timestamp time) {
    // LOG_INFO << "================= do regist";

    std::string name = js["name"];
    std::string password = js["password"];
    User user(-1, name, password);
    bool state = _userModel.insert(user);

    json response;

    if(state) {
        // 注册成功
        response["msgid"] = EnMsgType::REG_MSG_ACK;
        response["errno"] = 0;
        response["id"] = user.getId();

    } else {
        // 注册失败
        response["msgid"] = EnMsgType::REG_MSG_ACK;
        response["errno"] = 1;
        response["errmsg"] = "注册失败";
    }

    conn->send(response.dump());
}

