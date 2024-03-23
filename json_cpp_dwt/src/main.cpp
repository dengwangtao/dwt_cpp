#include <iostream>
#include <fstream>
#include <stdio.h>

#include "json/json.h"

using namespace Json;


void test_read_json() {
    std::ifstream json_file("myjson.json", std::ifstream::binary);
    if(!json_file.is_open()) {
        perror("std::ifstream json_file(\"myjson.json\", std::ifstream::binary);");
        exit(-1);
    }


    Json::Value root; // 声明json根

    
    json_file >> root; //输入到root中

    std::cout << "name:" << root["name"].asString() << std::endl;
}


void test_write_json() {
    Json::Value root;

    root["name"] = "ZhangSan";
    root["age"] = 23;
    root["gender"] = "male";
    root["coder"] = true;

    Json::Value friends;
    friends.append("LiSi");
    friends.append("WangEr");
    friends.append("Mazi");

    root["friends"] = friends;

    std::cout << root.toStyledString() << std::endl;


    std::ofstream file("./write_json.json");


    Json::StreamWriterBuilder builder;
    builder["commentStyle"] = "None";
    builder["indentation"] = "  ";
    std::unique_ptr<Json::StreamWriter> writer(builder.newStreamWriter());
    writer->write(root, &file);

    file.close();
}

int main() {
    std::cout << "Hello Json\n";

    test_read_json();
    
    test_write_json();

    return 0;
}