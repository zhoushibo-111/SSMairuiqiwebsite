package com.sz.mapper;

import com.sz.pojo.CNew;



public interface CompanyNewMapper {
    CNew queryCNewDate(Integer id);
    //更新前查询
    CNew queryCNewDateById(Integer id);
    //更新
    void updCNew(CNew cNew);
}
