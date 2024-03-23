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