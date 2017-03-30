<%--
  Created by IntelliJ IDEA.
  User: administrator
  Date: 17/3/16
  Time: 下午5:29
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <title>自趣</title>
    <link rel="stylesheet" href="/resources/common/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/common/bootstrap/dist/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="/resources/mobile/css/button.css">
    <link rel="stylesheet" href="/resources/mobile/css/weidian.css">
    <link rel="stylesheet" href="/resources/mobile/css/index.css">

</head>
<body style="background-color: #F7F7F7">
<div class="titleBar" style="z-index: 999">
    <div style="height: 44px">
        <a id="common_hd_logo" class="t_hide abs common_hd_logo_noBack" href="/ziqu/index.htm">ziqu</a>
        <a href="/ziqu/order-m.htm"> <div class="my_order">我的订单</div></a>
        <a class="glyphicon glyphicon-shopping-cart new_cart_btn" href="/ziqu/shopping-cart.htm"></a>
    </div>
    <!--<img src="images/logo.jpg" style="height: 30px;margin: 10px 27%">-->
</div>
<div class="container-fluid" style="padding-left: 0;padding-right: 0;padding-top: 44px;">

    <div class="page-content">

        <div id="carousel-example-generic" class="carousel slide my_slide" data-ride="carousel">
            <ol class="carousel-indicators">


            </ol>
            <div class="carousel-inner" role="listbox">


            </div>
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span
                            class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
                    class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control"
               href="#carousel-example-generic" role="button"
               data-slide="next"> <span
                    class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next
                </span>
            </a>
        </div>

        <div class="my_btn_div" style="border-top: 1px solid #eee;border-bottom: 1px solid #eee;">
            <a href="/ziqu/list-m.htm?type=1" class="button button-3d button-box button-jumbo" style="width: 70%;color: #f3e7f0;background-color: #b3b4bd;height: 50px;line-height: 50px">兑换出行产品</a>
            <a href="/ziqu/list-m.htm?type=2" class="button button-3d button-box button-jumbo" style="width: 70%;color: #f3e7f0;background-color: #9b9ca7;margin-top: 30px;height: 50px;line-height: 50px;">兑换自趣商品</a>
        </div>

    </div>


</div>
<script type="text/javascript" src="/resources/common/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="/resources/common/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resources/mobile/js/ziqu-m.js"></script>
</body>
</html>
