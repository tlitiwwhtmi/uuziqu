package com.ziqu.common;

/**
 * Created by administrator on 17/3/24.
 */
public class CommonConst {

    public static int ORDER_STATUS_NOT_PAY = 0;    //未付款
    public static int ORDER_STATUS_NOT_SENT = 1;  //待发货
    public static int ORDER_STATUS_SENT = 2;   //已发货
    public static int ORDER_STATUS_SIGNED = 3; //已签收

    public static String[] SMS_ERROR_CODES = {"-1",//参数为空。信息、电话号码等有空指针，登陆失"
            "-12", //有异常电话号码
            "-14", //实际号码个数超过1000
            "-999", //服务器内部错误
            "-10001", //用户登陆不成功(帐号不存在/停用/密码错误)
            "-10003", //用户余额不足
            "-10011", //信息内容超长
            "-10029", //此用户没有权限从此通道发送信息(用户没有绑定该性质的通道，比如：用户发了小灵通的号码)
            "-10030",//不能发送移动号码
            "-10031", //手机号码(段)非法
            "-10057", //IP受限
            "-10056"//连接数超限
    } ;
}
