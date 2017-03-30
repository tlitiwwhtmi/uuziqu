package com.ziqu.dao.impl;

import com.ziqu.dao.OrderDetailDao;
import com.ziqu.entity.OrderDetailEntity;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by administrator on 17/3/24.
 */

@Repository("ziqu.orderDetailDao")
public class OrderDetailDaoImpl implements OrderDetailDao{

    @PersistenceContext
    protected EntityManager entityManager;

    public int saveOrderDetail(OrderDetailEntity orderDetailEntity) {
        try{
            entityManager.persist(orderDetailEntity);
            return orderDetailEntity.getId();
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }
    }

    public List<OrderDetailEntity> listOrderDetailByOrderNum(String orderNum) {
        try{
            Query query = entityManager.createQuery("from OrderDetailEntity where orderNum = '"+ orderNum + "'");
            return query.getResultList();
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }
    }
}
