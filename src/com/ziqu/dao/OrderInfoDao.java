package com.ziqu.dao;

import com.ziqu.entity.OrderInfoEntity;

import java.util.List;

/**
 * Created by administrator on 17/3/24.
 */
public interface OrderInfoDao {

    String saveOrderInfo(OrderInfoEntity orderInfoEntity);

    OrderInfoEntity getOrderByOrderNum(String code);

    List<OrderInfoEntity> listOrderByTelAndStatus(String tel, int status);

    List<OrderInfoEntity> listOrderByWechatAndStatus(String wechatId, int status);
}
