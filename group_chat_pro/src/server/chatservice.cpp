#include "chatservice.hpp"
#include "public.hpp"

#include <functional>
#include <muduo/base/Logging.h>
#include <vector>
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
    _handlerMap[EnMsgType::ONT_CHAT_MSG] = std::bind(&ChatService::oneChat, this, _1, _2, _3);
    _handlerMap[EnMsgType::ADD_FRIEND] = std::bind(&ChatService::addFriend, this, _1, _2, _3);
    _handlerMap[EnMsgType::CREATE_GROUP] = std::bind(&ChatService::createGroup, this, _1, _2, _3);
    _handlerMap[EnMsgType::JOIN_GROUP] = std::bind(&ChatService::joinGroup, this, _1, _2, _3);
    _handlerMap[EnMsgType::GROUP_CHAT_MSG] = std::bind(&ChatService::groupChat, this, _1, _2, _3);
}

// 全部用户下线, 重置所有状态
void ChatService::reset() {

    // 更新所有用户为offline
    _userModel.resetState();
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
    // LOG_INFO << "================= do login";
    int id = js["id"];
    std::string password = js["password"];

    User user = _userModel.query(id);

    json response;

    if(user.getId() == id && user.getPassword() == password && user.getState() == "offline") {
        // success

        {
            std::lock_guard<std::mutex> locker(_connMutex);
            _userConnMap[user.getId()] = conn;
        }

        response["msgid"] = EnMsgType::LOGIN_MSG_ACK;
        response["errno"] = 0;
        response["id"] = user.getId();
        response["name"] = user.getName();

        // 查询离线消息
        auto messages = std::move(_offlinemsgModel.query(user.getId()));
        if(!messages.empty()) {
            response["offlinemsg"] = messages;

            _offlinemsgModel.remove(user.getId()); // 读取完离线消息后, 将离线消息删除
        }

        // 查询好友消息
        auto friends = std::move(_friendModel.query(user.getId()));
        if(!friends.empty()) {
            std::vector<std::string> friends_list;
            for(const User& user : friends) {
                json f;
                f["id"] = user.getId();
                f["name"] = user.getName();
                f["state"] = user.getState();

                friends_list.push_back(f.dump());
            }
            response["friends"] = friends_list;
        }

        // 标记为已登录
        user.setState("online");
        _userModel.updateState(user);

    } else {
        // fail
        response["msgid"] = EnMsgType::LOGIN_MSG_ACK;
        response["errno"] = 1;
        response["errmsg"] = "登录失败";
        if(user.getState() != "offline") {
            response["errmsg"] = "用户当前已登录";
        }
        if(user.getId() != id) {
            response["errmsg"] = "用户不存在";
        }
    }

    conn->send(response.dump());
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


void ChatService::clientCloseException(const TcpConnectionPtr& conn) {
    int id = -1;

    {
        std::lock_guard<std::mutex> locker(_connMutex);
        for(auto it = _userConnMap.begin(); it != _userConnMap.end(); ++ it) {
            if(it->second == conn) {
                id = it->first; // 取出id
                _userConnMap.erase(it);
                break;
            }
        }
    }

    // 更新状态信息
    if(id != -1) {
        User user;
        user.setId(id);
        user.setState("offline");
        _userModel.updateState(user);
    }
}


// 一对一聊天
void ChatService::oneChat(const TcpConnectionPtr& conn, json& js, Timestamp time) {

    int to_id = js["to"].get<int>(); // 接收方用户id

    // 查找是否在线
    bool to_online = false;
    {
        std::lock_guard<std::mutex> lock(_connMutex);

        if(_userConnMap.count(to_id) > 0) {
            // 在线 (直接转发消息)

            _userConnMap[to_id]->send(js.dump()); // 直接发送过去

            return;

        } else {
            // 不在线 (离线消息入库)

            _offlinemsgModel.insert(to_id, js.dump());

        }
    }


}


// 添加好友请求
void ChatService::addFriend(const TcpConnectionPtr& conn, json& js, Timestamp time) {
    int userid = js["id"].get<int>();
    int friendid = js["friendid"].get<int>();

    // 请求
    _friendModel.insert(userid, friendid);
}



// 创建群组
void ChatService::createGroup(const TcpConnectionPtr& conn, json& js, Timestamp time) {

    int userid = js["id"].get<int>();
    std::string groupName = js["groupname"];
    std::string groupDesc = js["groupdesc"];

    Group group;
    group.setGroupName(groupName);
    group.setGroupDesc(groupDesc);

    if(_groupModel.createGroup(group)) {
        // 创建成功

        // 将创建者加入群组
        _groupModel.addGroup(userid, group.getId(), "creator");
    }
}

// 加入群组
void ChatService::joinGroup(const TcpConnectionPtr& conn, json& js, Timestamp time) {
    int userid = js["id"].get<int>();
    int groupid = js["groupid"].get<int>();

    _groupModel.addGroup(userid, groupid, "normal");
}

// 群聊天消息
void ChatService::groupChat(const TcpConnectionPtr& conn, json& js, Timestamp time) {
    int userid = js["id"].get<int>();
    int groupid = js["groupid"].get<int>();

    std::vector<int> groupUsers = _groupModel.queryGroupUser(userid, groupid);



    for(int u : groupUsers) {

        std::lock_guard<std::mutex> lock(_connMutex); // 加锁 _userConnMap

        if(_userConnMap.count(u)) {
            _userConnMap[u]->send(js.dump());
        } else {
            _offlinemsgModel.insert(u, js.dump());
        }
    }
}