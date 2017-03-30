package com.ziqu.service;

import com.ziqu.entity.ProductCatEntity;

import java.util.List;

/**
 * Created by administrator on 17/3/17.
 */
public interface ProductCatService {

    List<ProductCatEntity> getProductCatsByType(int type);
}
