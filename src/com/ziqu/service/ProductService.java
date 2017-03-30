package com.ziqu.service;

import com.ziqu.entity.ProductEntity;

import java.util.List;

/**
 * Created by administrator on 17/3/16.
 */
public interface ProductService {

    List<ProductEntity> getProductByType(int typeCode);

    List<ProductEntity> getProductByCat(int catId);

    ProductEntity getProductBySn(String sn);

    List<ProductEntity> getProductsBySns(List<String> sns);
}
