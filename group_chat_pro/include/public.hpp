#ifndef PUBLIC_H
#define PUBLIC_H


enum EnMsgType{
    LOGIN_MSG = 1,  // 登录请求
    LOGIN_MSG_ACK,  // 登录响应
    REG_MSG,        // 注册请求
    REG_MSG_ACK,    // 注册响应消息
    
    ONE_CHAT_MSG,   // 私聊消息

    ADD_FRIEND,     // 添加好友

    CREATE_GROUP,   // 创建群组
    JOIN_GROUP,     // 加入群组
    GROUP_CHAT_MSG, // 群聊天

    
    LOGINOUT_MSG, // 注销消息
};





#endif