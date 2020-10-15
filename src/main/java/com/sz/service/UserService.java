package com.sz.service;


import com.github.pagehelper.PageInfo;
import com.sz.dto.UserDTO;
import com.sz.pojo.NewLink;
import com.sz.pojo.Product;
import com.sz.pojo.User;

import java.util.List;
import java.util.Map;

public interface UserService {
    /**
     * 查询用户
     *
     * @return
     */
    PageInfo<User> queryUserDate(int pageNum, int pageSize);
    List<User> getlist(int start,int count); //获取用户list
    Integer getTotal(); //获取用户总数

    /**
     * 添加用户
     *
     * @return
     */
    void addUser(User user);

    /**
     * 更新用户
     */
    void updUser(User user);

    User queryDateUserById(Integer id);

    /**
     * 删除用户
     */

    void delUser(Integer id);
}