package com.ziqu.dao;

import com.ziqu.entity.ProductCatEntity;

import java.util.List;

/**
 * Created by administrator on 17/3/17.
 */
public interface ProductCatDao {

    List<ProductCatEntity> getProductCatsByType(int type);
}
