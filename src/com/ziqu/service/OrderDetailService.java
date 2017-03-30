package com.ziqu.service;

import com.ziqu.entity.OrderDetailEntity;

import java.util.List;

/**
 * Created by administrator on 17/3/24.
 */
public interface OrderDetailService {

    int saveOrderDetail(OrderDetailEntity orderDetailEntity);

    void saveOrderDetailList(List<OrderDetailEntity> orderDetailEntityList);

    List<OrderDetailEntity> listOrderDetailByOrderNum(String orderNum);
}
