package com.sz.mapper;

import com.sz.pojo.NewLink;

public interface SsmMapper {

    NewLink queryAllDate(Integer id);
    //更新前查询
    NewLink queryDateById(Integer id);
    //更新
    void updLink(NewLink newLink);

}
