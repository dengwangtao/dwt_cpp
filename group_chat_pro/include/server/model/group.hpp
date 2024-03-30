#ifndef GROUP_H
#define GROUP_H

#include <string>
#include <vector>
#include "groupuser.hpp"

class Group
{
public:
    Group(int id = -1, const std::string &name = "", const std::string &desc = "") : id(id), groupname(name), groupdesc(desc) {}

    void setId(int id) { this->id = id; }
    void setGroupName(const std::string &groupname) { this->groupname = groupname; }
    void setGroupDesc(const std::string &groupdesc) { this->groupdesc = groupdesc; }

    int getId() const { return this->id; }
    std::string getGroupName() const { return this->groupname; }
    std::string getGroupDesc() const { return this->groupdesc; }

    std::vector<GroupUser> &getUsers() { return this->users; }

    const std::vector<GroupUser> &getUsers() const { return this->users; }

private:
    int id;
    std::string groupname;
    std::string groupdesc;
    std::vector<GroupUser> users;
};

#endif