#include "offlinemessagemodel.hpp"
#include "db.hpp"
#include <iostream>

// 添加
bool OfflineMessageModel::insert(int userid, std::string message) {
    char sql[512] = {0};

    std::sprintf(sql, "INSERT INTO offlinemessage(userid, message) VALUES(%d, '%s');", userid, message.c_str());

    MySQL mysql;
    if(mysql.connect()) {
        if(mysql.update(sql)) {
            return true;
        }
    }
    return false;
}

// 删除消息
bool OfflineMessageModel::remove(int userid) {
    char sql[512] = {0};

    std::sprintf(sql, "DELETE FROM offlinemessage WHERE userid = %d;", userid);

    MySQL mysql;
    if(mysql.connect()) {
        if(mysql.update(sql)) {
            return true;
        }
    }
    return false;
}

// 查询消息
std::vector<std::string> OfflineMessageModel::query(int userid) {
    char sql[512]= {0};

    std::sprintf(sql, "SELECT message FROM offlinemessage WHERE userid = %d;", userid);

    std::vector<std::string> messages;

    MySQL mysql;
    if(mysql.connect()) {
        MYSQL_RES* res = mysql.query(sql);
        if(res) {
            MYSQL_ROW row;

            while(row = mysql_fetch_row(res)) {
                messages.emplace_back(row[0]);
            }
            
            mysql_free_result(res);
        }
    }
    return messages;
}