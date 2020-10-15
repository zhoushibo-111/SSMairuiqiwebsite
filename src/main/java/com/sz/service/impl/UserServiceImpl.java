package com.sz.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sz.mapper.UserMapper;
import com.sz.pojo.Product;
import com.sz.pojo.User;
import com.sz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    /**
     * 把Map转化为List 在获取id和对象
     * @return
     */
    @Override
    public PageInfo<User> queryUserDate(int pageNum, int pageSize) {
        PageHelper.startPage(1, 5);
       List<User> list = userMapper.queryAll();
       //Map<Integer, User> map = new HashMap<>();
//       for (int i = 0; i < list.size(); i ++){
//           map.put(list.get(i).getId(), list.get(i));
//       }
        PageInfo<User> pageInfo = new PageInfo<>(list);
        //return map;
        return pageInfo;
    }

    @Override
    public List<User> getlist(int start, int count) {
        List<User> users = new ArrayList<>();
        users = userMapper.getlist(start,count);
        return users;
    }

    @Override
    public Integer getTotal() {
        return userMapper.getTotal();
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

