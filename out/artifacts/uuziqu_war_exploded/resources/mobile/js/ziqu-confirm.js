/**
 * Created by administrator on 17/3/23.
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


    var shoppingCart = new ShoppingCart();
    var cart = shoppingCart.listCart();
    if(cart.content.length == 0){
        location.href = '/ziqu/index.htm';
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
                        liHtml += '<li class="i_li rel">' +
                            '<img src="'+product.goodsAdImg+'" class="i_img" alt="" width="60" height="60"> ' +
                            '<h2 class="i_h2">【'+product.goodsTitle+'】'+product.goodsDesc+' </h2> ' +
                            '<h3 class="i_h3">&nbsp;</h3> ' +
                            '<h4 class="i_h4">¥'+product.productPrice+'</h4> ' +
                            '<h5 class="i_h5">x'+cookieSn.num+'</h5> </li>';
                        totalCount += cookieSn.num * product.productPrice;
                    }
                }
                $('#i_ul').html(liHtml);
                $('#last_money_show').text('¥'+totalCount);
            }
        });

        $.get('/ziqu/region/list.data?parentId=1', function (data) {
            if(data){
                var optionHtml = '';
                for(var i=0;i<data.total;i++){
                    var option = data.datas[i];
                    optionHtml += '<option value="'+option.regionId+'">'+option.regionName+'</option>';
                }
                $('#country-select').append(optionHtml);
                initCountrySelect();
            }
        });
        
        
        $('#submit_order').click(function () {
            if(checkValidForm()){
                $.post('/ziqu/order/add.do',{
                    'receiverName': $('#Js-name').val(),
                    'receiverTel': $('#Js-tel').val(),
                    'country': $('#country-select').val(),
                    'province': $('#province-select').val(),
                    'area': $('#area-select').val(),
                    'detailAddress': $('#Js-detail-address').val(),
                    'remark': $('#remark_area').val()
                }, function (data) {
                    if(data && data.code){
                        if(data.code == 200){
                            shoppingCart.resetCart();
                            location.href = '/ziqu/pay-m.htm?code='+data.msg;
                        }else{
                            toggleModal(data.msg);
                        }
                    }else{
                        toggleModal('系统错误');
                    }
                })
            }
        })
    }

    function checkValidForm(){
        var receiverName = $('#Js-name').val();
        var receiverTel = $('#Js-tel').val();
        var country = $('#country-select').val();
        var province = $('#province-select').val();
        var area = $('#area-select').val();
        var detailAddress = $('#Js-detail-address').val();

        if(!receiverName){
            toggleModal("收货人姓名必填");
            return false;
        }
        if(!receiverTel){
            toggleModal("收货人手机号必填");
            return false;
        }
        if(!country || country == '0'){
            toggleModal("省必选");
            return false;
        }else{
            if(!province || province == '0'){
                toggleModal("市必选");
                return false;
            }else{
                if(!area || area == '0'){
                    toggleModal("区(县)必选");
                    return false;
                }
            }
        }
        if(!detailAddress){
            toggleModal("详细收货地址必填");
            return false;
        }
        return true;

    }

    function toggleModal(text){
        $('#alert-text').text(text);
        setTimeout(function(){
            $('#alert-modal').modal('hide');
        },1500);
        $('#alert-modal').modal('show');
    }

    function initCountrySelect(){
        $('#country-select').change(function () {
            var cVal = $(this).val();

            var provinceSelect = $('#province-select');
            if(provinceSelect.length != 0){
                provinceSelect.html('<option value="0">--请选择--</option>');
            }

            var areaSelect = $('#area-select');
            if(areaSelect.length != 0){
                areaSelect.html('<option value="0">--请选择--</option>');
            }

            if(cVal != 0){
                $.get('/ziqu/region/list.data?parentId='+cVal, function (data) {
                    if(data){
                        var optionHtml = '';
                        for(var i=0;i<data.total;i++){
                            var option = data.datas[i];
                            optionHtml += '<option value="'+option.regionId+'">'+option.regionName+'</option>';
                        }
                        if(provinceSelect.length == 0){
                            $('#region-select').append('<p class="address_p rel"><label for="province" class="abs">市</label><select id="province-select" class="country-select"><option value="0">--请选择--</option></select></p>');
                            provinceSelect = $('#province-select');
                        }
                        provinceSelect.append(optionHtml);
                        initProvinceSelect();
                    }
                });
            }
        })
    }

    function initProvinceSelect(){
        $('#province-select').change(function () {
            var pVal = $(this).val();

            var areaSelect = $('#area-select');
            if(areaSelect.length != 0){
                areaSelect.html('<option value="0">--请选择--</option>');
            }

            if(pVal != 0){
                $.get('/ziqu/region/list.data?parentId='+pVal, function (data) {
                    if(data){
                        var optionHtml = '';
                        for(var i=0;i<data.total;i++){
                            var option = data.datas[i];
                            optionHtml += '<option value="'+option.regionId+'">'+option.regionName+'</option>';
                        }
                        if(areaSelect.length == 0){
                            $('#region-select').append('<p class="address_p rel"><label for="province" class="abs">区(县)</label><select id="area-select" class="country-select"><option value="0">--请选择--</option></select></p>');
                            areaSelect = $('#area-select');
                        }
                        areaSelect.append(optionHtml);
                    }
                });
            }
        })
    }


    function getProductBySn(sn, data){
        for(var i=0;i<data.length;i++){
            if(data[i].goodsSn == sn){
                return data[i];
            }
        }
        return null;
    }
});
