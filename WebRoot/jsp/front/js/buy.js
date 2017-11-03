$(function (){
				$.ajax({
					url:"${pageContext.request.contextPath }/goods_queryGoodsFenYe.tony",
					data:{"nowpage":"1","pagesize":"8"},
					dataType:"json",
					type:"post",
					success:function(msg){
						 var tjfuJson=eval(msg);
						 var tjfuJsonHtml="";
			   		     for(var i=0;i<tjfuJson.length;i++){
			   		    	tjfuJsonHtml='<div class="essp_goods col-xs-3"  id="essp_goods_info'+i+'"  onmouseout="essp_goodshide(this)" onmousemove="essp_goodsshow(this)">'+
			   					'<a href="/LifeService/goods_queryGoodsOne.tony?goodsId='+tjfuJson[i].zid+'" ><img src="'+tjfuJson[i].zspimg1+'"   /></a>'+
			   					'<div class="essp_goods_info" >'+
			   					'<h4><a href="/LifeService/goods_queryGoodsOne.tony?goodsId='+tjfuJson[i].zid+'">'+tjfuJson[i].zspname+'</a></h4>'+
			   					'<div class="essp_goods_info_xx" id="essp_goods_info'+i+'_xx"><p>价格:￥<span style="font-size:18px">'+tjfuJson[i].zspprice+'</span></p>'+
			   					'</div></div></div>';
			   	     			$("#main_center_esjy_info").append(tjfuJsonHtml);
			   	     	} 
					}
				});
	        	 
	   		     
});