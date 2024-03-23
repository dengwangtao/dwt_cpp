cmake_minimum_required(VERSION 3.15)
project(json_hpp)

# 设置C++11
set(CMAKE_CXX_STANDARD 11)

# 设置可执行文件生成路径
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

# 头文件路径
include_directories(${PROJECT_SOURCE_DIR}/include)

# 生成可执行文件
add_executable(main main.cpp)