package com.ziqu.util;

import com.ziqu.entity.OrderInfoEntity;

import java.util.Comparator;

/**
 * Created by administrator on 17/3/26.
 */
public class OrderComparator implements Comparator {

    public int compare(Object o1, Object o2) {

        OrderInfoEntity orderInfoEntity1 = (OrderInfoEntity)o1;
        OrderInfoEntity orderInfoEntity2 = (OrderInfoEntity)o2;

        if(orderInfoEntity1.getCreateDate().before(orderInfoEntity2.getCreateDate())){
            return 1;
        }
        if(orderInfoEntity2.getCreateDate().before(orderInfoEntity1.getCreateDate())){
            return -1;
        }
        return 0;
    }
}
