package com.ziqu.service.impl;

import com.ziqu.dao.ProductImgDao;
import com.ziqu.entity.ProductImgEntity;
import com.ziqu.service.ProductImgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by administrator on 17/3/16.
 */

@Service("ziqu.productImgService")
public class ProductImgServieImpl implements ProductImgService{

    @Autowired
    private ProductImgDao productImgDao;

    public List<ProductImgEntity> getProductImgBySn(String goodsSn){
        return productImgDao.getProductImgBySn(goodsSn);
    }
}
