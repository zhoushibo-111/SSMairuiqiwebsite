package com.sz.service.impl;

import com.sz.mapper.DevUserMapper;

import com.sz.mapper.MessageMapper;
import com.sz.pojo.User;
import com.sz.service.DevUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("devUserService")
public class DevUserServiceImpl implements DevUserService {

    @Autowired
    private DevUserMapper devUserMapper;

    @Autowired
    private MessageMapper messageMapper;

    @Override
    public User login(User user) {
        List<User> devUsers = devUserMapper.queryByNamePwd(user);
        if (devUsers != null && devUsers.size() == 1) {
            return devUsers.get(0);
         }
            return null;
        }

    @Override
    public boolean updateLoginfrequency(User user) {
        return devUserMapper.updateLoginfrequency(user) == 1 ? true : false;
    }

    @Override
    public int count() {
        return messageMapper.countMessage();
    }

}
