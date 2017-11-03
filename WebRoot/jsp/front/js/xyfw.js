$(function (){
	             	 /*推荐服务信息*/
	        	    /*var tjfuJson=[
	        	    		{"aHref":"/LifeService/jsp/front/fw/fwinfo.jsp","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	        	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	        	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	        	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	        	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	        	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	        	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	        	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	        	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"}
	        	    ];*/
	        	    var tjfuJsonHtml="";
	   		     for(var i=0;i<tjfuJson.length;i++){
	   		    	tjfuJsonHtml='<div class="essp_goods col-xs-6"  id="essp_goods_info'+i+'"  onmouseout="essp_goodshide(this)" onmousemove="essp_goodsshow(this)"><div  class="col-xs-5">'+
	   					'<a href="'+tjfuJson[i].aHref+'" ><img src="'+tjfuJson[i].imgUrl+'"   /></a>'+
	   					'<div class="essp_goods_info" >'+
	   					'<h4><a href="'+tjfuJson[i].aHref+'">'+tjfuJson[i].Title+'</a></h4>'+
	   					'<div class="essp_goods_info_xx" id="essp_goods_info'+i+'_xx"><p>价格:<span>'+tjfuJson[i].nowPrice+'</span></p>'+
	   					'</div></div>'+
	   					'</div><div class="col-xs-7 essp_goods_info_jjxx">'+
	   					'<p><span>来源：</span><span class="essp_goods_info_jjxx_gsname">某某公司</span></p>'+
	   					'<p><span>联系方式：</span><span>************</span></p>'+
	   					'<p><span>地址：</span><span>************</span></p>'+
	   					'<div>'+
	   					'</div>';
	   	     			$("#main_center_xyfw").append(tjfuJsonHtml);
	   	     	} 
	   		     
});
