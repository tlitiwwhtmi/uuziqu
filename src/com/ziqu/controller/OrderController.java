package com.ziqu.controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.ziqu.common.CommonConst;
import com.ziqu.entity.OrderDetailEntity;
import com.ziqu.entity.OrderInfoEntity;
import com.ziqu.entity.ProductEntity;
import com.ziqu.service.OrderDetailService;
import com.ziqu.service.OrderInfoService;
import com.ziqu.service.ProductService;
import com.ziqu.service.SystemRegionService;
import com.ziqu.util.OrderComparator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

/**
 * Created by administrator on 17/3/24.
 */

@Controller
@RequestMapping(value = "/ziqu/order")
public class OrderController {

    @Autowired
    private ProductService productService;

    @Autowired
    private OrderInfoService orderInfoService;

    @Autowired
    private OrderDetailService orderDetailService;

    @Autowired
    private SystemRegionService systemRegionService;

    @ResponseBody
    @RequestMapping(value = "/add.do", method = RequestMethod.POST)
    private JsonObject add(String receiverName,String receiverTel,String country,
                           String province,String area,String detailAddress, String remark,
                           @CookieValue(value = "_cart",required  = false) String cart){
        Gson gson=new Gson();
        JsonObject jsonObject = new JsonObject();

        if(StringUtils.isEmpty(receiverName) || StringUtils.isEmpty(receiverTel)
        || StringUtils.isEmpty(country) || StringUtils.isEmpty(province)
        || StringUtils.isEmpty(area) || StringUtils.isEmpty(detailAddress)
        || StringUtils.isEmpty(cart)){
            jsonObject.addProperty("code",300);
            jsonObject.addProperty("msg","缺少参数");
            return jsonObject;
        }

        OrderInfoEntity orderInfoEntity = new OrderInfoEntity();

        orderInfoEntity.setDetailAddress(detailAddress);
        orderInfoEntity.setAreaId(Integer.parseInt(area));
        orderInfoEntity.setProvinceId(Integer.parseInt(province));
        orderInfoEntity.setCountryId(Integer.parseInt(country));
        orderInfoEntity.setCreateDate(new Date());
        orderInfoEntity.setOrderStatus(CommonConst.ORDER_STATUS_NOT_PAY);
        orderInfoEntity.setReceiverName(receiverName);
        orderInfoEntity.setReceiverTel(receiverTel);
        orderInfoEntity.setRemark(remark);

        String orderNum = orderInfoService.saveOrderInfo(orderInfoEntity);

        if(!StringUtils.isEmpty(orderNum)){
            List<OrderDetailEntity> orderDetailEntities = new ArrayList<>();

            CookieContent cookieContent = gson.fromJson(cart,CookieContent.class);
            for(CookieSn cookieSn:cookieContent.content){
                ProductEntity productEntity = productService.getProductBySn(cookieSn.sn);

                OrderDetailEntity orderDetailEntity = new OrderDetailEntity();
                orderDetailEntity.setGoodsSn(cookieSn.sn);
                orderDetailEntity.setNum(cookieSn.num);
                orderDetailEntity.setOrderNum(orderNum);
                orderDetailEntity.setPrice(productEntity.getProductPrice());

                orderDetailEntities.add(orderDetailEntity);
            }
            orderDetailService.saveOrderDetailList(orderDetailEntities);

            jsonObject.addProperty("code",200);
            jsonObject.addProperty("msg",orderNum);
            return jsonObject;
        }

        jsonObject.addProperty("code",301);
        jsonObject.addProperty("msg","系统错误");
        return jsonObject;
    }

