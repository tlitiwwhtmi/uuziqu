package com.ziqu.dao.impl;

import com.ziqu.dao.OrderInfoDao;
import com.ziqu.entity.OrderInfoEntity;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by administrator on 17/3/24.
 */

@Repository("ziqu.orderInfoDao")
public class OrderInfoDaoImpl implements OrderInfoDao{

    @PersistenceContext
    protected EntityManager entityManager;

    public String saveOrderInfo(OrderInfoEntity orderInfoEntity) {
        try{
            entityManager.persist(orderInfoEntity);
            return orderInfoEntity.getOrderNum();
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }
    }

    public OrderInfoEntity getOrderByOrderNum(String code) {
        try{
            return entityManager.find(OrderInfoEntity.class, code);
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }
    }

    public List<OrderInfoEntity> listOrderByTelAndStatus(String tel, int status) {
        try{
            Query query = entityManager.createQuery("from OrderInfoEntity where receiverTel = '"+ tel + "' and orderStatus ="+ status);
            return query.getResultList();
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }
    }

    public List<OrderInfoEntity> listOrderByWechatAndStatus(String wechatId, int status) {
        try{
            Query query = entityManager.createQuery("from OrderInfoEntity where wechatId = '"+ wechatId + "' and orderStatus ="+ status);
            return query.getResultList();
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }
    }
}
