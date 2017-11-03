$(function() {
	/*左侧服务分类栏信息*/
	var leftServiceJson=["",""];
	$.ajax({  
		  type: "POST",      
        url: "${pageContext.request.contextPath}/serve_queryServeList.tony",      
        data: "",  
        dataType : "json",
        
        success: function(msg){         	
        	leftServiceJson=eval(msg);
        	for(var i=0;i<leftServiceJson.length;i++){
        		var left_service01="<div class=\"main_left_service\">" +
					"<span>"+leftServiceJson[i].btitle+"</span>"+
					"<ul id=\"left_service_ul_"+i+"\">";
         		//alert(leftServiceJson[i].Btitle);
         		var left_service02="";
         		for(var j=0;j<leftServiceJson[i].servelist.length;j++){
             		//alert(leftServiceJson[i].Btitle1[j].Stitle);
         			left_service02=left_service02+"<li title=\""+leftServiceJson[i].servelist[j].btitle+"\">"+leftServiceJson[i].servelist[j].btitle+"</li>";
             	}
         		var left_service03=left_service01+left_service02+"</ul></div><div class=\"clear_both\"></div>";
         		$("#main_left").append(left_service03);
         	}
        }
   });  
	             	
	       /*中间专题报道信息*/
	       $.ajax({
				url:"${pageContext.request.contextPath }/report_hotReport.tony",
				data:{"len":"13"},
				dataType:"json",
				type:"post",
				success:function(msg){
					var ztbdJson=eval(msg);
					var ztbdJsonHtml="";
				     for(var i=0;i<ztbdJson.length;i++){
			      		if(i==0){
			      			ztbdJsonHtml="<h4 class=\"text-center col-xs-12\"><a class=\"ztbd_news_ha\" href=\"/LifeService/report_toreportPage.tony?report.zid="+ztbdJson[0].zid+"\" title=\""+ztbdJson[0].ztitle+"\">"+ztbdJson[0].ztitle+"</a></h4><span class=\"ztbd_news_span col-xs-12\">"+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+ztbdJson[0].zcontent.substr(0,100)+"..."+"</span>";
			      		}else{
			      			ztbdJsonHtml=ztbdJsonHtml+"<a class=\"ztbd_news_a col-xs-6\" href=\"/LifeService/report_toreportPage.tony?report.zid="+ztbdJson[i].zid+"\" title=\""+ztbdJson[i].ztitle+"\">"+"·&nbsp;&nbsp;"+ztbdJson[i].ztitle+"</a>";
			      		}
			      	}
				     $("#main_center_ztbd_news").append(ztbdJsonHtml);   
				}
	       });
	     
	     /*推荐服务信息*/
	    var tjfuJson=[
	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"},
	    		{"aHref":"javascript:void(0)","imgUrl":"/LifeService/jsp/front/images/tjfw_cs.png","Title":"软件设计","Contact":"123456789","nowPrice":"200","oldPrice":"300","Company":"天"}
	    ];
	    var tjfuJsonHtml1="";
	    var tjfuJsonHtml2="";
	     for(var i=0;i<tjfuJson.length;i++){
     		if(i<6){
     			tjfuJsonHtml1='<li class="goodlist">'+
                '<a href="'+tjfuJson[i].aHref+'" target="_blank" style="overflow:hidden; display:block; float:left;"><img src="'+tjfuJson[i].imgUrl+'" class="pics" /></a>'+
                '<dl><dt><a href="'+tjfuJson[i].aHref+'" target="_blank" class="title" title="'+tjfuJson[i].Title+'">'+tjfuJson[i].Title+'</a><span class="en" title="联系方式：'+tjfuJson[i].Contact+'">点击标题查看</span>服务价： <br/><span class="change-price">'+tjfuJson[i].nowPrice+'/'+tjfuJson[i].Company+'</span><span class="max-price">'+tjfuJson[i].oldPrice+'/'+tjfuJson[i].Company+'</span></dt></dl></li>';
     			$("#main_center_tjfw_lbxx_1").append(tjfuJsonHtml1);
     		}else{
     			tjfuJsonHtml2='<li class="goodlist">'+
                '<a href="'+tjfuJson[i].aHref+'" target="_blank" style="overflow:hidden; display:block; float:left;"><img src="'+tjfuJson[i].imgUrl+'" class="pics" /></a>'+
                '<dl><dt><a href="'+tjfuJson[i].aHref+'" target="_blank" class="title" title="'+tjfuJson[i].Title+'">'+tjfuJson[i].Title+'</a><span class="en" title="'+tjfuJson[i].Contact+'">联系方式：'+tjfuJson[i].Contact+'</span>服务价： <br/><span class="change-price">'+tjfuJson[i].nowPrice+'/'+tjfuJson[i].Company+'</span><span class="max-price">'+tjfuJson[i].oldPrice+'/'+tjfuJson[i].Company+'</span></dt></dl></li>';
     			$("#main_center_tjfw_lbxx_2").append(tjfuJsonHtml2);
     		}
     	}
	     /*推荐二手信息*/
			$.ajax({
				url:"${pageContext.request.contextPath }/goods_queryGoodsFenYe.tony",
				data:{"nowpage":"1","pagesize":"12"},
				dataType:"json",
				type:"post",
				success:function(msg){
					var esspJson=eval(msg);
					 var esspJsonHtml="";
				     for(var i=0;i<esspJson.length;i++){
			     			esspJsonHtml='<div class="essp_goods col-xs-3"  id="essp_goods_info'+i+'"  onmouseout="essp_goodshide(this)" onmousemove="essp_goodsshow(this)">'+
							'<a href="/LifeService/goods_queryGoodsOne.tony?goodsId='+esspJson[i].zid+'" ><img src="'+esspJson[i].zspimg1+'"   /></a>'+
							'<div class="essp_goods_info" >'+
							'<h4><a href="/LifeService/goods_queryGoodsOne.tony?goodsId='+esspJson[i].zid+'">'+esspJson[i].zspname+'</a></h4>'+
							'<div class="essp_goods_info_xx" id="essp_goods_info'+i+'_xx"><p>价格:￥<span>'+esspJson[i].zspprice+'</span></p>'+
							'<p>联系方式:<span>'+esspJson[i].zphone+'</span></p></div></div></div>';
			     			$("#main_center_tjfw_essp").append(esspJsonHtml);
			     	} 
				}
			});
		     /*爱心活动信息*/
		     var axhdJson=[
		    		 {"Title":"爱心活动"},{"Title":"爱心活动"},{"Title":"爱心活动"},{"Title":"爱心活动"},
		    		 {"Title":"爱心活动"},{"Title":"爱心活动"},{"Title":"爱心活动"},{"Title":"爱心活动"}
		     ];
		     var axhdJsonHtml="";
		     for(var i=0;i<axhdJson.length;i++){
		    	 axhdJsonHtml=axhdJsonHtml+"<a class=\"ztbd_news_a col-xs-3\" style=\"height:60px;font-size:24px;\" title=\""+axhdJson[i].Title+"\">"+"·&nbsp;&nbsp;"+axhdJson[i].Title+(i+1)+"</a>";
	      	}
		     $("#main_center_axhd_info").append(axhdJsonHtml);   
});
