package com.ziqu.dao.impl;

import com.ziqu.dao.SystemRegionDao;
import com.ziqu.entity.SystemRegionEntity;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by administrator on 17/3/23.
 */

@Repository("ziqu.systemRegionDao")
public class SystemRegionDaoImpl implements SystemRegionDao{

    @PersistenceContext
    protected EntityManager entityManager;

    public List<SystemRegionEntity> listSystemRegionByParent(int parentId) {
        try{
            Query query = entityManager.createQuery("from SystemRegionEntity where parentId = " + parentId);
            return query.getResultList();
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }
    }

    public SystemRegionEntity getSystemRegionById(int regionId) {
        try{
            return entityManager.find(SystemRegionEntity.class, regionId);
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }
    }
}
