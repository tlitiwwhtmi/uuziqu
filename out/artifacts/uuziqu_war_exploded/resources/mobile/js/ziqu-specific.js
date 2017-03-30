/**
 * Created by administrator on 17/3/19.
 */


$(document).ready(function () {

    $.get('/ziqu/product/prospe.data?sn='+$('#hidSn').val(), function (data) {
        if(data && data.data){
            var product = data.data;
            var smallSwiper = '';
            var largeSwiper = '';
            var specficImgs = '';
            for(var i=0;i<product.productImgEntities.length;i++){
                var proImg = product.productImgEntities[i];
                if(i == 0){
                    smallSwiper += '<div data-key="'+i+'" class="swiper-slide swiper-slide-active"> ' +
                        '<img src="'+proImg.imgPath+'" class="swiper-img"> </div>';
                    largeSwiper += '<li data-key="'+i+'" class="swiper-slide swiper-slide-active"> ' +
                        '<img src="'+proImg.imgPath+'" class="swiper-img center"> </li>';
                }else{
                    smallSwiper += '<div data-key="'+i+'" class="swiper-slide"> ' +
                        '<img data-src="'+proImg.imgPath+'" class="swiper-img swiper-lazy"> ' +
                        '<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div> </div>';
                    largeSwiper += '<li data-key="'+i+'" class="swiper-slide"> ' +
                        '<img data-src="'+proImg.imgPath+'" class="swiper-lazy swiper-img center"> ' +
                        '<div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div> </li>';
                }
                specficImgs += '<img class="lazy" data-src="'+proImg.imgPath+'" src="'+proImg.imgPath+'" width="100%">'
            }
            $('.my_wrapper').find('.swiper-wrapper').html(smallSwiper);
            $('#itemSlider').find('.swiper-wrapper').html(largeSwiper);

            $('#headerCounter').html('1/'+product.productImgEntities.length);
            $('.slider-counter').html('1/'+product.productImgEntities.length);

            $('#item_name').text('【'+product.goodsTitle+'】'+ product.goodsDesc);
            $('#item_price').text('¥'+product.productPrice);

            $('#itemDetailName').html('【'+product.goodsTitle+'】<br> '+product.goodsDesc);
            $('#imgSpe').html(specficImgs);

            initPage(product.productImgEntities.length);
        }
    });

    function initPage(imgLength){
        //initialize swiper when document ready
        var mySwiper = new Swiper ('.my_wrapper .swiper-container', {
            // Optional parameters
            direction: 'horizontal',
            loop: false,
            preloadImages: false,
            // Enable lazy loading
            lazyLoading: true

        })
        mySwiper.on('slideChangeEnd', function () {
            var index = $('.my_wrapper .swiper-slide-active').attr('data-key');
            $('#headerCounter').text(new Number(index)+1 + '/' + imgLength);
            $('.slider-counter').text(new Number(index)+1 + '/' + imgLength);
            itemSwiper.slideTo(mySwiper.activeIndex);
        });
        mySwiper.on('click', function () {


            $('#itemSlider').removeClass('zoomOut')
            $('#itemSlider').addClass('zoomIn')
            $('#itemSlider').css('display','block')
            itemSwiper.update();
            itemSwiper.update('updatePagination')
        });


        var itemSwiper = new Swiper('#itemSlider',{
            // Optional parameters
            direction: 'horizontal',
            loop: false,
            preloadImages: false,
            // Enable lazy loading
            lazyLoading: true
        })
        itemSwiper.on('slideChangeEnd', function () {
            var index = $('#itemSlider .swiper-slide-active').attr('data-key');
            $('#headerCounter').text(new Number(index)+1 + '/' + imgLength);
            $('.slider-counter').text(new Number(index)+1 + '/' + imgLength);
            mySwiper.slideTo(itemSwiper.activeIndex)
        });
        itemSwiper.on('click', function () {
            $('#itemSlider').removeClass('zoomIn')
            $('#itemSlider').addClass('zoomOut')
            $('#itemSlider').css('display','none')
        });
    }
});