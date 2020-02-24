package com.sz.service;

import com.sz.pojo.Product;


import java.util.List;
import java.util.Map;

public interface ProductService {
    Map<Integer,Product> queryProductDate();
    void  addProduct(Product product);
    //更新
    void updProduct(Product product);

    Product queryDateProductById(Integer id);

    /**
     * 删除产品
     * @param id
     */
    void delProduct(int id);
    /**
     * 页面查询产品
     */
    Map<Integer,Product> queryProductFind();

    List<Product> queryByName(String name);

    List<Product> queryAllProduct();
}
