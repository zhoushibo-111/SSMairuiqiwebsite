package com.sz.service.impl;

import com.sz.mapper.ProductMapper;
import com.sz.pojo.Product;
import com.sz.pojo.User;
import com.sz.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service("productService")
public class ProductServiceImpl implements ProductService {

    @Autowired
    ProductMapper productMapper;
    @Override
    public Map<Integer,Product> queryProductDate() {
        List<Product> list = productMapper.queryAll();
        Map<Integer,Product> map = new HashMap<>();
        for (int i = 0; i < list.size(); i ++) {
            map.put(list.get(i).getId(),list.get(i));

        }
        return map;
    }

    @Override
    public void addProduct(Product product) {
        productMapper.addProduct(product);
    }


    @Override
    public void updProduct(Product product) {
        productMapper.updProduct(product);
    }

    @Override
    public Product queryDateProductById(Integer id) {
        return productMapper.attProduct(id);
    }

    @Override
    public void delProduct(int id) {
        productMapper.delProductById(id);
    }

    /**
     * 可能有问题的地方
     * @return
     */
    @Override
    public Map<Integer, Product> queryProductFind() {
        Map<Integer,Product> map = new HashMap<>();
        Product product = productMapper.queryProductFind(1);
        map.put(1, product);
        return map;
    }

    @Override
    public List<Product> queryByName(String name) {
        name = "%"+name+"%";
        return productMapper.queryByName(name);
    }

    @Override
    public List<Product> queryAllProduct() {
        return productMapper.queryAll();
    }


}
