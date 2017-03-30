package com.ziqu.service;

import com.ziqu.entity.HomeImgEntity;

import java.util.List;

/**
 * Created by administrator on 17/3/17.
 */
public interface HomeImgService {

    List<HomeImgEntity> getHomeImgsByType(int type);
}
