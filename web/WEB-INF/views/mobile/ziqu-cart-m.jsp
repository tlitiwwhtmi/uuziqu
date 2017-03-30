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
    <title>购物车</title>
    <link rel="stylesheet" href="/resources/common/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/common/bootstrap/dist/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="/resources/mobile/css/button.css">
    <link rel="start" href="/resources/mobile/css/weidian.css">
    <link rel="stylesheet" href="/resources/mobile/css/cart.css">
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
<body style="background-color: #F7F7F7;">
<input type="hidden" id="typeVal" value="${type}" />
<!--<span style="background: url('images/icon1.png') no-repeat;width: 220px;height: 150px;display: block;margin: 40px auto 20px;"></span>-->
<div class="titleBar" style="z-index: 999">
    <div style="height: 44px">
        <a id="common_hd_logo" class="t_hide abs common_hd_logo_noBack" href="/ziqu/index.htm">ziqu</a>
        <a href="/ziqu/order-m.htm"> <div class="my_order">我的订单</div></a>
        <a class="glyphicon glyphicon-shopping-cart new_cart_btn" href="/ziqu/shopping-cart.htm"></a>
    </div>
    <!--<img src="images/logo.jpg" style="height: 30px;margin: 10px 27%">-->
</div>
<div class="container-fluid" style="padding-left: 0;padding-right: 0;padding-top: 44px;">

    <section id="mycart_wrap">
        <section class="cart_sec" id="select_items">
            <div class="cart_wrap">
                <div id="cart_empty" class="hide" style="display: block;">还没有选购商品</div>
                <div id="cart_notice" class="hide">购物车将优先展示最新添加的100件商品</div>
                <div id="cart_seller_list" class="hide" style="display: block;">
                    <div class="cart_seller_wrap seller_974903756" data-seller="974903756" data-s_seller_id="974903756" data-canselect="2" style="border-top: 1px solid #eee;">
                        <div class="cart_seller_title_wrapper">
                            <div class="cart_seller_title rel">
                                <mark class="cart_seller_mask abs cart_seller_mask_already">
                                    <span>&nbsp;</span>
                                </mark>
                                <mark class="cart_seller_edit_mask abs hide">
                                    <span>&nbsp;</span>
                                </mark>
                                <a class="block over_hidden js_links" linkhref="https://weidian.com/?userid=974903756&amp;wfr=c">
                                    <span class="ellipsis block icon-right">
                                        <em>自趣</em>
                                    </span>
                                </a>
                            </div>
                            <a href="javascript:void(0);" data-shopname="自趣" data-seller="974903756" class="coupons-selector hide">
                                <span>领券</span>
                            </a>
                        </div>
                        <ul class="cart_ul">
                            <%--<li id="2020848650" class="cart_li rel check_2020848650" data-item-id="2020848650" data-item-price="70" data-current-num="1">
                                <div class="cart_item_del js_cart_item_del">
                                    <span class="text">删除</span>
                                </div>
                                <div class="cart_li_content rel js_cart_li_content">
                                    <mark class="cart_mask abs already_mask">
                                        <span>&nbsp;</span>
                                    </mark>
                                    <mark class="cart_edit_mask abs hide"><span>&nbsp;</span></mark>
                                    <a linkhref="https://weidian.com/item.html?itemID=2020848650&amp;wfr=c" class="cart_img abs js_links">
                                        <img src="https://wd.geilicdn.com/vshop974903756-1483082314998-57530-s1.jpg?w=60&amp;h=60&amp;cp=1">
                                        <div class="less-stock abs hide"><span>仅剩9999件</span></div>
                                    </a>
                                    <a linkhref="https://weidian.com/item.html?itemID=2020848650&amp;wfr=c" class="cart_tle over_hidden js_links">
                                        <span class="baoyou">包邮</span> 【五常·稻花香】2500g/江浙沪包邮。超出地区邮费另计。

                    五常这个地域种植大米大约已有近200来年的历史。早在清廷就盛传着慈禧“非黑龙江五常大米不吃”的说法。所以一直以来黑龙江五常大米都是朝廷的“贡米”。

                    配料: 水稻
                    产地: 黑龙江省五常市
                    净含量: 称重
                    执行标准: GB/T19266
                    质量等级: 优质一等
                    保质期: 12个月
                    生产日期: 见封口或喷码
                    储存条件: 置于阴凉、干燥、通风处。
                    生产许可证编号: SC10123018401210
                    生产地址: 黑龙江省五常市志广乡
                    订购热线: 4008-202-517</a>
                                    <p class="cart_cls over_hidden ellipsis">型号:&nbsp;无型号</p>
                                    <div class="control_count">
                                        <div class="left">
                                            <span class="i_pri">¥70</span>
                                        </div>
                                        <div class="control_num right c_txt bold">
                                            <a class="control_num_sub block disabled">
                                                <span>–</span>
                                            </a>
                                            <input type="tel" class="item_num  c_txt block " value="1" data-stock="9999">
                                            <a class="control_num_add block"><span>+</span></a>
                                        </div>
                                    </div>
                                </div>
                            </li>--%>
                        </ul>
                        <div class="cart_fix_footer wrap">
                            <div class="cart_fix_footer_wrap margin_auto wrap" style="height: 56px;">
                                <div class="cart_fix_footer_inner rel">
                                    <a class="do_buy btnok right" href="/ziqu/confirm-m.htm">去结算(<em class="cash_count">2</em>)</a>
                                    <div class="mycart_money right">
                                        <div class="sum-total">总计(不含运费) :&nbsp;
                                            <span class="money_count i_pri">￥184.00</span>
                                        </div>
                                        <div class="no-express"></div>
                                    </div>
                                    <div class="mycart_edit_text right">已选2件商品&nbsp;&nbsp;应付：
                                        <span class="money_count red">¥184.00</span>
                                    </div></div></div></div></div></div>
            </div>
        </section>
        <section class="cart_sec hide" id="disable_items"></section>
        <section id="cart_footer_toolbar" class="flex cart_footer_toolbar">
            <section id="edit_select_all" class="flex select_all">
                <span class="select_radio rel"></span>
                <span class="select_text">全选</span>
            </section>
            <section id="footer_del" class="flex footer_del">
                <a class="del_btn">删除</a>
            </section>
        </section>
    </section>


</div>


<script type="text/javascript" src="/resources/common/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="/resources/common/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resources/mobile/js/jquery.fly.min.js"></script>

<script type="text/javascript" src="/resources/common/js/shopping-cart.js"></script>
<script type="text/javascript" src="/resources/mobile/js/ziqu-cart.js"></script>

</body>
</html>
