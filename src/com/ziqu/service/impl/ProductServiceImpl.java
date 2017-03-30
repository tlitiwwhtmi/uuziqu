package com.ziqu.service.impl;

import com.ziqu.dao.ProductDao;
import com.ziqu.entity.ProductEntity;
import com.ziqu.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by administrator on 17/3/16.
 */

@Service("ziqu.productService")
public class ProductServiceImpl implements ProductService{

    @Autowired
    private ProductDao productDao;

    public List<ProductEntity> getProductByType(int typeCode) {
        return productDao.getProductByType(typeCode);
    }

    public List<ProductEntity> getProductByCat(int catId) {
        return productDao.getProductByCat(catId);
    }

    public ProductEntity getProductBySn(String sn) {
        return productDao.getProductBySn(sn);
    }

    public List<ProductEntity> getProductsBySns(List<String> sns) {
        return productDao.getProductsBySns(sns);
    }
}