    @ResponseBody
    @RequestMapping(value = "/list.data", method = RequestMethod.GET)
    public JsonObject ListOrder(String status, String tel, String userId){
        Gson gson=new Gson();
        JsonObject jsonObject = new JsonObject();

        if(StringUtils.isEmpty(status)){
            jsonObject.addProperty("total", 0);
            return jsonObject;
        }

        if(StringUtils.isEmpty(tel) && StringUtils.isEmpty(userId)){
            jsonObject.addProperty("total", 0);
            return jsonObject;
        }

        List<OrderInfoEntity> orderInfoEntities = new ArrayList<>();
        if(!StringUtils.isEmpty(tel)){
            orderInfoEntities.addAll(orderInfoService.listOrderByTelAndStatus(tel, Integer.parseInt(status)));
        }
        if(!StringUtils.isEmpty(userId)){
            orderInfoEntities.addAll(orderInfoService.listOrderByWechatAndStatus(userId, Integer.parseInt(status)));
        }

        //去掉重复项
        Set<OrderInfoEntity> orderInfoEntitySet = new HashSet<OrderInfoEntity>(orderInfoEntities);
        orderInfoEntities = new ArrayList<OrderInfoEntity>(orderInfoEntitySet);

        for(OrderInfoEntity orderInfoEntity: orderInfoEntities){
            List<OrderDetailEntity> orderDetailEntities = orderDetailService.listOrderDetailByOrderNum(orderInfoEntity.getOrderNum());

            List<String> sns = new ArrayList<>();
            for(OrderDetailEntity orderDetailEntity: orderDetailEntities){
                sns.add(orderDetailEntity.getGoodsSn());
            }
            List<ProductEntity> productEntities = productService.getProductsBySns(sns);
            for(ProductEntity productEntity:productEntities){
                OrderDetailEntity localOrderDetail = getLocalOrderDetail(productEntity.getGoodsSn(),orderDetailEntities);
                productEntity.setOrderPrice(localOrderDetail.getPrice());
                productEntity.setCount(localOrderDetail.getNum());
            }

            //填充订单商品信息
            orderInfoEntity.setProductEntities(productEntities);

            //填充订单位置信息
            //orderInfoEntity.setCountryName(systemRegionService.getSystemRegionById(orderInfoEntity.getCountryId()).getRegionName());
            //orderInfoEntity.setProvinceName(systemRegionService.getSystemRegionById(orderInfoEntity.getProvinceId()).getRegionName());
            //orderInfoEntity.setAreaName(systemRegionService.getSystemRegionById(orderInfoEntity.getAreaId()).getRegionName());
        }

        //按时间倒序排序
        Collections.sort(orderInfoEntities, new OrderComparator());

        jsonObject.addProperty("total", orderInfoEntities.size());
        jsonObject.add("datas", gson.toJsonTree(orderInfoEntities));

        return jsonObject;
    }

    @ResponseBody
    @RequestMapping(value = "/spenopro.data", method = RequestMethod.GET)
    public JsonObject speWithProduct(String code){
        Gson gson=new Gson();
        JsonObject jsonObject = new JsonObject();

        if(StringUtils.isEmpty(code)){
            jsonObject.addProperty("code",301);
            jsonObject.addProperty("data","缺少参数");
            return jsonObject;
        }

        OrderInfoEntity orderInfoEntity = orderInfoService.getOrderByOrderNum(code);
        orderInfoEntity.setOrderDetailEntities(orderDetailService.listOrderDetailByOrderNum(orderInfoEntity.getOrderNum()));

        //填充订单位置信息
        orderInfoEntity.setCountryName(systemRegionService.getSystemRegionById(orderInfoEntity.getCountryId()).getRegionName());
        orderInfoEntity.setProvinceName(systemRegionService.getSystemRegionById(orderInfoEntity.getProvinceId()).getRegionName());
        orderInfoEntity.setAreaName(systemRegionService.getSystemRegionById(orderInfoEntity.getAreaId()).getRegionName());

        jsonObject.addProperty("code",200);
        jsonObject.add("data",gson.toJsonTree(orderInfoEntity));

        return jsonObject;
    }


    private class CookieContent{
        List<CookieSn> content;
    }

    private class CookieSn{
        String sn;
        int num;
    }

    private OrderDetailEntity getLocalOrderDetail(String sn, List<OrderDetailEntity> orderDetailEntities){
        for(OrderDetailEntity orderDetailEntity: orderDetailEntities){
            if(sn.equalsIgnoreCase(orderDetailEntity.getGoodsSn())){
                return orderDetailEntity;
            }
        }
        return null;
    }
}
