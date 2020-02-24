package com.sz.service.impl;

import com.sz.mapper.CompanyZXMapper;
import com.sz.pojo.CompanyZX;
import com.sz.pojo.NewLink;
import com.sz.pojo.Product;
import com.sz.service.CompanyZXService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("companyCXService")
public class CompanyZXServiceImpl implements CompanyZXService {
    @Autowired
    CompanyZXMapper companyZXMapper;

    /**
     * 把Map转化为List 在获取id和对象
     * @return
     */
    @Override
    public Map<Integer, CompanyZX> queryCXZDate() {
        List<CompanyZX> list = companyZXMapper.queryAllZX();
        Map<Integer, CompanyZX> map = new HashMap<>();
        for (int i = 0; i < list.size(); i ++){
           map.put(list.get(i).getId(),list.get(i));

        }
        return map;
    }

    @Override
    public void addZX(CompanyZX companyZX) {
        companyZXMapper.addZX(companyZX);

    }

    @Override
    public void updZX(CompanyZX companyZX) {
        companyZXMapper.updZX(companyZX);
    }

    @Override
    public CompanyZX queryDateById(Integer id) {
        return companyZXMapper.queryZXDate(id);
    }

    @Override
    public void delZX(int id) {
        companyZXMapper.delZXById(id);
    }

    @Override
    public List<CompanyZX> queryAllZX() {
        return companyZXMapper.queryAllZX();
    }

}
