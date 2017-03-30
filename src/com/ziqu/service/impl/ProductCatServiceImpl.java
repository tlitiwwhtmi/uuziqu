package com.ziqu.service.impl;

import com.ziqu.dao.ProductCatDao;
import com.ziqu.entity.ProductCatEntity;
import com.ziqu.service.ProductCatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by administrator on 17/3/17.
 */

@Service("ziqu.productCatService")
public class ProductCatServiceImpl implements ProductCatService{

    @Autowired
    private ProductCatDao productCatDao;

    public List<ProductCatEntity> getProductCatsByType(int type) {
        return productCatDao.getProductCatsByType(type);
    }
}
