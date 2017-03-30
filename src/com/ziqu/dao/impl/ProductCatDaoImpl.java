package com.ziqu.dao.impl;

import com.ziqu.dao.ProductCatDao;
import com.ziqu.entity.ProductCatEntity;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by administrator on 17/3/17.
 */

@Repository("ziqu.productCatDao")
public class ProductCatDaoImpl implements ProductCatDao {

    @PersistenceContext
    protected EntityManager entityManager;

    public List<ProductCatEntity> getProductCatsByType(int type) {
        try{
            Query query = entityManager.createQuery("from ProductCatEntity where typeId = "+ type);
            return query.getResultList();
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }
    }
}
