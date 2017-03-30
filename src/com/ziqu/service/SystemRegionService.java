package com.ziqu.service;

import com.ziqu.entity.SystemRegionEntity;

import java.util.List;

/**
 * Created by administrator on 17/3/23.
 */
public interface SystemRegionService {

    List<SystemRegionEntity> listSystemRegionByParent(int parentId);

    SystemRegionEntity getSystemRegionById(int regionId);
}
