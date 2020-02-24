package com.sz.service;

import com.sz.pojo.Message;

import java.util.Map;

public interface MessageService {
    Map<Integer, Message> queryAllMessageDate();

    boolean insertData(Message message);
    /**
     * 删除留言
     */

    void delMessage(Integer id);

    int count();

    /**
     * 根据id查询
     */
    Message queryMessageDate(Integer id);
}
