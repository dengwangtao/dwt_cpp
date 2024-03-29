#include "friendmodel.hpp"
#include "db.hpp"
#include <iostream>

// 新增
bool FriendModel::insert(int id, int friendid) {
    char sql[512] = {0};

    std::sprintf(sql, "INSERT INTO friend(userid, friendid) VALUES(%d, %d);", id, friendid);

    MySQL mysql;
    if(mysql.connect()) {
        if(mysql.update(sql)) {
            return true;
        }
    }
    return false;
}

// 删除
bool FriendModel::remove(int id, int friendid) {
    char sql[512] = {0};

    std::sprintf(sql, "DELETE FROM friend WHERE userid=%d AND friendid=%d;", id, friendid);

    MySQL mysql;
    if(mysql.connect()) {
        if(mysql.update(sql)) {
            return true;
        }
    }
    return false;
}

// 查询
std::vector<User> FriendModel::query(int id) {
    char sql[512] = {0};

    std::sprintf(sql, "SELECT `user`.id, `user`.`name`, `user`.state FROM friend JOIN `user` ON friend.friendid = `user`.id WHERE friend.userid = %d;", id);

    std::vector<User> result;

    MySQL mysql;
    if(mysql.connect()) {
        MYSQL_RES *res = mysql.query(sql);
        if(res) {
            MYSQL_ROW row;

            while(row = mysql_fetch_row(res)) {
                User user;
                user.setId(atoi(row[0]));
                user.setName(row[1]);
                user.setState(row[2]);

                result.push_back(std::move(user));
            }

            mysql_free_result(res);
        }
        
    }
    return result;
}