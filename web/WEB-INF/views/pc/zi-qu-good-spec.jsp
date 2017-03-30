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
        .img-select ul{
            list-style: none;
            margin: 0;
            padding: 0;
        }
        .img-select ul li{
            float: left;
            margin-right: 5px;
        }

        .img-select ul li img{
            height:60px;
        }

        .img-select{
            margin-top: 10px;
        }

        .opara button{
            height: 40px;
            padding: 0 20px;
            background-color: transparent;
            border: 1px solid #a29494;
            border-radius: 2px;
        }

        .num button{
            background-color: #EDEDED;
            border: 1px solid #ccc;
            height: 25px;
            width: 30px;
        }

        .num span{
            height: 25px;
            line-height: 25px;
            width: 40px;
            border-top: 1px solid #ccc;
            display: inline-block;
            border-bottom: 1px solid #ccc;
            text-align: center;
        }

        .spec-content img{
            width: 680px;
            margin-top: 20px;
        }

        .spec-content{
            text-align: center;
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

    <div class="content">
        <div class="change col-md-12">
            <h5>自趣商品兑换</h5>
            <hr style="height: 1px;border: none;border-top: 1px solid #555555;">
            <div class="i_cont">
                <div class="col-md-5">
                    <div class="img-show">
                        <img src="https://si.geilicdn.com/vshop974903756-1483082384264-73f08-s1.jpg?w=320&h=320&cp=1" style="height: 320px;">
                    </div>
                    <div class="img-select">
                        <ul>
                            <li>
                                <img src="https://si.geilicdn.com/vshop974903756-1483082384264-73f08-s1.jpg?w=320&h=320&cp=1">
                            </li>
                            <li>
                                <img src="https://si.geilicdn.com/vshop974903756-148307720652-5443691.jpg?w=320&h=320&cp=1">
                            </li>
                            <li>
                                <img src="https://si.geilicdn.com/vshop974903756-1483077185240-4432951.jpg?w=320&h=320&cp=1">
                            </li>
                            <div style="clear: both"></div>
                        </ul>
                    </div>
                </div>
                <div class="col-md-7" style="height: 390px;">
                    <div class="title">
                        <h4>【五常·稻花香】2500g/江浙沪包邮。超出地区邮费另计</h4>
                    </div>
                    <div class="description">
                        <p>
                            五常这个地域种植大米大约已有近200来年的历史。早在清廷就盛传着慈禧“非黑龙江五常大米不吃”的说法。所以一直以来黑龙江五常大米都是朝廷的“贡米”。
                        </p>
                    </div>
                    <div class="tip">
                        <h5>温馨提示:</h5>
                        <p>江浙沪包邮,订单生效后3天内发货</p>
                    </div>
                    <div class="num" style="position: absolute;bottom: 50px;">
                        <label>数量:</label>
                        <button disabled>-</button><span>1</span><button>+</button>
                    </div>
                    <div class="opara" style="position: absolute;bottom: 0px">
                        <button>加入购物车</button>
                        <button>我要兑换</button>
                        <button>购买兑换券</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="spec col-md-12" style="margin-top: 40px">
            <h5 style="display: inline-block">产品详情</h5>
            <div style="display: inline-block;float: right">
                <span class="glyphicon glyphicon-time"></span>
                <strong>距离结束:</strong>
                <span style="color: red">13</span><span>天</span><span style="color: red">08</span><span>小时</span>
                <span style="color: red">36</span><span>分</span><span style="color: red">24</span><span>秒</span>
            </div>
            <hr style="height: 1px;border: none;border-top: 1px solid #555555;margin-top: 0px">
            <div class="spec-content">
                <h4 style="text-align: left">【五常·稻花香】2500g/江浙沪包邮。超出地区邮费另计</h4>
                <p style="text-align: left">
                    五常这个地域种植大米大约已有近200来年的历史。早在清廷就盛传着慈禧“非黑龙江五常大米不吃”的说法。所以一直以来黑龙江五常大米都是朝廷的“贡米”。
                </p>
                <img src="https://si.geilicdn.com/vshop974903756-1483082384264-73f08-s1.jpg?w=1500&h=1500&cp=1">
                <img src="https://si.geilicdn.com/vshop974903756-148307720652-5443691.jpg?w=1500&h=1500&cp=1">
                <img src="https://si.geilicdn.com/vshop974903756-1483077185240-4432951.jpg?w=1500&h=1500&cp=1">
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
<script type="text/javascript">
    $(document).ready(function () {
        $('.img-select ul li').click(function () {
            $('.img-show img').attr('src',$(this).find('img').attr('src'))
            //alert($(this).find('img').attr('src'));
        })
    });
</script>
</body>
</html>
