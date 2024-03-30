

aux_source_directory(. SRC_LIST)

add_executable(chatClient ${SRC_LIST})


# 链接动态库
target_link_libraries(chatServer pthread)