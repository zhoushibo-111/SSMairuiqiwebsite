package com.sz.mapper;


import com.sz.pojo.NewLink;
import com.sz.pojo.User;

import java.util.List;

public interface DevUserMapper {

    List<User> queryByNamePwd(User User);
    int updateLoginfrequency(User user);
}