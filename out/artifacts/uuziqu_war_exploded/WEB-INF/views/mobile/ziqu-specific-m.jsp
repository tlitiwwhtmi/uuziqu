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
    <title>详情</title>
    <link rel="stylesheet" href="/resources/common/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/common/bootstrap/dist/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="/resources/mobile/css/button.css">
    <link rel="stylesheet" href="/resources/common/swiper/dist/css/swiper.min.css">
    <link rel="stylesheet" href="/resources/common/animate.css/animate.min.css">
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
        left: 40px;
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

    .swiper-img {
        height: 320px;
        width: 100%;
    }

    .swiper-lazy-preloader{
        text-align: center;
    }

    #headerCounter {
        position: absolute;
        right: 15px;
        font-size: 12px;
        color: rgba(255,255,255,.8);
        text-shadow: 1px 1px rgba(0,0,0,.8);
        bottom: 15px;
        height: 12px;
        line-height: 12px;
        z-index: 99;
    }

    .my_wrapper{
        height:320px;
        position: relative;
    }

    #itemSlider.big {
        width: 100%;
        height: 100%;
        overflow: hidden;
        background-color: #000;
        position: fixed;
        top: 0;
        left: 0;
        bottom: 0;
        z-index: 1101;
    }

    #itemSlider.big #itemSliderBox {
        width: 100%;
        height: 100%;
        margin: 0 auto;
        background-color: #7e7e7e;
        list-style: none;
        padding: 0;
    }

    #itemSlider.big .swiper-slide {
        background-color: #000!important;
        width: 100%!important;
    }

    #itemSliderBox .swiper-slide {
        position: relative;
        overflow-y: auto;
    }

    .swiper-img.center {
        position: relative;
        top: 50%;
        -webkit-transform: translateY(-50%);
        -moz-transform: translateY(-50%);
        -ms-transform: translateY(-50%);
        transform: translateY(-50%);
    }

    .slider-close-btn {
        z-index: 111;
        height: 24px;
        line-height: 24px;
        width: 50px;
        background-color: rgba(69,69,69,0.5);
        bottom: 25px;
        right: 20px;
        color: #fff;
        border: 1px solid rgba(82,82,82,0.6);
        border-radius: 2px;
        text-align: center;
        position: absolute;
    }

    #itemSlider.big .slider-counter {
        display: block;
        left: 0;
        right: 0;
        bottom: .6666666666666666rem;
        height: .64rem;
        line-height: .64rem;
        text-align: center;
        font-size: 12px;
    }
    .slider-counter {
        position: absolute;
        bottom: 0;
        left: 10px;
        height: 30px;
        text-shadow: 1px 1px rgba(0,0,0,0.8);
        line-height: 30px;
        color: rgba(123,123,123,0.8);
        z-index: 1;
    }

    .animated {
        -webkit-animation-duration: .3s;
        animation-duration: .3s;
        -webkit-animation-fill-mode: both;
        animation-fill-mode: both;
        -webkit-backface-visibility: hidden;
        -webkit-perspective: 1000;
    }

    .my_hide{
        display: none;
    }

    .back_btn{
        position: absolute;
        color: #5d5d5d;
        left: 5px;
        height: 44px;
        width: 30px;
        line-height: 44px;
        font-size: 18px;
    }
    #item_name {
        font-size: 18px;
        padding: .48rem .6rem 0;
        color: #000;
        font-family: '微软雅黑';
        display: -webkit-box;
        /*-webkit-line-clamp: 2;*/
        overflow: hidden;
        text-overflow: ellipsis;
        line-height: 1.64rem;
        word-break: normal;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 2;
    }

    #item_price_wrap {
        padding: .2666666666666667rem 0 0;
        margin: 0 .8rem;
    }

    #item_price_wrap {
        vertical-align: bottom;
        margin-bottom: .5333333333333333rem;
        line-height: .5333333333333333rem;
        position: relative;
    }

    .item-price-control {
        margin-bottom: 15px;
        margin: 0;
        padding: 0;
        font-weight: 400;
        list-style: none;
        font-style: normal;
        line-height:17.0667px

    }

    #seckill_price {
        color: #d93229;
        margin-right: 6px;
        font-size: 16px;
        display: block;
        float: left;
        vertical-align: bottom;
    }

    #item_price {
        overflow: visible;
        padding: 0;
        color: #d73940;
        font-size: 20px;
        display: inline-block;
        line-height: .5333333333333333rem;
        max-width: 100%;
        font-weight: 400;
        list-style: none;
        font-style: normal;
    }

    #free_delivery{
        display: block;
        color: #454544;
        margin-top: 6px;
        position: relative;
        font-size: 14px;
        color: #919191;
        white-space: nowrap;
        overflow: hidden;
        line-height: 18px;
    }

    .promotion-left-icon {
        display: block;
        float: left;
        color: #fff;
        font-size: 12px;
        border-radius: 2px;
        vertical-align: top;
        margin-right: 8px;
        width: 42px;
        height: 18px;
        line-height: 18px;
        text-align: center;
        background-color: #f0412f;
    }

    .promotion-right-content {
        font-size: 12px;
        color: #737373;
        display: block;
        padding-left: 51px;
    }

    .praise-btn {
        background-image: url(/resources/mobile/images/resrc.png);
        background-repeat: no-repeat;
        background-size: 24px;
        border-radius: 16px;
        line-height: 26px;
        text-align: center;
        font-size: 12px;
        background-position: 15px -174px;
        color: #a6b3ce;
        background-color: #fff;
        border: 1px solid #97aad0;
        padding: 5px 15px 5px 32px;
    }

    #control_btn, #control_bottom_btn {
        width: 100%;
        max-width: 640px;
        padding: 7px 0;
        background-color: #f7f7f7;
        height: 36px;
        line-height: 36px;
        border-top: 1px solid #ccc;
    }

    #item_fix_btn {
        height: 50px;
        left: 0;
        bottom: 0;
        z-index: 102;
        position: fixed;
        width: 100%;
        background-color: #f7f7f7;
    }
    #control_btn_inner_left {
        text-align: center;
        position: relative;
        top: 50%;
        transform: translateY(-50%);
        overflow: hidden;
    }

    .c_txt{
        color: #fff;
        border-radius: .10666666666666666rem;
        top: 0;
        font-size: 15px;
        padding: 10px;
    }
