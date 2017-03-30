package com.ziqu.service.impl;

import com.ziqu.dao.HomeImgDao;
import com.ziqu.entity.HomeImgEntity;
import com.ziqu.service.HomeImgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by administrator on 17/3/17.
 */
@Service("ziqu.homeImgService")
public class HomeImgServiceImpl implements HomeImgService{

    @Autowired
    private HomeImgDao homeImgDao;

    public List<HomeImgEntity> getHomeImgsByType(int type) {
        return homeImgDao.getHomeImgsByType(type);
    }
}
