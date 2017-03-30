<%--
  Created by IntelliJ IDEA.
  User: administrator
  Date: 17/3/16
  Time: 下午5:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>自趣</title>
    <link rel="stylesheet" href="/resources/common/bootstrap/dist/css/bootstrap.min.css">
    <link rel="shortcut icon" href="/resources/pc/images/logo.png">
    <style>
        .my-li li{
            width: 100%;
        }
        .my-li .active a{
            border: none;
            font-weight: bold;
        }

        .my-li a{
            border: none;
        }
        .nav>li>a:focus, .nav>li>a:hover {
            background-color: #fff;
        }

        .my-pro img{
            width: 200px;
        }

        .rel-menu a{
            font-size: 12px;
        }
        .opara button{
            height: 30px;
            background-color: transparent;
            border: 1px solid #a29494;
            border-radius: 2px;
        }

        .goods{
            height: 270px;
            padding-bottom: 30px;
            border-bottom: 1px solid #eee;
            padding-left: 30px;
            margin-top: 10px;
        }
        .goods:last-child {
            border-bottom: 0;
        }

        .nav>li>a:focus, .nav>li>a:hover {
            background-color: #fff;
        }

        .nav>li>a{
            color: black;
        }

        .nav-pills .active a{
            font-weight: bold;
            color: #AA7322;
        }

        .nav-pills>li.active>a, .nav-pills>li.active>a:focus, .nav-pills>li.active>a:hover {
            color: #AA7322;
            background-color: #fff;
        }

        button{
            outline: none;
        }
    </style>
</head>
<body>
<div class="container" style="width: 80%;">
    <div class="header clearfix" style="margin-top: 30px;">
        <nav>
            <ul class="nav nav-pills pull-right" style="margin-bottom: 10px">
                <li role="presentation"><a href="zi-qu.html">自趣</a></li>
                <li role="presentation"><a href="zi-qu-swi.html">兑换</a></li>
                <li role="presentation" class="active"><a href="zi-qu-free.html">赠品</a></li>
                <li role="presentation"><a href="zi-qu-mail.html"><img src="/resources/pc/images/email.png" style="width: 20px;"></a></li>
            </ul>
        </nav>
        <div class="col-md-2" style="padding-left: 0;">
            <a href="zi-qu-index.html">
                <img src="/resources/pc/images/local_exp.png" style="width: 140px;">
            </a>
        </div>
    </div>

    <div class="col-md-2">
        <hr style="height: 1px;border: none;border-top: 1px solid #555555;">
        <ul class="my-li nav" role="tablist">
            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">自趣赠品兑换</a></li>
        </ul>
    </div>
    <div class="col-md-10">
        <hr style="height: 1px;border: none;border-top: 1px solid #555555;">

        <div class="tab-content" style="overflow: hidden">
            <div role="tabpanel" class="tab-pane active" id="home">
                <div class="content">

                    <div class="goods">
                        <div class="col-md-6" style="height: 100%;">
                            <div class="type">
                                <span style="padding: 2px 10px;background-color: #CDCDCD;border-radius: 2px">1001型</span>
                            </div>
                            <div class="detail">
                                <p>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)
                                </p>
                            </div>
                            <div class="deliver" style="position: absolute;bottom: 35px">
                                <span style="font-size: 12px;
    color: #fff;
    display: block;
    background-color: #f0412f;
    border-radius: 2px;
    padding: 0 5px">江浙沪包邮</span>
                            </div>
                            <div class="opara" style="position: absolute;bottom: 0px">
                                <button>加入购物车</button>
                                <button>我要兑换</button>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <a href="zi-qu-good-spec.html">
                                <img src="https://si.geilicdn.com/vshop974903756-1483082384264-73f08-s1.jpg?w=750&h=750&cp=1" style="height: 240px;width: 300px">
                            </a>
                        </div>
                    </div>

                    <div class="goods">
                        <div class="col-md-6" style="height: 100%;">
                            <div class="type">
                                <span style="padding: 2px 10px;background-color: #CDCDCD;border-radius: 2px">1001型</span>
                            </div>
                            <div class="detail">
                                <p>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)
                                </p>
                            </div>
                            <div class="deliver" style="position: absolute;bottom: 35px">
                                <span style="font-size: 12px;
    color: #fff;
    display: block;
    background-color: #f0412f;
    border-radius: 2px;
    padding: 0 5px">江浙沪包邮</span>
                            </div>
                            <div class="opara" style="position: absolute;bottom: 0px">
                                <button>加入购物车</button>
                                <button>我要兑换</button>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <a href="zi-qu-good-spec.html">
                                <img src="https://si.geilicdn.com/vshop974903756-1483082384264-73f08-s1.jpg?w=750&h=750&cp=1" style="height: 240px;width: 300px">
                            </a>
                        </div>
                    </div>

                    <div class="goods">
                        <div class="col-md-6" style="height: 100%;">
                            <div class="type">
                                <span style="padding: 2px 10px;background-color: #CDCDCD;border-radius: 2px">1001型</span>
                            </div>
                            <div class="detail">
                                <p>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)
                                </p>
                            </div>
                            <div class="deliver" style="position: absolute;bottom: 35px">
                                <span style="font-size: 12px;
    color: #fff;
    display: block;
    background-color: #f0412f;
    border-radius: 2px;
    padding: 0 5px">江浙沪包邮</span>
                            </div>
                            <div class="opara" style="position: absolute;bottom: 0px">
                                <button>加入购物车</button>
                                <button>我要兑换</button>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <a href="zi-qu-good-spec.html">
                                <img src="https://si.geilicdn.com/vshop974903756-1483082384264-73f08-s1.jpg?w=750&h=750&cp=1" style="height: 240px;width: 300px">
                            </a>
                        </div>
                    </div>

                    <div class="goods">
                        <div class="col-md-6" style="height: 100%;">
                            <div class="type">
                                <span style="padding: 2px 10px;background-color: #CDCDCD;border-radius: 2px">1001型</span>
                            </div>
                            <div class="detail">
                                <p>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)<br>
                                    黑毛猪肉棕4只(150g/只)
                                </p>
                            </div>
                            <div class="deliver" style="position: absolute;bottom: 35px">
                                <span style="font-size: 12px;
    color: #fff;
    display: block;
    background-color: #f0412f;
    border-radius: 2px;
    padding: 0 5px">江浙沪包邮</span>
                            </div>
                            <div class="opara" style="position: absolute;bottom: 0px">
                                <button>加入购物车</button>
                                <button>我要兑换</button>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <a href="zi-qu-good-spec.html">
                                <img src="https://si.geilicdn.com/vshop974903756-1483082384264-73f08-s1.jpg?w=750&h=750&cp=1" style="height: 240px;width: 300px">
                            </a>
                        </div>
                    </div>

                </div>
            </div>

        </div>

        <div style="text-align: center;">
            <img src="assets/images/wechat.png" style="margin: 20px auto;height: 150px;">
        </div>

        <div style="text-align: center">
            <p style="font-size: 15px;font-weight: bold;margin-bottom: 5px">
                自趣网络科技（上海）有限公司
            <span style="display: block;font-size: 12px;font-weight: normal;">
                Ziqu Internet Technology Shanghai Co.,Ltd.
            </span>
            </p>
            <p style="font-size: 10px;margin-bottom: 0px">+86-21-6432-8500/6432-8802</p>
            <p style="font-size: 10px;">沪ICP备16028177号</p>
        </div>
    </div>





</div>




<script type="text/javascript" src="/resources/common/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="/resources/common/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>
