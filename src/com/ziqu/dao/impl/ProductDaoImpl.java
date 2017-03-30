package com.ziqu.dao.impl;

import com.ziqu.dao.ProductDao;
import com.ziqu.entity.ProductEntity;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by administrator on 17/3/16.
 */

@Repository("ziqu.productDao")
public class ProductDaoImpl implements ProductDao {

    @PersistenceContext
    protected EntityManager entityManager;

    public List<ProductEntity> getProductByType(int typeCode) {
        try{
            Query query = entityManager.createQuery("from ProductEntity where typeCode = "+ typeCode);
            return query.getResultList();
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }
    }

    public List<ProductEntity> getProductByCat(int catId) {
        try{
            Query query = entityManager.createQuery("from ProductEntity where catId = "+ catId);
            return query.getResultList();
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }
    }

    public ProductEntity getProductBySn(String sn) {
        try{
            return entityManager.find(ProductEntity.class, sn);
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }
    }

    public List<ProductEntity> getProductsBySns(List<String> sns) {
        try{
            Query query = entityManager.createQuery("from ProductEntity where goodsSn in (:sns)");
            query.setParameter("sns", sns);
            return query.getResultList();
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }
    }
}
