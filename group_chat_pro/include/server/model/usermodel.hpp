#ifndef USERMODEL_H
#define USERMODEL_H

#include "user.hpp"

/// @brief User表的数据操作类
class UserModel {

public:
    // 添加
    bool insert(User& user);

    // 查
    User query(int id);

    // 状态修改
    bool updateState(const User& user);

    // 重置所有在线状态
    bool resetState();

private:


};


#endif