/**
 * Created by administrator on 17/3/26.
 */


//$(document).ready(function () {
var cart = new ShoppingCart();

var mobile = ''

function telLogOut(){
    cart.setCookie('telToken', '', 1);

    $('#userInfo').find('p').text('验证手机号查看更多订单');
    var opaBtn = $('#userInfo').find('a');
    opaBtn.attr('href', '/ziqu/verify-m.htm');
    opaBtn.text('立即验证');
    mobile='';

    initPage();
}

function initPage(){
    var token = cart.getCookie("telToken");
    if(token){
        $.get('/ziqu/code/query.do?token='+token, function (data) {
            if(data && data.code == 200){

                $('#userInfo').find('p').text(data.data.number);
                var opaBtn = $('#userInfo').find('a');
                opaBtn.attr('href', 'javascript:telLogOut()');
                opaBtn.text('退出登录');

                mobile = data.data.number;
                initOrderList(0);
            }
        })
    }else{
        initOrderList(0);
    }

    initTypeBtn();
}

function initTypeBtn(){
    $('.order-act').find('a').each(function () {
        $(this).click(function () {
            var actAs = $('.order-act').find('a');
            for(var i=0; i< actAs.length;i++){
                $(actAs[i]).css('color', '#666')
            }
            $(this).css('color', '#c60a1e')
            initOrderList($(this).attr('data-type'));
        })
    });
}

function initOrderList(type){
    $.get('/ziqu/order/list.data?status='+type+'&tel='+mobile+'&userId=', function (data) {
        if(data && data.total > 0){

            var orderHtml = '';
            for(var i=0;i < data.datas.length;i++){
                var order = data.datas[i];
                orderHtml += '<section class="order-item"> ' +
                    '<div class="order-spe"> <h2 id="s_title">订单编号:'+order.orderNum+'</h2> <ul id="i_ul" class="over_hidden">';

                var productHtml = '';
                var totalCount = 0;
                for(var j=0;j<order.productEntities.length;j++){
                    var product = order.productEntities[j];
                    productHtml += '<li class="i_li rel"> <img src="'+product.goodsAdImg+'" class="i_img" alt="" width="60" height="60"> ' +
                        '<h2 class="i_h2">【'+product.goodsTitle+'】'+product.goodsDesc+' </h2> ' +
                        '<h3 class="i_h3">&nbsp;</h3> ' +
                        '<h4 class="i_h4">¥'+product.orderPrice+'</h4> <h5 class="i_h5">x'+product.count+'</h5> </li>';
                    totalCount += product.orderPrice * product.count;
                }

                orderHtml += productHtml;

                orderHtml += '</ul> <div class="order-total"> ' +
                    '<span class="good-count">共'+order.productEntities.length+'件商品</span> ' +
                    '<div class="total-count"> <span style="color: #666">总价:</span><span>¥'+totalCount+'</span> </div> </div>' +
                    ' <div class="order-ope"> <a href="/ziqu/pay-m.htm?code='+order.orderNum+'" class="go-pay">继续支付</a> <a class="cancel-order">关闭订单</a>' +
                    ' <div style="clear: both"></div> </div> </div> </section>';
            }

            $('#order-list').html(orderHtml);
        }else{
            var warnDiv = '<div class="warn-div"> <p><span class="glyphicon glyphicon-exclamation-sign"></span> </p> <p>没有相关订单</p> </div>';
            $('#order-list').html(warnDiv);

        }
    })
}

initPage();
//});