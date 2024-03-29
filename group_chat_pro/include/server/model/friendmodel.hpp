#ifndef FRIEND_MODEL
#define FRIEND_MODEL

#include <vector>
#include "user.hpp"

class FriendModel {
public:
    // 新增
    bool insert(int id, int friendid);

    // 删除
    bool remove(int id, int friendid);

    // 查询
    std::vector<User> query(int id);
};

#endif