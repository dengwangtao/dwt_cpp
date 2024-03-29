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
#include "offlinemessagemodel.hpp"
#include "friendmodel.hpp"
#include "groupmodel.hpp"

using myHandler = std::function<void(const TcpConnectionPtr&, json&, Timestamp)>;



class ChatService {
public:

    // 获取单例
    static ChatService* getInstance();

    // 根据msgid获取处理器
    myHandler getHandler(int);

    // 登录
    void login(const TcpConnectionPtr&, json&, Timestamp);

    // 注册
    void reg(const TcpConnectionPtr&, json&, Timestamp);


    // 一对一聊天
    void oneChat(const TcpConnectionPtr&, json&, Timestamp);


    // 添加好友请求
    void addFriend(const TcpConnectionPtr&, json&, Timestamp);


    // 创建群组
    void createGroup(const TcpConnectionPtr&, json&, Timestamp);

    // 加入群组
    void joinGroup(const TcpConnectionPtr&, json&, Timestamp);

    // 群聊天消息
    void groupChat(const TcpConnectionPtr&, json&, Timestamp);



    // 客户端异常退出
    void clientCloseException(const TcpConnectionPtr&);

    // 全部用户下线, 重置所有状态
    void reset();
    
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
    std::unordered_map<int, TcpConnectionPtr> _userConnMap; // {userid -> connPtr}

    // 数据操作类
    UserModel _userModel;
    OfflineMessageModel _offlinemsgModel;
    FriendModel _friendModel;
    GroupModel _groupModel;
};


#endif