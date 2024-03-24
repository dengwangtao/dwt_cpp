#include "usermodel.hpp"
#include "db.hpp"
#include <iostream>

bool UserModel::insert(User& user) {

    char sql[512]= {0};

    std::sprintf(sql, "INSERT INTO `user` (`name`, `password`, `state`) VALUES('%s', '%s', '%s')",
        user.getName().c_str(), user.getPassword().c_str(), user.getState().c_str());


    MySQL mysql;
    if(mysql.connect()) {
        if(mysql.update(sql)) {
            
            // 获取刚插入的id
            int id = mysql_insert_id(mysql.getConnection());
            user.setId(id);

            return true;
        }
    }

    return false;
}

User UserModel::query(int id) {
    char sql[512]= {0};

    std::sprintf(sql, "SELECT id, `name`, `password`, state FROM `user` WHERE id = %d;", id);


    MySQL mysql;
    if(mysql.connect()) {
        MYSQL_RES* res = mysql.query(sql);
        if(res) {
            MYSQL_ROW row =  mysql_fetch_row(res);
            if(row) {
                User user;
                user.setId(atoi(row[0])); // 取出Id
                user.setName(row[1]);
                user.setPassword(row[2]);
                user.setState(row[3]);
                
                mysql_free_result(res);
                return user;
            }
        }
    }

    return User();
}


bool UserModel::updateState(const User& user) {
    char sql[512]= {0};

    std::sprintf(sql, "UPDATE `user` SET state='%s' WHERE id = %d;", user.getState().c_str(), user.getId());


    MySQL mysql;
    if(mysql.connect()) {
        return mysql.update(sql);
    }

    return false;

}