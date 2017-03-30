<%--
  Created by IntelliJ IDEA.
  User: administrator
  Date: 17/3/16
  Time: 下午5:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <title>我的订单</title>
    <link rel="stylesheet" href="/resources/common/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/common/bootstrap/dist/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="/resources/mobile/css/button.css">
    <link rel="start" href="/resources/mobile/css/weidian.css">
    <link rel="stylesheet" href="/resources/mobile/css/order.css">
</head>
<style>
    a{
        text-decoration: none;
    }
    a:link{
        text-decoration:none;
    }
    a:visited{
        text-decoration:none;
    }
    a:hover{
        text-decoration:none;
    }
    a:active{
        text-decoration:none;
    }
    .titleBar {
        position: fixed;
        top: 0;
        width: 100%;
        height: 44px;
        background-color: #fff;
        opacity: 1;
        text-align: center;
        /*-webkit-transition:opacity 0.4s linear;
        -moz-transition:opacity 0.4s linear;
        -ms-transition:opacity 0.4s linear;
        -o-transition:opacity 0.4s linear;
        transition:opacity 0.4s linear;*/
    }
    #common_hd_logo {
        width: 100px;
        height: 44px;
        background-image: url(/resources/mobile/images/logo.png);
        background-size: 100px;
        top: 0;
        left: 20px;
        text-indent: -9999px;
        background-repeat: no-repeat;
        background-position: center;
        position: absolute;
    }
    .new_cart_btn {
        width: 51px;
        position: relative;
        right: 0;
        top: 14px;
        float: right;
        margin-right: 12px;
        color: black;
        border-right: 1px #4c4949 solid;
    }
    .new_cart_btn:visited{
        color: black;
    }
    .new_cart_btn:hover{
        color: black;
    }
    .new_cart_btn:active{
        color: black;
    }
    .new_cart_btn:link{
        color: black;
    }

    .my_order{
        position: relative;
        float: right;
        line-height: 44px;
        padding-right: 15px;
    }

    .my_slide{
        height: 290px;
        overflow: hidden;
        width: 100%;
    }

    .my_btn_div{
        background-color: #fff;
        width: 100%;
        margin-top: 20px;
        height: 250px;
        text-align: center;
        padding-top: 30px;
    }
    body{
        font-family: Arial, "Microsoft YaHei";
    }
    .list-wrapper {
        display: block;
        position: relative;
        margin: 0 10px;
        overflow: hidden;
        left: 0;
        padding: 0;
        font-weight: 400;
        list-style: none;
        font-style: normal;
    }

    .list-item:first-child {
        padding-top: 0!important;
    }
    .single-column {
        position: relative;
        border-bottom: 1px solid #eee;
    }
    .single-column:first-child a {
        padding-top: 0;
        margin-top: 0;
    }
    .list-item .link {
        display: block;
        position: relative;
        background-color: #fff;
    }
    .single-column a {
        margin-bottom: 15px;
        height: 80px;
        margin-top: 15px;
    }
    .single-column .img-wrapper {
        width: 80px;
        height: 80px;
    }
    .list-item .img-wrapper {
        display: block;
        position: relative;
        top: 0;
        left: 0;
        z-index: 1;
    }
    .list-item .img-wrapper .img-inner {
        background-color: #fff;
        padding: 0;
        overflow: hidden;
    }
    .list-item .sellerOut {
        position: relative;
        display: block;
    }
    .single-column img {
        top: 7px;
        left: 7px;
        z-index: 1;
    }
    .list-item img {
        width: 100%;
        display: block;
    }
    img {
        border: 0;
        vertical-align: bottom;
    }
    .single-column .i_li_content_div {
        left: 95px;
        top: 0;
    }

    .abs {
        position: absolute;
    }

    .single-column .i_txt{
        margin: 0 0 6px;
    }

    .list-item .i_txt {
        font-size: 14px;
        color: #323232;
        height: 36px;
        line-height: 18px;
        overflow: hidden;
        display: -webkit-box;
        padding: 0 6px;
        word-break: normal;
        text-align: left;
    }
    .list-item .i_txt, .max-two-line {
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        text-overflow: ellipsis;
    }

    .i_pri_wrap {
        height: 22px;
        overflow: hidden;
        margin-top: 6px;
        text-align: left;
    }

    .i_pri_wrap .i_pri, .i_pri_wrap .i_pri_discount {
        overflow: hidden;
        text-overflow: ellipsis;
        padding: 0 6px;
        display: inline-block;
        max-width: 100%;
    }
    .i_pri_wrap .i_pri {
        color: #d93229;
        font-size: 16px;
    }

    .single-column .i_soldOut_wrap {
        line-height: 20px;
        font-size: 12px;
    }

    .single-column .i_li_soldOut {
        opacity: 1;
        background: 0 0;
        padding-right: 5px;
        color: #888;
        font-style: normal;
    }
    .i_li_soldOut {
        padding: 0 7px;
        opacity: .8;
        background-color: rgba(0,0,0,.5);
        color: #fff;
    }

    .single-column .i_cart {
        bottom: 12px;
    }
    .list-item .i_cart {
        bottom: 0px;
        right: 0;
        width: 30px;
        height: 30px;
        background-image: url(/resources/mobile/images/add_cart.png);
        background-repeat: no-repeat;
        background-size: contain;
        z-index: 1;
    }

    .single-column:last-child {
        border-bottom: 0;
    }

    .menu_right{
        position: fixed;
        height: 30px;
        width: 30px;
        top: 50px;
        right: 0px;
        background-color: #395494;
        z-index: 9999;
        border-top-left-radius: 100%;
        border-bottom-left-radius: 100%;
    }

    .menu_right .menu{
        line-height: 30px;
        float: right;
        top:0;
        margin-right: 5px;
    }

    .menu_right{
        transition: all 0.5s;
        -moz-transition: all 0.5s; /* Firefox 4 */
        -webkit-transition: all 0.5s; /* Safari 和 Chrome */
        -o-transition: all 0.5s; /* Opera */
    }

    .container-fluid{
        margin-left: 0px;
        margin-right: 0px;
        transition: all 0.5s;
        -moz-transition: all 0.5s; /* Firefox 4 */
        -webkit-transition: all 0.5s; /* Safari 和 Chrome */
        -o-transition: all 0.5s; /* Opera */
    }

    .shop_menu{
        position: fixed;
        top: 0;
        right: -150px;
        background-color: black;
        z-index: 9999;
        width: 150px;
        transition: all 0.5s;
        -moz-transition: all 0.5s; /* Firefox 4 */
        -webkit-transition: all 0.5s; /* Safari 和 Chrome */
        -o-transition: all 0.5s; /* Opera */
    }
    .navbar-nav {
        margin: 0
    }

    .nav>li>a{
        color:#fff
    }

    .nav>li>a:focus, .nav>li>a:hover {
        text-decoration: none;
        background-color: transparent;
        color: #fff;
    }

    .nav .active{
        background-color: #B68E5C;
    }
    .nav>li {
        text-align: center;
    }

    .modal-backdrop{
        z-index:999;
    }

    .modal{
        top:30%
    }

    #request_top_border {
        width: 100%;
        height: 5px;
        background-image: url(/resources/mobile/images/top_border.png);
        background-repeat: repeat-x;
        background-position: 0 0;
        background-size: 10px;
    }

    .user-info{
        margin: 10px 0;
        background-color: #fff;
        border-top: 1px solid #eee;
        border-bottom: 1px solid #eee;
        padding: 10px 5px;
        text-align: center;
    }

    .user-info p{
        display: inline;
        margin: 0;
        height: 30px;
        line-height: 30px;
        font-size: 10px;
        color: #847d7d;
        margin-right: 20px;
    }

    .login-btn{
        background-color: #c60a1e;
        border: none;
        border-radius: 2px;
        font-size: 12px;
        color: #fff;
        padding-left: 20px;
        padding-right: 20px;
        height: 30px;
        line-height: 26px;
    }

    .user-order{
        border-top: 1px solid #eee;
        border-bottom: 1px solid #eee;
    }

    .J-login{
        display: -webkit-box;
        display: -webkit-flex;
        display: -moz-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        -moz-align-items: center;
        align-items: center;
        padding: 0 20px;
        height: 50px;
        background-color: #fff;
    }

    .J-login .title{
        -webkit-box-flex: 1;
        -webkit-flex: 1;
        -moz-flex: 1;
        -ms-flex: 1;
        flex: 1;
        color: #222;
        font-size: 16px;
        margin: 0;
    }

    .order-act{
        display: -webkit-box;
        display: -webkit-flex;
        display: -moz-flex;
        display: -ms-flexbox;
        display: flex;
        margin-top: 1px;
        height: 80px;
        background-color: #fff;
        padding: 0 5px;
    }

    .user-order .order-act a {
        display: -webkit-box;
        display: -webkit-flex;
        display: -moz-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-direction: normal;
        -webkit-box-orient: vertical;
        -webkit-flex-direction: column;
        -moz-flex-direction: column;
        -ms-flex-direction: column;
        flex-direction: column;
        -webkit-box-flex: 1;
        -webkit-flex: 1;
        -moz-flex: 1;
        -ms-flex: 1;
        flex: 1;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        -moz-align-items: center;
        align-items: center;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        -moz-justify-content: center;
        justify-content: center;
        position: relative;
        width: 0;
        font-size: 12px;
        color: #666;
        height: 100%;
    }

    .order-text{
        width: 42px;
    }

    #i_ul{
        border-top: 1px solid #eee;
        border-bottom: 1px solid #eee;
        overflow: hidden;
        margin: 0;
        padding: 0;
        font-weight: 400;
        list-style: none;
        font-style: normal;
    }

    .i_li{
        border-top: 1px solid #eee;
        padding: 15px 0 15px 70px;
        top: -1px;
        position: relative;
        margin: 0;
        font-weight: 400;
        list-style: none;
        font-style: normal;
        display: list-item;
        text-align: -webkit-match-parent;
    }

    .i_img{
        top: 15px;
        left: 0;
        position: absolute;
    }

    .i_h2{
        height: 19px;
        line-height: 16px;
        font-size: 14px;
        text-overflow: ellipsis;
        overflow: hidden;
        white-space: nowrap;
        overflow: hidden;
        margin: 0;
    }

    .i_h3{
        line-height: 14px;
        margin: 0;
    }

    .i_h4{
        line-height: 14px;
        font-size: 13px;
        margin-top: 14px;
    }

    .i_h5{
        line-height: 14px;
        padding: 0;
        margin: 0;
        font-size: 14px;
        position: absolute;
        bottom: 15px;
        color: #8c8c8c;
        right: 0;
        /* -webkit-margin-before: 1.67em; */
        /* -webkit-margin-after: 1.67em; */
        /* -webkit-margin-start: 0px; */
        /* -webkit-margin-end: 0px; */
        font-weight: bold;
    }

    .order-item{
        padding: 0 15px;
        background-color: #fff;
        margin-top: 5px;
        border-top: 1px solid #eee;
        border-bottom: 1px solid #eee;
    }

    #s_title{
        text-overflow: ellipsis;
        padding: 5px 0;
        color: #222;
        font-size: 14px;
        line-height: 25px;
        height: 35px;
        overflow: hidden;
        white-space: nowrap;
        margin: 0;
    }

    .order-total{
        padding: 10px 0;
        border-bottom: 1px solid #eee;
    }

    .total-count{
        display: inline;
        float: right;
    }

    .good-count{
        color: #666;
    }

    .order-ope{
        padding: 10px 0;
    }

    .cancel-order{
        background-color: transparent;
        border-radius: 4px;
        border: 1px solid #b7b2b2;
        font-size: 13px;
        padding: 5px 10px;
        color: #666;
        margin-right: 10px;
        float: right;
    }

    .go-pay{
        background-color: transparent;
        border-radius: 4px;
        border: 1px solid #c60a1e;
        font-size: 13px;
        padding: 5px 10px;
        color: #c60a1e;
        float: right;
    }

    .warn-div{
        padding-top: 40px;
        text-align: center;
    }

