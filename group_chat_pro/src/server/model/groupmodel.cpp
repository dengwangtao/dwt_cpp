#include "groupmodel.hpp"

#include "db.hpp"
#include <iostream>
#include <string.h>


// 创建一个群组
bool GroupModel::createGroup(Group& group) {
    char sql[512] = {0};
    std::sprintf(sql, "INSERT INTO allgroup(groupname, groupdesc) VALUES('%s', '%s');", group.getGroupName().c_str(), group.getGroupDesc().c_str());

    MySQL mysql;
    if(mysql.connect()) {
        if(mysql.update(sql)) {

            int id = mysql_insert_id(mysql.getConnection());
            group.setId(id);
            return true;
        }
    }

    return false;
}

// 以什么身份加入哪个群组
bool GroupModel::addGroup(int userid, int groupid, const std::string& role) {
    char sql[512] = {0};
    std::sprintf(sql, "INSERT INTO groupuser(groupid, userid, grouprole) VALUES(%d, %d, '%s');", groupid, userid, role.c_str());

    MySQL mysql;
    if(mysql.connect()) {
        return mysql.update(sql);
    }
    return false;
}

// 查询已加入的群组
std::vector<Group> GroupModel::queryGroups(int userid) {
    char sql[512] = {0};
    std::sprintf(sql, "SELECT ag.id, ag.groupname, ag.groupdesc FROM groupuser gu LEFT JOIN allgroup ag ON gu.groupid = ag.id WHERE gu.userid = %d;", userid);

    std::vector<Group> result;

    MySQL mysql;
    if(mysql.connect()) {
        MYSQL_RES* res = mysql.query(sql);
        if(res) {
            MYSQL_ROW row;
            while(row = mysql_fetch_row(res)) {
                Group g;
                g.setId(atoi(row[0]));
                g.setGroupName(row[1]);
                g.setGroupDesc(row[2]);

                result.push_back(std::move(g));
            }

            mysql_free_result(res);
        }

        // ----------------------
   
        res = nullptr;
        // 填充各个组的组员
        for(auto& group : result) {
            memset(sql, 0, sizeof sql);
            std::sprintf(sql, "SELECT user.id, `user`.`name`, user.state, grouprole FROM groupuser gp JOIN `user` ON gp.userid = `user`.id WHERE groupid = %d;", group.getId());
            res = mysql.query(sql);
            if(res) {
                
                MYSQL_ROW row;
                while(row = mysql_fetch_row(res)) {
                    GroupUser user;
                    user.setId(atoi(row[0]));
                    user.setName(row[1]);
                    user.setState(row[2]);
                    user.setRole(row[3]);

                    group.getUsers().push_back(std::move(user));
                }

                mysql_free_result(res);
            }
        }

    }

    return result;
}

// 查询groupid的群组的其他成员
std::vector<int> GroupModel::queryGroupUser(int userid, int groupid) {
    char sql[512] = {0};
    std::sprintf(sql, "SELECT userid FROM groupuser WHERE groupid = %d AND userid <> %d;", groupid, userid);

    std::vector<int> result;

    MySQL mysql;
    if(mysql.connect()) {
        MYSQL_RES* res = mysql.query(sql);
        if(res) {
            MYSQL_ROW row;
            while(row = mysql_fetch_row(res)) {

                result.push_back(atoi(row[0]));
            }

            mysql_free_result(res);
        }
    }
    return result;
}


