package com.sz.service.impl;

import com.sz.dto.UserDTO;
import com.sz.mapper.UserMapper;
import com.sz.pojo.User;
import com.sz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    /**
     * 把Map转化为List 在获取id和对象
     * @return
     */
    @Override
    public Map<Integer, User> queryUserDate() {
       List<User> list = userMapper.queryAll();
       Map<Integer, User> map = new HashMap<>();
       for (int i = 0; i < list.size(); i ++){
           map.put(list.get(i).getId(), list.get(i));
       }

        return map;
    }

    @Override
    public void addUser(User user) {
        user.setLoginfrequency(0);

        userMapper.addUser(user);
    }

    /**
     * 用户更新操作
     * @param user
     */
    @Override
    public void updUser(User user) {
        userMapper.updataUser(user);
    }

    @Override
    public User queryDateUserById(Integer id) {
        return userMapper.queryUserDate(id);
    }

    @Override
    public void delUser(Integer id) {
        userMapper.delUser(id);
    }


}

