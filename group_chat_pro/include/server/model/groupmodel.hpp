#ifndef GROUPMODEL_H
#define GROUPMODEL_H

#include <string>
#include <vector>
#include "group.hpp"

class GroupModel {
public:
    // 创建一个群组
    bool createGroup(Group& group);

    // 以什么身份加入哪个群组
    bool addGroup(int userid, int groupid, const std::string& role);

    // 查询已加入的群组
    std::vector<Group> queryGroups(int userid);

    // 查询groupid的群组的其他成员
    std::vector<int> queryGroupUser(int userid, int groupid);

private:
};


#endif