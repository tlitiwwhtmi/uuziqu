package com.ziqu.dao.impl;

import com.ziqu.dao.ProductImgDao;
import com.ziqu.entity.ProductImgEntity;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by administrator on 17/3/16.
 */

@Repository("ziqu.productImgDao")
public class ProductImgDaoImpl extends BaseDao implements ProductImgDao{

    public List<ProductImgEntity> getProductImgBySn(String goodsSn) {
        EntityManager entityManager = super.getEntityManager();
        try{
            Query query = entityManager.createQuery("from ProductImgEntity where goodsSn = '"+ goodsSn + "'");
            return query.getResultList();
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }
    }
}
