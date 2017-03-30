/**
 * Created by administrator on 17/3/27.
 */

$(document).ready(function () {
    $('.ticket-div').css('height',screen.height);
    $('.ticket-div').css('top',-screen.height);

    $('.add_ticket').click(function () {
        $('.ticket-div').css('top',0);
    });

    $('#close-ticket').click(function () {
        $('.ticket-div').css('top',-screen.height);
    });

    var code = $('#hide-code').val();
    if(code){
        $.get('/ziqu/order/spenopro.data?code='+code, function (data) {
            if(data && data.code == 200){
                var order = data.data;
                var orderHtml = '<div class="address_p rel" style="padding: 8px 10px 8px 10px;"> ' +
                    '<div><span>'+order.receiverName+'</span></div> ' +
                    '<div><span>'+order.receiverTel+'</span></div> ' +
                    '<div><span>'+order.countryName+'&nbsp;'+order.provinceName+'&nbsp;'+order.areaName+'&nbsp;</span></div>' +
                    ' <div><span>'+order.detailAddress+'</span></div> ';
                var totalCount = 0;
                for(var i=0;i<order.orderDetailEntities.length;i++){
                    var orderDetail = order.orderDetailEntities[i];
                    totalCount += orderDetail.num * orderDetail.price;
                }
                orderHtml += '<div style="clear: both"></div> </div> <div class="address_p rel" style="padding: 8px 10px 8px 0;"> ' +
                    '<span>共'+order.orderDetailEntities.length+'件商品</span> <span style="float: right;color: #333">¥'+totalCount+'</span> <span style="float: right">总价:</span> </div>';

                $('#address_form').html(orderHtml);
            }
        })
    }
});