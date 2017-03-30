package com.ziqu.dao.impl;

import com.ziqu.dao.TypeDao;
import com.ziqu.entity.TypeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by administrator on 17/3/15.
 */

@Repository("ziqu.typeDao")
public class TypeDaoImpl implements TypeDao{

    @PersistenceContext
    protected EntityManager entityManager;

    public List<TypeEntity> ListTypeEntity() {
        try{
            Query query = entityManager.createQuery("from TypeEntity");
            return query.getResultList();
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }

    }
}
