package com.sz.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class CompanyZX {
    public Integer id;
    public String title;
    public String zxNr;
    @DateTimeFormat(pattern = "yyyy-mm-dd")
    public Date zxdata;

    public String getZxNr() {
        return zxNr;
    }

    public void setZxNr(String zxNr) {
        this.zxNr = zxNr;
    }

    public Date getZxdata() {
        return zxdata;
    }

    public void setZxdata(Date zxdata) {
        this.zxdata = zxdata;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }



    @Override
    public String toString() {
        return "CompanyZX{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", zx_nr='" + zxNr + '\'' +
                '}';
    }
}
