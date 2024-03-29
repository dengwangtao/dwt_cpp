#ifndef OFFLINEMESSAGEMODEL_H
#define OFFLINEMESSAGEMODEL_H

#include <string>
#include <vector>


// class OfflineMessage {
// public:
//     OfflineMessage(int userid = -1, std::string msg): userid(userid), message(msg){}
// private:
//     int userid;
//     std::string message;

// };


// class OfflineMessageModel {

// public:
//     // 添加
//     bool insert(OfflineMessage& user);

//     OfflineMessage query(int id);

// private:

// };

class OfflineMessageModel {

public:
    // 添加
    bool insert(int userid, std::string message);

    // 删除消息
    bool remove(int userid);

    // 查询消息
    std::vector<std::string> query(int userid);

private:

};


#endif