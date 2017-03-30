package com.ziqu.dao.impl;

import com.ziqu.dao.TicketDao;
import com.ziqu.entity.TicketInfoEntity;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by administrator on 17/3/30.
 */

@Repository("ziqu.ticketDao")
public class TicketDaoImpl implements TicketDao{

    @PersistenceContext
    protected EntityManager entityManager;

    public List<TicketInfoEntity> getTicketByNum(String ticketNum) {
        try{
            Query query = entityManager.createQuery("from TicketInfoEntity where ticketNum = '"+ ticketNum +"'");
            return query.getResultList();
        }finally {
            if(entityManager != null){
                entityManager.close();
            }
        }
    }
}
