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

        .table label{
            font-weight:normal;
        }

        .table td{
            border:none;
            text-align: center;
        }
        .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
            padding: 8px;
            line-height: 1.42857143;
            vertical-align: top;
            border:none;
        }

        .table input{
            width:90%;
            border: 1px solid black;
            border-radius: 2px;
        }
        .table textarea{
            width:90%;
            border: 1px solid black;
            border-radius: 2px;
            height: 200px;
        }
        .table button{
            width: 90px;
            padding: 5px 0;
            color: #fff;
            background-color: black;
            border: 1px;
            border-radius: 2px;
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
        input{
            outline: none;
        }
        textarea{
            outline:none;
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
                <li role="presentation" class="active"><a href="zi-qu-mail.html"><img src="assets/images/email.png" style="width: 20px;"></a></li>
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
            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">联系我们</a></li>
        </ul>
    </div>
    <div class="col-md-10">
        <hr style="height: 1px;border: none;border-top: 1px solid #555555;">

        <div class="tab-content" style="overflow: hidden">
            <div role="tabpanel" class="tab-pane active" id="home" style="padding-top: 20px;">
                <table class="table">
                    <tr>
                        <td>
                            <label>您的姓名:</label>
                        </td>
                        <td>
                            <input type="text">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>联系地址:</label>
                        </td>
                        <td>
                            <input type="text">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>联系方式:</label>
                        </td>
                        <td>
                            <input type="text">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>电子邮箱:</label>
                        </td>
                        <td>
                            <input type="text">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>您的留言:</label>
                        </td>
                        <td>
                            <textarea></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td style="text-align: left">
                            <button>提交</button>
                        </td>
                    </tr>
                </table>
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
