package com.sz.service.impl;

import com.sz.mapper.MessageMapper;
import com.sz.pojo.Message;
import com.sz.pojo.User;
import com.sz.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service("messageService")
public class MessageServiceImpl implements MessageService {

    @Autowired
    MessageMapper messageMapper;
    @Override
    public Map<Integer, Message> queryAllMessageDate() {
        List<Message> list = messageMapper.queryAll();
        Map<Integer, Message> map = new HashMap<>();
        for (int i = 0; i < list.size(); i ++){
            map.put(i, list.get(i));
        }
        return map;
    }

    @Override
    public boolean insertData(Message message) {
        return messageMapper.insertDate(message) == 1 ? true : false;
    }

    @Override
    public void delMessage(Integer id) {
       messageMapper.delMessage(id);
    }

    @Override
    public int count() {
        return messageMapper.countMessage();
    }

    @Override
    public Message queryMessageDate(Integer id) {
        return messageMapper.queryMessageDate(id);
    }
}
