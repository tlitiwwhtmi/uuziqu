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
                <li role="presentation" class="active"><a href="zi-qu.html">自趣</a></li>
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

    <div class="col-md-2">
        <hr style="height: 1px;border: none;border-top: 1px solid #555555;">
        <ul class="my-li nav" role="tablist">
            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">关于自趣</a></li>
            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">自趣的产品</a></li>
        </ul>
    </div>
    <div class="col-md-10">
        <hr style="height: 1px;border: none;border-top: 1px solid #555555;">

        <div class="tab-content" style="overflow: hidden">
            <div role="tabpanel" class="tab-pane active" id="home">
                <img
                        alt=""
                        src="https://si.geilicdn.com/vshop974903756-1468212400188-BBD73-s1.jpg?w=1000&h=400&cp=1"
                        data-holder-rendered="true">

                <div style="margin-top: 30px;">
                    <p>
                        自趣以移动应用程序链接出行地与目的地用户需求，为企业和中高端个人群体提供优质的一对一、点对点的出行解决方案。用户双方可以通过自趣平台来定制目的地专享出行体验。
                    </p>
                    <p>
                        未来，自趣会秉承以品质提升价值，做中国最受信赖的出行服务平台。一如既往地搭建好游客与地接社的桥梁纽带，给自趣品牌注入更多的创新出行服务。
                    </p>


                    <h4>原产地直采：</h4>
                    <p>
                        深化战略布局，让全中国乃至全球更多的地接社入驻自趣，提供第一手的体验项目与当地特产，让游客轻松享受原汁原味的当地生活体验。
                    </p>


                    <h4>互联网创新：</h4>
                    <p>
                        自趣将一如既往地“死磕”互联网创新，深挖“互联网+出行”市场，从提升消费者体验出发，树立行业新标准，在传统旅游模式的基础上，继续开创新的出行体验。让人们的旅程更自由、更舒适，从容惬意地发现·走进当地生活之美。
                    </p>


                    <p>
                        以后，就和自趣一起，当地生活体验。
                    </p>

                    <h4>
                        商务会务定制
                    </h4>
                    <p>
                        定制独一无二的当地体验行程，更个性。根据企业需求一个工作日出方案，更快捷。自趣MICE团队全程管家式服务，更专业。当地直采模式省去了中间商环节，更实惠。
                    </p>


                    <h4>
                        企业团队拓展服务
                    </h4>
                    <p>
                        自趣团队拓展不走寻常路，根据客户拓展需求，结合当地体验项目，自趣签约的拓展导师将为客户制定个性化的拓展方案。自趣全资控股的新媒体团队，将为企业团队拓展提供360度全程跟拍服务，运用“真人秀”的拍摄手法，为拓展活动留下最真实的影像资料。
                    </p>

                </div>
            </div>
            <div role="tabpanel" class="tab-pane my-pro" id="profile">
                <div class="col-md-4">
                    <img src="/resources/pc/images/offline_tra.png">
                </div>
                <div class="col-md-4">
                    <img src="/resources/pc/images/xie.png">
                </div>
                <div class="col-md-4">
                    <img src="/resources/pc/images/zon.png">
                </div>
                <div class="col-md-4">
                    <img src="/resources/pc/images/rice.png">
                </div>
                <div class="col-md-4">
                    <img src="/resources/pc/images/jiang.png">
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





</div>




<script type="text/javascript" src="/resources/common/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="/resources/common/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>
