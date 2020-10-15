package com.sz.mapper;

import com.sz.dto.UserDTO;
import com.sz.pojo.NewLink;
import com.sz.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    /**
     * 查用户
     * @param id
     * @return
     */
    User queryUserDate(Integer id);
    //获取用户list 用@Param 对mapper文件 进行多个参数的传递
    List<User> getlist(@Param("start") int start, @Param("count") int count);
    Integer getTotal();  //获取用户总数
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
