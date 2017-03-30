package com.ziqu.service;

import com.ziqu.entity.OrderInfoEntity;

import java.util.List;

/**
 * Created by administrator on 17/3/24.
 */
public interface OrderInfoService {

    String saveOrderInfo(OrderInfoEntity orderInfoEntity);

    OrderInfoEntity getOrderByOrderNum(String code);

    List<OrderInfoEntity> listOrderByTelAndStatus(String tel, int status);

    List<OrderInfoEntity> listOrderByWechatAndStatus(String wechatId, int status);
}
