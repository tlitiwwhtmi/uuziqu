<%--
  Created by IntelliJ IDEA.
  User: administrator
  Date: 17/3/16
  Time: 下午5:35
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
        .chose_div{
            width: 300px;
            padding: 10px;
            border: 1px solid black;
            margin: auto;
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
    </style>
</head>
<body>
<div class="container" style="width: 80%;">
    <div class="header clearfix" style="margin-top: 30px;">
        <nav>
            <ul class="nav nav-pills pull-right" style="margin-bottom: 10px">
                <li role="presentation"><a href="zi-qu.html">自趣</a></li>
                <li role="presentation" class="active"><a href="zi-qu-swi.html">兑换</a></li>
                <li role="presentation"><a href="zi-qu-free.html">赠品</a></li>
                <li role="presentation"><a href="zi-qu-mail.html"><img src="/resources/pc/images/email.png" style="width: 20px;"></a></li>
            </ul>
        </nav>
        <div class="col-md-2" style="padding-left: 0;">
            <a href="zi-qu-index.html">
                <img src="/resources/pc/images/local_exp.png" style="width: 140px;">
            </a>
        </div>
    </div>

    <div class="col-md-12" style="padding: 40px;">
        <div class="col-md-6" style="text-align: center">
            <div class="chose_div">
                <a href="zi-qu-swi-spec.html">
                    <img src="/resources/pc/images/online_tra.png" style="height: 200px">
                </a>
            </div>

        </div>
        <div class="col-md-6" style="text-align: center">
            <div class="chose_div">
                <a href="zi-qu-swi-spec.html">
                    <img src="/resources/pc/images/offline_tra.png" style="height: 200px">
                </a>
            </div>
        </div>
    </div>

    <div style="text-align: center;">
        <img src="/resources/pc/images/wechat.png" style="margin: 20px auto;height: 150px;">
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




<script type="text/javascript" src="/resources/common/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="/resources/common/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>
