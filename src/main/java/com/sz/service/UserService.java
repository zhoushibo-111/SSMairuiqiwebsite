package com.sz.service;


import com.sz.dto.UserDTO;
import com.sz.pojo.NewLink;
import com.sz.pojo.User;

import java.util.Map;

public interface UserService {
    /**
     * 查询用户
     *
     * @return
     */
    Map<Integer, User> queryUserDate();

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