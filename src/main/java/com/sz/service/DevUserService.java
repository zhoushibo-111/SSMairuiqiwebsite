package com.sz.service;



import com.sz.pojo.User;

public interface DevUserService {


    User login(User user);
    boolean updateLoginfrequency(User user);

    int count();
}
