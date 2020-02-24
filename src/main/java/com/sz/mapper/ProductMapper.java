package com.sz.mapper;



import com.sz.pojo.Product;

import java.util.List;

public interface ProductMapper {
    Product queryProductDate(Integer id);

    /**
     * 添加产品
     * @param
     * @return
     */
    int addProduct(Product product);

    /**
     * 修改产品
     * @return
     */
    //更新前查询
    Product queryDateProductById(Integer id);
    //更新
    void updProduct(Product product);
    /**
     * 删除产品
     * @return
     */
    void delProductById(Integer id);


    int countProduct();
    /**
     * 页面查询产品
     */
    Product queryProductFind(Integer id);
    /**
     * 产品属性
     */
    Product attProduct(Integer id);

    /**
     * 全查
     */
    List<Product> queryAll();

    List<Product> queryByName(String name);
}
