package com.ziqu.dao;

import com.ziqu.entity.SystemRegionEntity;

import java.util.List;

/**
 * Created by administrator on 17/3/23.
 */
public interface SystemRegionDao {

    List<SystemRegionEntity> listSystemRegionByParent(int parentId);

    SystemRegionEntity getSystemRegionById(int regionId);
}
