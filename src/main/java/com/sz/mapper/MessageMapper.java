package com.sz.mapper;

import com.sz.pojo.Message;

import java.util.List;


public interface MessageMapper {
    /**
     * 查询留言板留言
     * @param id
     * @return
     */
    Message queryAllMessageDate(Integer id);
    int countMessage();

    int insertDate(Message message);
    /**
     * 删除用户
     */
    void delMessage(Integer id);

    List<Message> queryAll();

    /**
     * 根据id查询
     */
    Message queryMessageDate(Integer id);
}
