$(function() {
	
	var menuArrayJson=[
	                   {"menu":"首页","title":"官网首页","ahref":"/LifeService/jsp/front/index.jsp"},
	                   {"menu":"|","title":""},
	                   {"menu":"专题报道","title":"专题报道","ahref":"/LifeService/jsp/front/ztbd/ztbd.jsp"},
	                   {"menu":"|","title":""},
	                   {"menu":"我需要服务","title":"查阅各类已发布生活服务","ahref":"/LifeService/jsp/front/fw/xyfw.jsp"},
	                   {"menu":"|","title":""},
	                   {"menu":"我提供服务","title":"发布生活服务","ahref":"/LifeService/jsp/front/fw/tgfw.jsp"},
	                   {"menu":"|","title":""},
	                   {"menu":"这东西我不需要了","title":"发布二手产品交易信息","ahref":"/LifeService/jsp/front/esjy/sell.jsp"},
	                   {"menu":"|","title":""},
	                   {"menu":"我正需要","title":"发布我需要的物品信息","ahref":"/LifeService/jsp/front/esjy/buy.jsp"},
	                   {"menu":"|","title":""},
	                   {"menu":"爱心助力","title":"爱心活动","ahref":"/LifeService/jsp/front/axzl/axzl.jsp"},
	                   {"menu":"|","title":""},
	                   {"menu":"关于我们","title":"我们的简介","ahref":"/LifeService/jsp/front/gywm/gywm.jsp"}
	                   ];
	for(var i=0;i<menuArrayJson.length;i++){
		var menuArrayJsonHtml='<li id="menuArrayJson'+i+'" title="'+menuArrayJson[i].title+'">'+menuArrayJson[i].menu+'</li>';
		$("#head_title").append(menuArrayJsonHtml);
	}
	/*$("div ul li").each(function (index){
		$(this).html(menuArrayJson[index].menu);
		$(this).attr("title",menuArrayJson[index].title);
	});*/
	$("div ul li").click(function(){
		var num=$(this).attr("id").substr(13);
		if(num%2==0){
			window.location=menuArrayJson[num].ahref;
		}
		//alert(num);
		
	});
});



