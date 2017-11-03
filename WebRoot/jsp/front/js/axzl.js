//轮播插图
$(function(){
	var imgUrlJson=[
	                {"imgUrl":"/LifeService/jsp/front/images/axhd1.jpg","aHref":"javascript:void(0)"},
	                {"imgUrl":"/LifeService/jsp/front/images/axhd2.jpg","aHref":"javascript:void(0)"},
	                {"imgUrl":"/LifeService/jsp/front/images/axhd3.jpg","aHref":"javascript:void(0)"},
	                {"imgUrl":"/LifeService/jsp/front/images/axhd4.jpg","aHref":"javascript:void(0)"},
	                {"imgUrl":"/LifeService/jsp/front/images/axhd5.jpg","aHref":"javascript:void(0)"}
	            ];
	for(var i=0;i<imgUrlJson.length;i++){
		var imgUrlJsonHtml='<li><img src="'+imgUrlJson[i].imgUrl+'"></li>';
		$("#big_banner_pic").append(imgUrlJsonHtml);
	}
});
//轮播
$(function(){
    var i=0;
    var big_banner_pic = $("#big_banner_pic");
    var allimg=$("#big_banner_pic li").length;
    function img_change(){
        var img_i=i*-1140+"px";
        big_banner_pic.animate({opacity:".2"},100,function(){
            big_banner_pic.css("left",img_i );
            big_banner_pic.animate({
                opacity: "1"
            }, 100);
        });
    }
    function automatic(){
        i+=1;
        if(i>=allimg){
            i=0;
        }
        img_change();
    }
    change_self_time = setInterval(automatic, 3000);
    //轮播上一张下一张图标控制
    $("#big_banner_change_wrap").hover(function(){
        clearInterval(change_self_time);
        $("#big_banner_change_wrap").children().show();
    },function(){
        change_self_time = setInterval(automatic, 3000);
        $("#big_banner_change_wrap").children().hide();
    });
    $("#big_banner_change_prev").click(function(){
        i += 1;
        if (i >= allimg) {
            i = 0;
        }
        img_change();
    });
    $("#big_banner_change_next").click(function(){
        i -= 1;
        if (i <= 0) {
            i = allimg - 1;
        }
        img_change();
    });
});