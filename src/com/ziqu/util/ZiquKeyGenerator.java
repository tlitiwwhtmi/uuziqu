package com.ziqu.util;

import org.hibernate.HibernateException;
import org.hibernate.MappingException;
import org.hibernate.dialect.Dialect;
import org.hibernate.engine.SessionImplementor;
import org.hibernate.id.AbstractUUIDGenerator;
import org.hibernate.id.Configurable;
import org.hibernate.type.Type;

import java.io.Serializable;
import java.util.Date;
import java.util.Properties;

/**
 * Created by administrator on 17/3/24.
 */
public class ZiquKeyGenerator extends AbstractUUIDGenerator implements Configurable {

    @Override
    public void configure(Type type, Properties properties, Dialect dialect) throws MappingException {

    }

    @Override
    public Serializable generate(SessionImplementor sessionImplementor, Object o) throws HibernateException {
        return "ZQ" + new Date().getTime();
    }
}
