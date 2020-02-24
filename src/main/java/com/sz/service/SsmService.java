package com.sz.service;

import com.sz.pojo.NewLink;

import java.util.Map;

public interface SsmService {
//    Map<Integer, NewLink> queryTotalDate();
    Map<String, NewLink> queryAllDate();

    //更新
    void updLink(NewLink newLink);

    NewLink queryDateById(Integer id);
}
