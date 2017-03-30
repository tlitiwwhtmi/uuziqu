/**
 * Created by administrator on 17/3/26.
 */


$(document).ready(function () {

    var cart = new ShoppingCart();

    $('.verify-btn').click(function () {
        var mobile = $('#mobile').val();
        if(mobile){
            $.get('/ziqu/sms/send.do?mobile='+ mobile, function (data) {
                if(data && data.code == 200){
                    toggleModal(data.msg);
                }else{
                    toggleModal(data.msg);
                }
            })
        }
    });

    $('.submit-btn').click(function () {
        var mobile = $('#mobile').val();
        var code = $('#code').val();
        if(mobile && code){
            $.get('/ziqu/sms/verify.do?mobile='+mobile+'&code='+code, function (data) {
                if(data && data.code == 200){
                    cart.setCookie('telToken', data.msg, 1);
                    location.href = '/ziqu/order-m.htm';
                }else{
                    toggleModal(data.msg);
                }
            })
        }
    });

    function toggleModal(text){
        $('#alert-text').text(text);
        setTimeout(function(){
            $('#alert-modal').modal('hide');
        },1500);
        $('#alert-modal').modal('show');
    }
});