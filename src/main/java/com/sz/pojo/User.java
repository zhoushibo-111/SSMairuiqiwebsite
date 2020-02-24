package com.sz.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class User {
    public Integer id;
    public String username;
    public String password;
    public Integer loginfrequency;
    private Integer role;


    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")

            public Date logintime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {

        this.password = password == null ? null : password.trim();
    }

    public Integer getLoginfrequency() {
        return loginfrequency;
    }

    public void setLoginfrequency(Integer loginfrequency) {
        this.loginfrequency = loginfrequency;
    }

    public Date getLogintime() {
        return logintime;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", loginfrequency=" + loginfrequency +
                ", logintime=" + logintime +
                '}';
    }

    public void setLogintime(Date logintime) {
        this.logintime = logintime;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }
}
