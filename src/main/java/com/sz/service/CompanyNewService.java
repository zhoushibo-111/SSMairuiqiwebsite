package com.sz.service;

import com.sz.pojo.CNew;
import com.sz.pojo.NewLink;

import java.util.Map;

public interface CompanyNewService {
    Map<String, CNew> queryCNewDate();
    //更新
    void updCNew(CNew cNew);

    CNew queryDateById(Integer id);
}
