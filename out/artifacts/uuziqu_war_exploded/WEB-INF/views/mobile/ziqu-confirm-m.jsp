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
    <title>确认购买</title>
    <link rel="stylesheet" href="/resources/common/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/common/bootstrap/dist/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="/resources/mobile/css/button.css">
    <link rel="start" href="/resources/mobile/css/weidian.css">
    <link rel="stylesheet" href="/resources/mobile/css/confirm.css">
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

    input:focus{
        border:none;
    }

    input{outline:none}

    select{
        outline: none;
    }

    textarea{
        outline:none;}


    #order_footer{
        bottom: 0;
        left: 0;
        height: 52px;
        position: fixed;
        width: 100%;
    }

    #order_btns{
        height: 52px;
        padding: 8px 0;
        border-top: 1px solid #e8e8e8;
        background-color: #fff;
        margin: 0 auto;
        width: 100%;
        position: relative;
    }

    #order_btns_inner{
        padding: 0 8px;
        height: 35px;
        line-height: 35px;
    }

    #submit_order{
        height: 35px;
        line-height: 35px;
        padding: 0 30px;
        margin-left: 10px;
        background: #c60a1e;
        color: #fff;
        display: block;
        text-align: center;
        border-radius: 3px;
        font-size: 15px;
        float: right;
        outline-style: none;
        text-decoration: none;
    }

    #last_money{
        text-align: right;
    }

    .i_pri{
        font-size: 18px;
        color: #d93229;
    }

    #is_wrap{
        padding: 0 15px;
        background-color: #fff;
        margin-top: 12px;
        padding-bottom: 15px;
        border-top: 1px solid #eee;
    }

    #s_title{
        text-overflow: ellipsis;
        padding: 10px 0;
        color: #222;
        font-size: 14px;
        line-height: 25px;
        height: 45px;
        overflow: hidden;
        white-space: nowrap;
        margin: 0;
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

    #remark_area{
        border: 1px solid #ccc;
        border-radius: 3px 3px 0 0;
        width: 96%;
        height: 44px;
        font-size: 14px;
        line-height: 22px;
        padding: 11px 2%;
        display: block;
        -webkit-appearance: none;
        margin: 0;
        font-weight: 400;
        list-style: none;
        font-style: normal;
        -webkit-user-modify: read-write-plaintext-only;
        outline: 0;
        margin-top: 15px;
    }

    .modal-body p{
        text-align: center;
        margin: 0;
    }

    .add_ticket{
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
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        -moz-justify-content: center;
        justify-content: center;
        width: 80%;
        height: 40px;
        background-color: transparent;
        color: #666;
        border-radius: 10px;
        font-size: 16px;
        margin: auto;
        margin-top: 10px;
        /* border: 1px darkblue; */
        border: 1px dashed #666;
    }

    .ticket-div{
        position: fixed;
        left:0;
        width: 100%;
        background-color: #fff;
        z-index: 1000;
        transition: all 0.5s;
        -moz-transition: all 0.5s; /* Firefox 4 */
        -webkit-transition: all 0.5s; /* Safari 和 Chrome */
        -o-transition: all 0.5s; /* Opera */
    }

    .main-content{
        margin-top: 50px;
        text-align: center;
    }

    .verify-box{
        margin-top: 20px;
    }
    .verify-box p {
        border-bottom: 1px solid #eee;
        text-align: left;
        padding-bottom: 10px;
    }

    .verify-box p label{
        font-weight:200;
    }
    .area-code{
        width: 70px;
        border-right: 1px solid #eee;
    }

    .content-label{
        width: 70px;
    }

    input{
        outline: 0;
    }

    button{
        outline: 0;
    }

    .submit-btn{
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
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        -moz-justify-content: center;
        justify-content: center;
        width: 80%;
        height: 40px;
        background-color: #c60a1e;
        color: #fff;
        border-radius: 2px;
        font-size: 16px;
        margin: auto;
    }

    .my-ticket{
        border-top: 1px solid #eee;
        padding: 15px 0 15px 10px;
        top: -1px;
        position: relative;
        margin: 0;
        font-weight: 400;
        list-style: none;
        font-style: normal;
        display: list-item;
        text-align: -webkit-match-parent;
        background-color: #B68E5C;
        border-radius: 10px;
        margin-top: 10px;
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
<div class="container-fluid" style="padding: 44px 0 52px 0;">

    <div style="margin: 10px 0;">
        <p id="request_top_border" style="margin-bottom: 0px">&nbsp;</p>
        <div id="fat" style="padding: 10px 0;width: 100%;background-color: #fff;border-top: 1px solid #eee;border-bottom: 1px solid #eee;">
            <div style="border-bottom: 1px solid #eee;padding-bottom: 10px;">
                <span style="line-height: 26px;margin: 0 0 0 10px;">收货信息</span>
            </div>

            <div class="main">
                <div id="address_form" style="margin:10px 0;background:#fff">
                    <p class="address_p rel">
                        <label for="nam" class="abs">收货人</label>
                        <input type="text" id="Js-name" name="nam" class="block input" value="" tabindex="1" placeholder="请输入收货人姓名">
                    </p>
                    <p class="address_p rel">
                        <label for="tele" class="abs">手机号码</label>
                        <input type="tel" id="Js-tel" name="tele" maxlength="20" class="block input" tabindex="2" value="" placeholder="请输入收货人手机号">
                    </p>
                    <div id="region-select">
                        <p class="address_p rel">
                            <label for="province" class="abs">省</label>
                            <select class="country-select" id="country-select">
                                <option value="0">--请选择--</option>
                            </select>
                        </p>
                    </div>
                    <p class="address_p rel address_p_area">
                        <label for="detail_add" class="abs">详细地址</label>
                        <textarea name="detail_add" cols="" rows="" id="Js-detail-address" class="block input" tabindex="6" placeholder="请输入街道地址"></textarea>
                    </p>
                </div>
            </div>

            <div style="clear: both"></div>
        </div>
    </div>

    <section id="is_wrap">
        <h2 id="s_title">自趣</h2>
        <ul id="i_ul" class="over_hidden">
            <li class="i_li rel">
                <img src="https://si.geilicdn.com/vshop974903756-1483083222255-55e0a-s11.jpg?w=267&amp;h=267&amp;cp=1" class="i_img" alt="" width="60" height="60">
                <h2 class="i_h2">【风干老鹅】约2000g/江浙沪包邮。超出地区邮费另计。

        选用优质散养大白鹅，天然风干，是徽州传统名吃。这种鹅易保存又不失新鲜，醇香、软嫩，老少皆宜，深受当地老百姓喜爱。风干鹅的腌制方法在民家流传至今，成为宴席上人们最爱吃的一种佳肴。采用独特的腌制手法，风味独特，醇香软嫩，不油不腻，回味悠长，深受老百姓的喜爱。

        配料：鲜老鹅、食盐、香辛料
        净含量:称重
        执行标准: Q/HQJ0001S-2013
        生产许可证:QS3410 0401 0201
        生产日期:见包装
        产地:中国 黄山
        储存方法:零度以下冷藏储存
        保质期: 6个月

        食用方法:
        1.将风干老鹅放入淡盐水中浸泡半小时脱盐，斩块，锅中水一次添够，放鹅骨架；
        2.放入姜，料酒，滴几滴白酒，煮一个半小时。
        3.白菜洗好，和粉条一起入锅烫下就煮好了。
        订购热线：4008-202-517</h2>
                <h3 class="i_h3">&nbsp;</h3>
                <h4 class="i_h4">¥198.00</h4>
                <h5 class="i_h5">x1</h5>
            </li>
            <li class="i_li rel"><img src="https://si.geilicdn.com/vshop974903756-1483083181711-306f8-s14.jpg?w=267&amp;h=267&amp;cp=1" class="i_img" alt="" width="60" height="60"><h2 class="i_h2">【风干老鸡】约1000g/江浙沪包邮。超出地区邮费另计。

        风干鸡又名刘皇叔婆子鸡，是徽州传统名吃。这种鸡易保存又不失新鲜，醇香、软嫩，老少皆宜，深受当地老百姓喜爱。风干鸡的腌制方法在民家流传至今，成为宴席上人们最爱吃的一种佳肴。采用独特的腌制手法，风味独特，醇香软嫩，不油不腻，回味悠长，深受老百姓的喜爱。

        配料：鲜老鸡、食盐、香辛料
        净含量:称重
        执行标准: Q/HQJ0001S-2013
        生产许可证:QS3410 0401 0201
        生产日期:见包装
        产地:中国 黄山
        储存方法:零度以下冷藏储存
        保质期: 6个月

        食用方法:
        1.风干鸡浸泡在温水中4~6小时，然后，反复清洗几遍以去除多余盐分。
        2.洗好的风干鸡斩成块装盘。
        3.放入蒸锅中，上汽后蒸25~35分钟。
        4.大葱切丝、大蒜切末备用，将蒸好的鸡块拿出，撒上大葱丝和大蒜末，锅中放少许油，烧至微微冒烟后淋在鸡块上即可。
        订购热线：4008-202-517</h2><h3 class="i_h3">&nbsp;</h3><h4 class="i_h4">¥78.00</h4><h5 class="i_h5">x1</h5></li><li class="i_li rel"><img src="https://si.geilicdn.com/vshop974903756-1483083103557-73f08-s13.jpg?w=267&amp;h=267&amp;cp=1" class="i_img" alt="" width="60" height="60"><h2 class="i_h2">【趣礼188礼盒A款】江浙沪包邮。超出地区邮费另计。

        特级笋衣 200g
        农家梅干菜 500g
        酱香黑猪肉 500g
        农家土香肠 500g
        顶级新大米 1袋 1000g</h2><h3 class="i_h3">&nbsp;</h3><h4 class="i_h4">¥188.00</h4><h5 class="i_h5">x1</h5></li></ul>


        <textarea id="remark_area" placeholder="给卖家留言"></textarea>
    </section>

    <section id="is_wrap">
        <h2 id="s_title">兑换券</h2>
        <ul id="i_ul" class="over_hidden">
            <li class="i_li rel my-ticket">
                <h2 class="i_h2">券编号:12345678</h2>
                <h4 class="i_h4">面额:¥198.00</h4>
                <h5 class="i_h5">x1</h5>
            </li>
            <li class="i_li rel my-ticket">
                <h2 class="i_h2">券编号:12345678</h2>
                <h4 class="i_h4">面额:¥198.00</h4>
                <h5 class="i_h5">x1</h5>
            </li>
            <li class="i_li rel my-ticket">
                <h2 class="i_h2">券编号:12345678</h2>
                <h4 class="i_h4">面额:¥198.00</h4>
                <h5 class="i_h5">x1</h5>
            </li>
        </ul>

        <div class="address_p rel" style="padding: 8px 10px 8px 0;">
            <span>共3张兑换券</span>
            <span style="float: right;color: #333">¥240.00</span>
            <span style="float: right">总面额:</span>
        </div>

        <a class="add_ticket">+添加兑换券</a>

    </section>

</div>

<footer id="order_footer" class="wrap" style="display: block; transition: -webkit-filter 0.3s; filter: blur(0px);">
    <div id="order_btns" class="wrap rel margin_auto">
        <div id="order_btns_inner">
            <a id="submit_order" class="btnok right for_gaq" data-for-gaq="去付款">去付款</a>
            <p id="last_money" class="r_txt">应付总额:&nbsp;<span class="i_pri" id="last_money_show">¥464.00</span></p>
        </div>
    </div>
</footer>


<div id="alert-modal" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <p id="alert-text">One fine body&hellip;</p>
            </div>
        </div>
    </div>
</div>

<div id="console-modal" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <p id="console-text">One fine body&hellip;</p>
            </div>
        </div>
    </div>
</div>


<div class="ticket-div" style="">
    <div class="main-content">
        <div style="height: 20px;padding-right: 10px">
            <a id="close-ticket" style="float: right"><span class="glyphicon glyphicon-remove" style="color: black"></span> </a>
        </div>
        <div>
            <p style="font-size: 16px;">添加兑换券</p>
        </div>
        <div class="verify-box">
            <p style="text-align: center">
                <input id="mobile" placeholder="输入兑换券号码" style="width: 80%">
            </p>
            <p style="text-align: center">
                <input type="password" id="code" placeholder="输入密码" style="width: 80%">
            </p>
        </div>
        <div>
            <a class="submit-btn">添加</a>
        </div>
    </div>
</div>


<script type="text/javascript" src="/resources/common/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="/resources/common/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resources/mobile/js/jquery.fly.min.js"></script>

<script type="text/javascript" src="/resources/common/js/shopping-cart.js"></script>
<script type="text/javascript" src="/resources/mobile/js/ziqu-confirm.js"></script>

</body>
</html>
