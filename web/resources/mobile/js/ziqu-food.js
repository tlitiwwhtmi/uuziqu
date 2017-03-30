/**
 * Created by administrator on 17/3/17.
 */

$(document).ready(function () {

    $('.scrollspy-example').css('height',screen.height-44)
    $('.shop_menu').css('height',screen.height);

    $.get("/ziqu/product/products.data?type=2", function (data) {
        if(data){
            var menuHtml = "";
            var catHtml = "";
            for(var i=0;i<data.datas.length;i++){
                var cat  = data.datas[i];
                if(i == 0){
                    menuHtml += '<li class="active"><a href="#'+cat.id+'">'+cat.catName+'</a></li>'
                }else{
                    menuHtml += '<li class=""><a href="#'+cat.id+'">'+cat.catName+'</a></li>'
                }

                catHtml += '<div id="'+cat.id+'" style="height: 26px;width: 100%;margin: 10px 0;background-color: #F8F8F8;"> ' +
                    '<div style="width: 6px;height: 26px;background-color: #b61426;display: inline;float: left;margin-left: 10px"></div> ' +
                    '<h4 style="display: inline;float: left;line-height: 26px;margin: 0 0 0 5px;">'+cat.catName+'</h4> </div>';

                var productHtml = '<ul class="list-wrapper">';
                for(var j = 0; j< cat.productEntities.length; j++){
                    var product = cat.productEntities[j];
                    productHtml += '<li class="list-item single-column"> ' +
                        '<a class="link for_gaq" href="/ziqu/specific-m.htm?sn='+product.goodsSn+'" data-for-gaq="普通商品;2020848650"> ' +
                        '<div class="img-wrapper"> <div class="img-inner"> <span class="sellerOut">' +
                        ' <img data-src="'+product.goodsAdImg+'" class="proImg lazy" src="'+product.goodsAdImg+'"> ' +
                        '</span> </div> </div> <div class="i_li_content_div abs">' +
                        ' <p class="i_txt">【'+product.goodsTitle+'】'+product.goodsDesc+'</p> ' +
                        '<div class="i_pri_wrap"> ' +
                        '<p class="i_pri pt5">¥'+product.productPrice+'</p> ' +
                        '</div> <p class="i_soldOut_wrap abs"> <em class="i_li_soldOut">销量1</em> </p> </div>' +
                        ' <div class="i_cart abs addCart" data-itemid="2020848650" data-skuid="" data-stock="9999"></div> </a>' +
                        ' </li>'
                }
                productHtml += '</ul>';
                catHtml += productHtml;
            }

            $('.scrollspy-example').html(catHtml);
            $('.shop_menu').find('ul').html(menuHtml);

            initPage();
        }
    });


    function initPage(){
        $('.menu_right').click(function () {
            if($('.modal-backdrop').css('opacity') == '0.5'){
                $('.modal-backdrop').css('opacity','0')
                $('.container-fluid').css('margin-right','0px')
                $('.container-fluid').css('margin-left','0px')
                $('.menu_right').css('right','0px')
                $('.shop_menu').css('right','-150px')
                $('.modal-backdrop').css('z-index',-999)
            }else{
                $('.modal-backdrop').css('opacity','0.5')
                $('.container-fluid').css('margin-right','150px')
                $('.container-fluid').css('margin-left','-150px')
                $('.menu_right').css('right','150px')
                $('.shop_menu').css('right','0px')
                $('.modal-backdrop').css('z-index',1040)
            }
            //alert(1123);
        })

        $('.modal-backdrop').click(function () {
            $('.modal-backdrop').css('opacity','0')
            $('.container-fluid').css('margin-right','0px')
            $('.container-fluid').css('margin-left','0px')
            $('.menu_right').css('right','0px')
            $('.shop_menu').css('right','-150px')
            $('.modal-backdrop').css('z-index',-999)
        })

        $('.addCart').click(function (event) {
            var addcar = $(this);
            var img = addcar.parent().find('img').attr('src');

            var flyer = $('<img class="u-flyer" src="'+img+'" style="z-index: 9999;width: 80px">');
            flyer.fly({
                start: {
                    left: event.pageX, //开始位置（必填）#fly元素会被设置成position: fixed
                    top: event.pageY //开始位置（必填）
                },
                end: {
                    left: screen.width-120, //结束位置（必填）
                    top: 5, //结束位置（必填）
                    width: 0, //结束时宽度
                    height: 0 //结束时高度
                },
                onEnd: function(){ //结束回调
                    $("#msg").show().animate({width: '250px'}, 200).fadeOut(1000); //提示信息
                    addcar.css("cursor","default").removeClass('orange').unbind('click');
                    this.destory(); //移除dom
                }
            });

            event.preventDefault()
        })
    }
});