package com.ziqu.service.impl;

import com.ziqu.dao.OrderDetailDao;
import com.ziqu.entity.OrderDetailEntity;
import com.ziqu.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by administrator on 17/3/24.
 */

@Service("ziqu.orderDetailService")
public class OrderDetailServiceImpl implements OrderDetailService{

    @Autowired
    private OrderDetailDao orderDetailDao;

    public int saveOrderDetail(OrderDetailEntity orderDetailEntity) {
        return orderDetailDao.saveOrderDetail(orderDetailEntity);
    }

    public void saveOrderDetailList(List<OrderDetailEntity> orderDetailEntityList) {
        for(OrderDetailEntity orderDetailEntity: orderDetailEntityList){
            orderDetailDao.saveOrderDetail(orderDetailEntity);
        }
    }

    public List<OrderDetailEntity> listOrderDetailByOrderNum(String orderNum) {
        return orderDetailDao.listOrderDetailByOrderNum(orderNum);
    }
}
