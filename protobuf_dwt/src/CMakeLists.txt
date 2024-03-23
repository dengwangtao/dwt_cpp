cmake_minimum_required(VERSION 3.15)
project(proto_test)

set(CMAKE_CXX_STANDARD 17)

# 包含头文件
include_directories(${PROJECT_SOURCE_DIR}/test)

# 包含子目录(cmake)
add_subdirectory(test)

# 链接静态库
link_libraries(test)

add_executable(app main.cpp)