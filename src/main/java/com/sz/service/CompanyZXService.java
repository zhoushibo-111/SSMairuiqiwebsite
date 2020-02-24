package com.sz.service;

import com.sz.pojo.CNew;
import com.sz.pojo.CompanyZX;
import com.sz.pojo.NewLink;
import com.sz.pojo.User;

import java.util.List;
import java.util.Map;

public interface CompanyZXService {
    Map<Integer, CompanyZX> queryCXZDate();
    /**
     * 添加资讯
     *
     * @return
     */
    void addZX(CompanyZX companyZX);

    /**
     * 修改资讯
     * @param companyZX
     */
    void updZX(CompanyZX companyZX);

    CompanyZX queryDateById(Integer id);
    /**
     * 删除产品
     * @param id
     */
    void delZX(int id);
    /**
     * 全查
     */
    List<CompanyZX> queryAllZX();

}
