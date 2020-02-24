package com.sz.mapper;


import com.sz.pojo.CompanyZX;
import java.util.List;

public interface CompanyZXMapper {
    CompanyZX queryZXDate(Integer id);

    /**
     * 添加资讯
     */
    void addZX(CompanyZX companyZX);


    int countCompanyZX();

    List<CompanyZX> queryAllZX();

    /**更新前查询
     *
     * @param id
     * @return
     */
    CompanyZX queryCNewDateById(Integer id);
    /**
     * 修改操作
     */

    void updZX(CompanyZX companyZX);

    /**
     * 删除资讯
     * @return
     */
    void delZXById(Integer id);

}
