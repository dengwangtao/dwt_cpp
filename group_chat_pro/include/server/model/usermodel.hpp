#ifndef USERMODEL_H
#define USERMODEL_H

#include "user.hpp"

/// @brief User表的数据操作类
class UserModel {

public:
    // 添加
    bool insert(User& user);

    User query(int id);

    bool updateState(const User& user);

private:


};


#endif