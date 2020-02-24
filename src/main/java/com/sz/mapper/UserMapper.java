package com.sz.mapper;

import com.sz.dto.UserDTO;
import com.sz.pojo.NewLink;
import com.sz.pojo.User;

import java.util.List;

public interface UserMapper {
    /**
     * 查用户
     * @param id
     * @return
     */
    User queryUserDate(Integer id);
    /**
     * 添加用户
     */
    void addUser(User user);
    /**
     * 更新前查询
     */
    User queryDateUserById(Integer id);
    /**
     * 更新用户
     */
    User updataUser(User user);
    /**
     * 删除用户
     */
    void delUser(Integer id);

    int countUser();

    List<User> queryAll();
}