</style>
<body style="background-color: #F7F7F7">

<!--<span style="background: url('images/icon1.png') no-repeat;width: 220px;height: 150px;display: block;margin: 40px auto 20px;"></span>-->
<div class="titleBar" style="z-index: 999">
    <div style="height: 44px">
        <a id="common_hd_logo" class="t_hide abs common_hd_logo_noBack" href="/ziqu/index.htm">ziqu</a>
        <a href="/ziqu/order-m.htm"> <div class="my_order" style="color: #323232;">我的订单</div></a>
        <a class="glyphicon glyphicon-shopping-cart new_cart_btn" href="/ziqu/shopping-cart.htm"></a>
    </div>
    <!--<img src="images/logo.jpg" style="height: 30px;margin: 10px 27%">-->
</div>
<div class="container-fluid" style="padding: 44px 0 0 0;">

    <section id="userInfo" class="user-info">
        <p>验证手机号查看更多订单</p>
        <a href="/ziqu/verify-m.htm" id="login" class="login-btn">立即验证</a>
    </section>

    <section class="user-order">
        <header class="J-login" data-href="order/list.php?type=0" data-for-gaq="订单中心-查看全部订单" style="border-bottom: 1px solid #eee;">
            <p class="title">我的订单</p>

        </header>
        <div class="order-act">
            <a id="orderWaitPay" class="order-wait-pay J-login" data-type="0" data-for-gaq="订单中心-待付款" style="color: #c60a1e">
                <span class="iconfont icon-wait-pay"></span>
                <span class="order-text">待付款</span>
                <span class="reminder hide"></span>
            </a>
            <a id="orderWaitSend" class="order-wait-send J-login" data-type="1" data-for-gaq="订单中心-待发货">
                <span class="iconfont icon-wait-send"></span>
                <span class="order-text">待发货</span>
                <span class="reminder hide"></span>
            </a>
            <a id="orderWaitConfirm" class="order-wait-confirm J-login" data-type="2" data-for-gaq="订单中心-待收货">
                <span class="iconfont icon-wait-confirm"></span>
                <span class="order-text">待收货</span>
                <span class="reminder hide"></span>
            </a>
            <a id="orderWaitRate" class="order-wait-rate J-login" data-type="3" data-for-gaq="订单中心-待评价">
                <span class="iconfont icon-wait-rate"></span>
                <span class="order-text">已完成</span>
                <span class="reminder hide"></span>
            </a>
            <a id="orderReturn" class="order-return J-login" data-type="4" data-for-gaq="订单中心-退款/退货">
                <span class="iconfont icon-return"></span>
                <span class="order-text">退款中</span>
                <span class="reminder hide"></span>
            </a>
        </div>
    </section>

    <div id="order-list">
        <div class="warn-div">
            <p><span class="glyphicon glyphicon-exclamation-sign"></span> </p>
            <p>没有相关订单</p>
        </div>
    </div>

</div>


<script type="text/javascript" src="/resources/common/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="/resources/common/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resources/mobile/js/jquery.fly.min.js"></script>

<script type="text/javascript" src="/resources/common/js/shopping-cart.js"></script>
<script type="text/javascript" src="/resources/mobile/js/ziqu-order.js"></script>

</body>
</html>
