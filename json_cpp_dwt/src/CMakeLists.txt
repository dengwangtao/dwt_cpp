cmake_minimum_required(VERSION 3.15)
project(json_cpp_test)

set(CMAKE_CXX_STANDARD 17)

aux_source_directory(${PROJECT_SOURCE_DIR} SRC)

# 包含头文件
include_directories(${PROJECT_SOURCE_DIR}/include)

# 指定动态库位置
link_directories(${PROJECT_SOURCE_DIR}/lib)

# 生成可执行文件
add_executable(app ${SRC})

# 链接动态库
target_link_libraries(app jsoncpp)
