/**
 * Created by duanhao on 17/2/22.
 */


$(document).ready(function () {
    $('.page-content').css('height',screen.height-54);


    $.get('/ziqu/home/homeimgs.data', function (data) {
        if(data){
            var liHtml = '';
            var divHtml = '';
            for(var i=0;i<data.datas.length;i++){
                var img = data.datas[i];
                if(i == 0){
                    liHtml += '<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>'
                    divHtml += '<div class="item active"><img alt="" src="'+img.imgUrl+'" data-holder-rendered="true"> </div>'
                }else{
                    liHtml += '<li data-target="#carousel-example-generic" data-slide-to="'+i+'" class=""></li>'
                    divHtml += '<div class="item"><img alt="" src="'+img.imgUrl+'" data-holder-rendered="true"> </div>'
                }

            }

            $('.carousel-indicators').html(liHtml);
            $('.carousel-inner').html(divHtml);

            initCarousel();
        }
    });

    function initCarousel(){
        $('.carousel').carousel({
            interval: 3000
        })
    }

});