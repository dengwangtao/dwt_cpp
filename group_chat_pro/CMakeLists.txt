cmake_minimum_required(VERSION 3.15)
project(group_chat_pro)

set(CMAKE_CXX_STANDARD 11)


# 头文件包含
include_directories(${PROJECT_SOURCE_DIR}/thirdparty)
include_directories(${PROJECT_SOURCE_DIR}/include)
include_directories(${PROJECT_SOURCE_DIR}/include/server)
include_directories(${PROJECT_SOURCE_DIR}/include/server/db)
include_directories(${PROJECT_SOURCE_DIR}/include/server/model)
include_directories(${PROJECT_SOURCE_DIR}/include/server/redis)


# 静态库文件包含
# link_directories(/usr/lib64/mysql)



# 设置可执行文件输出路径
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)


# 添加子目录
add_subdirectory(${PROJECT_SOURCE_DIR}/src)
