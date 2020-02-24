package com.sz.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Message {
    public Integer id;
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    public Date time;
    public String name;
    public String dh;
    public String email;
    public String nr;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDh() {
        return dh;
    }

    public void setDh(String dh) {
        this.dh = dh;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNr() {
        return nr;
    }

    public void setNr(String nr) {
        this.nr = nr;
    }
}
