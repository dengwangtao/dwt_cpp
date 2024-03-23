#include "MyTest.h"

#include <iostream>
#include "Person.pb.h"

void MyTest::test()
{
    std::cout << "Test\n";

    // 数据序列化
    Deng::Person p; // 名称空间为Deng, package Deng;
    p.set_id(101);
    p.set_age(25);
    p.set_sex("male");
    p.set_name("Mike");
    p.mutable_addr()->set_addr("上海市松江区");
    p.mutable_addr()->set_num(300);

    p.mutable_friends()->Add(102);  // 添加朋友
    p.add_friends(103);             // 添加朋友

    p.set_hair(Deng::Color::Black);

    // 序列化对象
    // std::cout << p.SerializeAsString() << std::endl;
    // p.SerializePartialToOstream(&std::cout);
    std::string str;
    p.SerializePartialToString(&str);


    // 反序列化
    Deng::Person p2;
    p2.ParseFromString(str);

    std::cout << "id: " << p2.id() << std::endl;
    std::cout << "name: " << p2.name() << std::endl;
    std::cout << "age: " << p2.age() << std::endl;
    std::cout << "sex: " << p2.sex() << std::endl;
    std::cout << "addr.num: " << p2.addr().num() << std::endl;
    std::cout << "addr.addr: " << p2.addr().addr() << std::endl;
    std::cout << "friends: " << std::endl;
    for(int i = 0; i < p2.friends_size(); ++ i) {
        std::cout << "\t" << p2.friends(i) << std::endl;
    }
    std::cout << "hair_color: " << p2.hair() << std::endl;

}