package com.ziqu.dao.impl;

import com.ziqu.dao.HomeImgDao;
import com.ziqu.entity.HomeImgEntity;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by administrator on 17/3/17.
 */

@Repository("ziqu.homeImgDao")
public class HomeImgDaoImpl implements HomeImgDao{

    @PersistenceContext
    protected EntityManager entityManager;

    public List<HomeImgEntity> getHomeImgsByType(int type) {
        try{
            Query query = entityManager.createQuery("from HomeImgEntity where type = "+ type);
            return query.getResultList();
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }
    }
}