</style>
<body style="background-color: #F7F7F7">
<input type="hidden" id="hidSn" value="${sn}" />
<!--<span style="background: url('images/icon1.png') no-repeat;width: 220px;height: 150px;display: block;margin: 40px auto 20px;"></span>-->
<div class="titleBar" style="z-index: 999">
    <div style="height: 44px">
        <a id="hd_back" class="glyphicon glyphicon-menu-left back_btn" href="javascript:window.history.go(-1)"></a>
        <a id="common_hd_logo" class="t_hide abs common_hd_logo_noBack" href="/ziqu/index.htm">ziqu</a>
        <a href="/ziqu/order-m.htm"> <div class="my_order">我的订单</div></a>
        <a class="glyphicon glyphicon-shopping-cart new_cart_btn" href="/ziqu/shopping-cart.htm"></a>
    </div>
    <!--<img src="images/logo.jpg" style="height: 30px;margin: 10px 27%">-->
</div>
<div class="container-fluid" style="padding-left: 0;padding-right: 0;padding-top: 44px;margin-bottom: 50px;">

    <div style="background-color: #fff;padding-bottom: 5px;border-top: 1px solid #eee;border-bottom: 1px solid #eee;">
        <div class="my_wrapper">
            <div class="swiper-container" style="background-color: #7e7e7e;">
                <!-- Additional required wrapper -->
                <div class="swiper-wrapper">
                    <!-- Slides -->
                    <div data-key="0" class="swiper-slide swiper-slide-active">
                        <img src="https://si.geilicdn.com/vshop974903756-1483082974366-73f08-s1.jpg?w=750&amp;h=750&amp;cp=1" class="swiper-img">
                        <!--<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>-->
                    </div>
                    <div data-key="1" class="swiper-slide swiper-slide-next">
                        <img data-src="https://si.geilicdn.com/vshop974903756-1483082981590-2ac12-s1.jpg?w=750&amp;h=750&amp;cp=1" class="swiper-img swiper-lazy">
                        <div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
                    </div>
                    <div data-key="2" class="swiper-slide">
                        <img data-src="https://si.geilicdn.com/vshop974903756-1483082992200-ce15f-s1.jpg?w=750&amp;h=750&amp;cp=1" class="swiper-img swiper-lazy">
                        <div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
                    </div>
                    <div data-key="3" class="swiper-slide">
                        <img data-src="https://si.geilicdn.com/vshop974903756-1483077439639-2224024.jpg?w=750&amp;h=750&amp;cp=1" class="swiper-img swiper-lazy">
                        <div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
                    </div>
                    <div data-key="4" class="swiper-slide">
                        <img data-src="https://si.geilicdn.com/vshop974903756-1483083016579-a2de6-s12.jpg?w=750&amp;h=750&amp;cp=1" class="swiper-img swiper-lazy">
                        <div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
                    </div>
                </div>

            </div>
            <div id="headerCounter">1/5</div>
        </div>

        <h2 id="item_name">【趣礼188礼盒B款】江浙沪包邮。超出地区邮费另计江浙沪包邮。超出地区邮费另计江浙沪包邮。超出地区邮费另计江浙沪包邮。超出地区邮费另计。</h2>

        <div id="item_price_wrap" class="rel">
            <p class="item-price-control">
                <span id="seckill_price" class="hide"></span>
                <span id="item_price" class="i_pri" data-original-price="300.00">¥300.00</span>
            </p>

            <div id="control_seckill_wrap" class="hide"><!--秒杀-->
                <span id="seckill_discount" class="promotion-left-icon">限时</span>
                <div class="promotion-right-content">
                    <span id="seckill_left"></span>
                    <span id="seckill_right"></span>
                </div>
            </div>

            <p id="free_delivery" class="promotion-pannel" style="display: block;">
                <span class="promotion-left-icon">包邮</span>
                <em id="free_delivery_em" class="promotion-right-content" style="display: none;">偏远地区除外&nbsp;&gt;</em>
            </p>

            <p id="regionalRestrictions" class="promotion-pannel hide">
                <span class="promotion-left-icon">限地区</span>
                <em id="regionalRestrictionsContent" class="promotion-right-content">查看详细可购买地区&nbsp;&gt;</em>
            </p>

            <p id="express_money_show"></p>
            <div id="share_for_money" style="display: none" class="abs "><em id="share_for_money_icon" class="share-icon inline_b c_txt"></em>分享有奖</div>
            <!-- <em id="sold" class="abs">&nbsp;</em> -->
        </div>



    </div>

    <div style="background-color: #fff;margin-top: 10px;border-top: 1px solid #eee;border-bottom: 1px solid #eee;">
        <h3 style="text-align: center;font-size: 16px;padding: .5333333333333333rem 0;">商品详情</h3>
        <p class="img_des" id="itemDetailName" style="padding: 0 .32rem;">【趣礼300礼盒B款】江浙沪包邮。超出地区邮费另计。<br>
            <br>
            风干老鸡1只 1000g<br>
            刀板香咸肉 500g<br>
            农家土香肠 500g<br>
            农家小板鸭 1只 750g<br>
            农家梅干菜 500g<br>
            顶级新大米1袋 2500g
        </p>
        <div id="imgSpe">
            <img class="lazy" data-src="https://si.geilicdn.com/vshop974903756-1483082564541-73f08-s1.jpg?w=800&amp;h=800" src="https://si.geilicdn.com/vshop974903756-1483082564541-73f08-s1.jpg?w=800&amp;h=800" width="100%">
            <img class="lazy" data-src="https://si.geilicdn.com/vshop974903756-1483082565616-f88bb-s1.jpg?w=800&amp;h=800" src="https://si.geilicdn.com/vshop974903756-1483082565616-f88bb-s1.jpg?w=800&amp;h=800" width="100%">
        </div>
    </div>


    <div id="itemSlider" class="swiper-container big animated" style="display: none">
        <ul id="itemSliderBox" class="swiper-wrapper">
            <li data-key="0" class="swiper-slide swiper-slide-active">
                <img src="https://si.geilicdn.com/vshop974903756-1483082974366-73f08-s1.jpg?w=480&amp;h=480" class="swiper-img center">
            </li>
            <li data-key="1" class="swiper-slide">
                <img src="https://si.geilicdn.com/vshop974903756-1483082981590-2ac12-s1.jpg?w=480&amp;h=480" class="swiper-img center">
            </li>
            <li data-key="2" class="swiper-slide">
                <img data-src="https://si.geilicdn.com/vshop974903756-1483082992200-ce15f-s1.jpg?w=480&amp;h=480" class="swiper-lazy swiper-img center">
                <div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
            </li>
            <li data-key="3" class="swiper-slide">
                <img data-src="https://si.geilicdn.com/vshop974903756-1483077439639-2224024.jpg?w=480&amp;h=480" class="swiper-lazy swiper-img center">
                <div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
            </li>
            <li data-key="4" class="swiper-slide">
                <img data-src="https://si.geilicdn.com/vshop974903756-1483083016579-a2de6-s12.jpg?w=480&amp;h=480" class="swiper-lazy swiper-img center">
                <div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
            </li>
        </ul>
        <span class="slider-close-btn abs">关闭</span>
        <div class="slider-counter">
            1/5
        </div>
        <div class="swiper-pagination"></div>
    </div>


    <footer id="item_fix_btn" class="fix wrap"><!--底部固定控制栏 之 按钮-->
        <div id="control_btn" class="margin_auto">
            <div id="control_btn_inner" class="rel">


                <div id="control_btn_inner_right" class="abs" style="text-align: center">
                    <a id="buy_qu" class="c_txt abs for_gaq" style="background-color: #fe7938;">购买兑换券</a>
                    <a id="add_cart" class="c_txt abs for_gaq" data-for-gaq="加入购物车" style="background-color: #ef5e17">加入购物车</a>
                    <a id="buy_now" class="btnok c_txt abs send_gaq" style="background-color: #c60a1e">立即购买</a>
                </div>
            </div>
        </div>
    </footer>



</div>
<script type="text/javascript" src="/resources/common/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="/resources/common/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resources/common/swiper/dist/js/swiper.jquery.min.js"></script>
<script type="text/javascript" src="/resources/mobile/js/ziqu-specific.js"></script>
</body>
</html>
