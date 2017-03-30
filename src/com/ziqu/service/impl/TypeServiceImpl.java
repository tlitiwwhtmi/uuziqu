package com.ziqu.service.impl;

import com.ziqu.dao.TypeDao;
import com.ziqu.entity.TypeEntity;
import com.ziqu.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by administrator on 17/3/15.
 */

@Service("ziqu.typeService")
public class TypeServiceImpl implements TypeService{

    @Autowired
    private TypeDao typeDao;

    public List<TypeEntity> ListTypeEntity() {

        return typeDao.ListTypeEntity();
    }
}
