package com.sz.service.impl;

import com.sz.mapper.SsmMapper;
import com.sz.pojo.NewLink;
import com.sz.service.SsmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.ws.ServiceMode;
import java.util.HashMap;
import java.util.Map;

@Service("ssmService")
public class SsmServiceImpl implements SsmService {

    @Autowired
    SsmMapper ssmMapper;

    @Override
    public Map<String, NewLink> queryAllDate() {
        Map<String, NewLink> map = new HashMap<>();
        for (int i = 1; i <= 6; i ++){
            NewLink newLink = ssmMapper.queryAllDate(i);
            map.put(i+"" ,newLink);
        }


        return map;
    }



    @Override
    public void updLink(NewLink newLink) {
        ssmMapper.updLink(newLink);
    }

    @Override
    public NewLink queryDateById(Integer id) {
        return ssmMapper.queryDateById(id);
    }
}
