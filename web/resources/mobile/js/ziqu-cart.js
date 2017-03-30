/**
 * Created by administrator on 17/3/20.
 */


$(document).ready(function () {
    var shoppingCart = new ShoppingCart();
    var cart = shoppingCart.listCart();
    if(cart.content.length == 0){
        $('#cart_empty').removeClass('hide');
    }else{
        var sns = '';
        for(var i = 0;i<cart.content.length;i++){
            sns += cart.content[i].sn + ';';
        }
        $.post('/ziqu/product/prospes.data',{"sns":sns}, function (data) {
            if(data){
                var liHtml = '';
                var totalCount = 0;
                for(var i = 0;i<cart.content.length;i++){
                    var cookieSn = cart.content[i];
                    var product = getProductBySn(cookieSn.sn, data.data);
                    if(product){
                        liHtml += '<li id="2020848650" data-sn="'+product.goodsSn+'" data-price="'+product.productPrice+'" class="cart_li rel check_2020848650" data-item-id="2020848650" data-item-price="70" data-current-num="1">' +
                            '<div class="cart_item_del js_cart_item_del"> <span class="text">删除</span> </div> ' +
                            '<div class="cart_li_content rel js_cart_li_content"> ' +
                            '<mark class="cart_mask abs already_mask"> <span>&nbsp;</span> </mark> ' +
                            '<mark class="cart_edit_mask abs hide"><span>&nbsp;</span></mark> ' +
                            '<a href="/ziqu/specific-m.htm?sn='+product.goodsSn+'" class="cart_img abs js_links"> ' +
                            '<img src="'+product.goodsAdImg+'"> ' +
                            '<div class="less-stock abs hide"><span>仅剩9999件</span></div> </a> ' +
                            '<a href="/ziqu/specific-m.htm?sn='+product.goodsSn+'" class="cart_tle over_hidden js_links">' +
                            ' <span class="baoyou">包邮</span> 【'+product.goodsTitle+'】'+product.goodsDesc+' </a> ' +
                            '<p class="cart_cls over_hidden ellipsis">型号:&nbsp;无型号</p> ' +
                            '<div class="control_count"> <div class="left"> <span class="i_pri">¥'+product.productPrice+'</span>' +
                            ' </div> <div class="control_num right c_txt bold"> <a class="control_num_sub block disabled"> ' +
                            '<span>–</span> </a> <input type="tel" class="item_num  c_txt block " value="'+cookieSn.num+'" data-stock="9999"> ' +
                            '<a class="control_num_add block"><span>+</span></a> </div> </div> </div> </li>';
                    }
                    totalCount += cookieSn.num*product.productPrice;
                }
                $('.cart_ul').html(liHtml);
                $('.cash_count').text(cart.content.length);
                $('.sum-total .i_pri').text('￥'+totalCount);
                $('#cart_seller_list').removeClass('hide')

                initPage();
            }
        });

    }

    function getProductBySn(sn, data){
        for(var i=0;i<data.length;i++){
            if(data[i].goodsSn == sn){
                return data[i];
            }
        }
        return null;
    }

    function initPage(){
        $('.control_num_sub').each(function () {
            if($(this).next('input').val() > 1){
                $(this).removeClass('disabled');
                $(this).on('click',proNumSubHandler);
            }

        });

        $('.control_num_add').each(function () {
            $(this).click(function (event) {
                $(this).prev('input').val(new Number($(this).prev('input').val())+1);
                proNumChangeHandler($(this).prev('input'));
            })

        });

        $('.item_num').each(function(){
            console.log($(this));
            $(this).on('change',proNumChangeHandler($(this)))
        });

        function proNumSubHandler(){
            $(this).next('input').val(new Number($(this).next('input').val())-1);
            proNumChangeHandler($(this).next('input'));
        };
        
        function proNumChangeHandler(target) {
            if(target.val() == 1){
                target.prev('a').addClass('disabled');
                target.prev('a').unbind('click',proNumSubHandler);
            }else{
                if(target.prev('a').hasClass('disabled')){
                    target.prev('a').removeClass('disabled');
                    target.prev('a').on('click',proNumSubHandler);
                }
            }

            shoppingCart.updateCart(target.parents('li').attr('data-sn'), target.val());
            caculateTotal();
        };

        function caculateTotal(){
            var totalCount = 0;
            var lis = $('.cart_ul').find('li');
            for(var i=0;i<lis.length;i++){
                var productLi = $(lis[i]);
                totalCount += new Number(productLi.find('.item_num').val()) * new Number(productLi.attr('data-price'));
            }

            $('.sum-total .i_pri').text('￥'+totalCount);
        }
    }
});