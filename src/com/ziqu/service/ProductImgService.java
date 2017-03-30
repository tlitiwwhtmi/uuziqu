package com.ziqu.service;

import com.ziqu.entity.ProductImgEntity;

import java.util.List;

/**
 * Created by administrator on 17/3/16.
 */
public interface ProductImgService {

    List<ProductImgEntity> getProductImgBySn(String goodsSn);
}
