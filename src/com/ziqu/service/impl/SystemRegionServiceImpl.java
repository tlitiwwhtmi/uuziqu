package com.ziqu.service.impl;

import com.ziqu.dao.SystemRegionDao;
import com.ziqu.entity.SystemRegionEntity;
import com.ziqu.service.SystemRegionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by administrator on 17/3/23.
 */

@Service("ziqu.systemRegionService")
public class SystemRegionServiceImpl implements SystemRegionService{

    @Autowired
    private SystemRegionDao systemRegionDao;

    public List<SystemRegionEntity> listSystemRegionByParent(int parentId) {
        return systemRegionDao.listSystemRegionByParent(parentId);
    }

    public SystemRegionEntity getSystemRegionById(int regionId) {
        return systemRegionDao.getSystemRegionById(regionId);
    }
}
