package com.ziqu.service.impl;

import com.ziqu.dao.OrderInfoDao;
import com.ziqu.entity.OrderInfoEntity;
import com.ziqu.service.OrderInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by administrator on 17/3/24.
 */

@Service("ziqu.orderInfoService")
public class OrderInfoServiceImpl implements OrderInfoService{

    @Autowired
    private OrderInfoDao orderInfoDao;

    public String saveOrderInfo(OrderInfoEntity orderInfoEntity) {
        return orderInfoDao.saveOrderInfo(orderInfoEntity);
    }

    public OrderInfoEntity getOrderByOrderNum(String code) {
        return orderInfoDao.getOrderByOrderNum(code);
    }

    public List<OrderInfoEntity> listOrderByTelAndStatus(String tel, int status) {
        return orderInfoDao.listOrderByTelAndStatus(tel, status);
    }

    public List<OrderInfoEntity> listOrderByWechatAndStatus(String wechatId,int status) {
        return orderInfoDao.listOrderByWechatAndStatus(wechatId, status);
    }
}
