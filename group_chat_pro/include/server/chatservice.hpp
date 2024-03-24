#ifndef CHATSERVICE_H
#define CHATSERVICE_H

#include <muduo/net/TcpConnection.h>
#include <functional>
#include <unordered_map>
#include <mutex>

using namespace muduo;
using namespace muduo::net;

#include "json.hpp"
using json = nlohmann::json;

#include "usermodel.hpp"

using myHandler = std::function<void(const TcpConnectionPtr&, json&, Timestamp)>;



class ChatService {
public:

    // 获取单例
    static ChatService* getInstance();

    // 根据msgid获取处理器
    myHandler getHandler(int);

    // 登录
    void login(const TcpConnectionPtr&, json& js, Timestamp);

    // 注册
    void reg(const TcpConnectionPtr&, json& js, Timestamp);

    // 客户端异常退出
    void clientCloseException(const TcpConnectionPtr&);

private:
    ChatService();

    // 删除拷贝构造和拷贝赋值
    ChatService(const ChatService&) = delete;
    ChatService& operator=(const ChatService&) = delete;


    // msgid -> func
    std::unordered_map<int, myHandler> _handlerMap;


    // 互斥锁
    std::mutex _connMutex;
    // 用户对应的连接
    std::unordered_map<int, TcpConnectionPtr> _userConnMap;

    // 数据操作类
    UserModel _userModel;

};


#endif