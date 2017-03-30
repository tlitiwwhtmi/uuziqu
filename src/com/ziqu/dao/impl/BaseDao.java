package com.ziqu.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 * Created by administrator on 17/3/16.
 */
public class BaseDao{

        @Autowired
        private EntityManagerFactory entityManagerFactory;

        protected EntityManager getEntityManager(){
            return entityManagerFactory.createEntityManager();
        }
}
