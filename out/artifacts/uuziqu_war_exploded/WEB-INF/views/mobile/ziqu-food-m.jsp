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
    <title>趣玩</title>
    <link rel="stylesheet" href="/resources/common/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/common/bootstrap/dist/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="/resources/mobile/css/button.css">
    <link rel="start" href="/resources/mobile/css/weidian.css">
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
        z-index:-999;
    }

</style>
<body style="background-color: #B68E5C">
<!--<span style="background: url('images/icon1.png') no-repeat;width: 220px;height: 150px;display: block;margin: 40px auto 20px;"></span>-->
<div class="titleBar" style="z-index: 999">
    <div style="height: 44px">
        <a id="common_hd_logo" class="t_hide abs common_hd_logo_noBack" href="/ziqu/index.htm">ziqu</a>
        <div class="my_order">我的订单</div>
        <a class="glyphicon glyphicon-shopping-cart new_cart_btn" href="#"></a>
    </div>
    <!--<img src="images/logo.jpg" style="height: 30px;margin: 10px 27%">-->
</div>
<div class="container-fluid" style="padding-left: 0;padding-right: 0;padding-top: 44px;">

    <!--<nav class="navbar navbar-default navbar-static" id="navbar-example2" style="position: fixed;width: 100%;">
        <div class="container-fluid">
            <div class="navbar-header">
                <button class="collapsed navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-example-js-navbar-scrollspy">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="#" class="navbar-brand">类别</a>
            </div>
            <div class="collapse navbar-collapse bs-example-js-navbar-scrollspy">
                <ul class="nav navbar-nav">
                    <li class=""><a href="#fat">100元档</a></li>
                    <li class="active"><a href="#mdo">200元档</a></li>
                    <li class=""><a href="#one">500元档</a></li>
                </ul>
            </div>
        </div>
    </nav>-->
    <div class="scrollspy-example" data-spy="scroll" data-target="#navbar-example2" data-offset="80" style="background-color: #fff;overflow: auto;-webkit-overflow-scrolling: touch;">

    </div>


</div>

<div class="modal-backdrop fade in" style="opacity: 0"></div>
<div class="menu_right" onclick="javascript:showmenu()">
    <span class="glyphicon glyphicon-list menu"></span>
</div>

<div class="shop_menu">
    <nav class="" id="navbar-example2" style="width: 100%;">
        <ul class="nav navbar-nav">

        </ul>
    </nav>
</div>

<script type="text/javascript" src="/resources/common/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="/resources/common/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resources/mobile/js/jquery.fly.min.js"></script>

<script type="text/javascript" src="/resources/mobile/js/ziqu-food.js"></script>

</body>
</html>
