package com.ziqu.dao.impl;

import com.ziqu.dao.PhoneCodeDao;
import com.ziqu.entity.PhoneCodeEntity;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by administrator on 17/3/26.
 */

@Repository("ziqu.phoneCodeDao")
public class PhoneCodeDaoImpl implements PhoneCodeDao {

    @PersistenceContext
    protected EntityManager entityManager;

    public List<PhoneCodeEntity> getPhoneCodeByNum(String number) {
        try{
            Query query = entityManager.createQuery("from PhoneCodeEntity where number = '"+ number + "'");
            return query.getResultList();
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }
    }

    public List<PhoneCodeEntity> getPhoneCodeByToken(String token) {
        try{
            Query query = entityManager.createQuery("from PhoneCodeEntity where token = '"+ token + "'");
            return query.getResultList();
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }
    }

    public int savePhoneCode(PhoneCodeEntity phoneCodeEntity) {

        try{
            entityManager.persist(phoneCodeEntity);
            return phoneCodeEntity.getId();
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }

    }

    public int updatePhoneCode(PhoneCodeEntity phoneCodeEntity) {
        try{
            entityManager.merge(phoneCodeEntity);
            return phoneCodeEntity.getId();
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }

    }
}
