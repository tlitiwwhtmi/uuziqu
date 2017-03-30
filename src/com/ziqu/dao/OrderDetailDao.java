package com.ziqu.dao;

import com.ziqu.entity.OrderDetailEntity;

import java.util.List;

/**
 * Created by administrator on 17/3/24.
 */
public interface OrderDetailDao {

    int saveOrderDetail(OrderDetailEntity orderDetailEntity);

    List<OrderDetailEntity> listOrderDetailByOrderNum(String orderNum);
}
