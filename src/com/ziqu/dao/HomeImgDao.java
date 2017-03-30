package com.ziqu.dao;

import com.ziqu.entity.HomeImgEntity;

import java.util.List;

/**
 * Created by administrator on 17/3/17.
 */
public interface HomeImgDao {

    List<HomeImgEntity> getHomeImgsByType(int type);
}
