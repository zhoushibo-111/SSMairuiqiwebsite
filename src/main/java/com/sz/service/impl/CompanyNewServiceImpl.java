package com.sz.service.impl;

import com.sz.mapper.CompanyNewMapper;
import com.sz.pojo.CNew;
import com.sz.pojo.NewLink;
import com.sz.service.CompanyNewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
@Service("CompanyNewService")
public class CompanyNewServiceImpl implements CompanyNewService {
    @Autowired
    CompanyNewMapper companyNewMapper;

    @Override
    public Map<String, CNew> queryCNewDate() {
        Map<String, CNew> map = new HashMap<>();


        for (int i = 1; i <= 1; i ++){
            CNew cNew = companyNewMapper.queryCNewDate(i);
            map.put(i+"" ,cNew);
        }

        return map;
    }

    @Override
    public void updCNew(CNew cNew) {
        companyNewMapper.updCNew(cNew);
    }

    @Override
    public CNew queryDateById(Integer id) {
        return companyNewMapper.queryCNewDateById(id);
    }


}
