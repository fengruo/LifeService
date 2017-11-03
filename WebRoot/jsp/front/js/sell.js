$(function (){
/*	左侧服务分类栏信息
	var leftServiceJson=[
	             		{
	             			"Btitle":"商品类别01",
	             			"Btitle1":[
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆2222222","title":"这是提示信息"},
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆222222","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"}
	             			           ]
	             		},
	             		{
	             			"Btitle":"商品类别02",
	             			"Btitle1":[
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"}
	             			           ]
	             		},
	             		{
	             			"Btitle":"商品类别03",
	             			"Btitle1":[
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"}
	             			           ]
	             		},
	             		{
	             			"Btitle":"商品类别04",
	             			"Btitle1":[
	             			           	{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},
	             			           {"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},
	             			           	{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},{"Stitle":"保姆","title":"这是提示信息"},
	             			           ]
	             		}
	             	];
					
	             	for(var i=0;i<leftServiceJson.length;i++){
	             		var leftServiceJsonHtml='<div class="col-xs-3" style="margin: 3px;width: 264px;">'+
	    				'<h4>&nbsp;&nbsp;&nbsp;&nbsp;'+leftServiceJson[i].Btitle+'</h4>';
	             		var leftServiceJsonHtmls="";
	             		for(var j=0;j<leftServiceJson[i].Btitle1.length;j++){
	             			leftServiceJsonHtmls=leftServiceJsonHtmls+'<span class="col-xs-4 text-center"  style="padding: 0px;"><a href="javascript:void(0)">'+leftServiceJson[i].Btitle1[j].Stitle+'</a></span>';
	             		}
	             		leftServiceJsonHtml=leftServiceJsonHtml+leftServiceJsonHtmls+'</div>';
	             		$("#main_navmain").append(leftServiceJsonHtml);
	             	}*/
	             	 /*推荐服务信息*/
	        	    var tjfuJson=[
	        	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	        	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	        	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	        	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	        	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	        	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	        	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	        	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"}
	        	    ];
	        	    var tjfuJsonHtml="";
	   		     for(var i=0;i<tjfuJson.length;i++){
	   		    	tjfuJsonHtml='<div class="essp_goods col-xs-3"  id="essp_goods_info'+i+'"  onmouseout="essp_goodshide(this)" onmousemove="essp_goodsshow(this)">'+
	   					'<a href="'+tjfuJson[i].aHref+'" ><img src="'+tjfuJson[i].imgUrl+'"   /></a>'+
	   					'<div class="essp_goods_info" >'+
	   					'<h4><a href="'+tjfuJson[i].aHref+'">'+tjfuJson[i].Title+'</a></h4>'+
	   					'<div class="essp_goods_info_xx" id="essp_goods_info'+i+'_xx"><p>价格:<span>'+tjfuJson[i].nowPrice+'</span></p>'+
	   					'<p>联系方式:<span>'+tjfuJson[i].Contact+'</span></p></div></div></div>';
	   	     			$("#main_center_xyfw_tj").append(tjfuJsonHtml);
	   	     	} 
	   		     
});