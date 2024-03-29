#ifndef USER_H
#define USER_H

#include <string>


/// @brief User表的ORM类
class User {

public:

    User(int id=-1, const std::string& name="", const std::string& pwd="", const std::string& state="offline")
    :id(id), name(name), password(pwd), state(state) {

    }


    void setId(int id) {
        this->id = id;
    }

    void setName(const std::string& name) {
        this->name = name;
    }

    void setPassword(const std::string& pwd) {
        this->password = pwd;
    }

    void setState(const std::string& state) {
        this->state = state;
    }

    int getId() const {
        return this->id;
    }

    std::string getName() const {
        return this->name;
    }

    std::string getPassword() const {
        return this->password;
    }

    std::string getState() const {
        return this->state;
    }

protected:
    int id;
    std::string name;
    std::string password;
    std::string state;

};

#endif