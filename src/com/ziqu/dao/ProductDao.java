package com.ziqu.dao;

import com.ziqu.entity.ProductEntity;

import java.util.List;

/**
 * Created by administrator on 17/3/16.
 */
public interface ProductDao {

    List<ProductEntity> getProductByType(int typeCode);

    List<ProductEntity> getProductByCat(int catId);

    List<ProductEntity> getProductsBySns(List<String> sns);

    ProductEntity getProductBySn(String sn);
}
