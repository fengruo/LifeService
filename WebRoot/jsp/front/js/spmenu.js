$(function (){
	/*左侧商品分类栏信息*/
	var leftServiceJson=["",""];
	$.ajax({  
		  type: "POST",      
        url: "${pageContext.request.contextPath}/goods_queryGoodsList.tony",      
        data: "",  
        dataType : "json",
        success: function(msg){         	
        	leftServiceJson=eval(msg);
        	var leftServiceJsonHtml="";
         	for(var i=0;i<leftServiceJson.length;i++){
         		if(i==0){
         			leftServiceJsonHtml='<li class="active">'+
             		'<a>'+leftServiceJson[0].zname+'</a>'+
             		'<a class="banner_menu_i">&gt;</a>'+
             			'<div class="banner_menu_content" style=" top: -20px;">'+
             			'<ul class="banner_menu_content_ul">';
         			var liString="";
             			for(var j=0;j<leftServiceJson[0].goodslist.length;j++){
             				liString=liString+'<li><a id="'+leftServiceJson[i].goodslist[j].zid+'" onclick="goodsListFenye(this)" title="'+leftServiceJson[i].goodslist[j].zname+'"><span>'+leftServiceJson[i].goodslist[j].zname+'</span></a></li>';
             			}
       						 
             			leftServiceJsonHtml=leftServiceJsonHtml+liString+	'</ul>'+
       					'</div>'+
       				'</li>';
             		$("#banner_menu_wrap").append(leftServiceJsonHtml);
         		}else{
         			leftServiceJsonHtml='<li>'+
             		'<a>'+leftServiceJson[i].zname+'</a>'+
             		'<a class="banner_menu_i">&gt;</a>'+
             			'<div class="banner_menu_content" style=" top: -'+(20+i*42)+'px;">'+
             			'<ul class="banner_menu_content_ul">';
         			var liString="";
             			for(var j=0;j<leftServiceJson[i].goodslist.length;j++){
             				liString=liString+'<li><a id="'+leftServiceJson[i].goodslist[j].zid+'" onclick="goodsListFenye(this)"   title="'+leftServiceJson[i].goodslist[j].zname+'"><span>'+leftServiceJson[i].goodslist[j].zname+'</span></a></li>';
             			}
             			leftServiceJsonHtml=leftServiceJsonHtml+liString+	'</ul>'+
       					'</div>'+
       				'</li>';
             		$("#banner_menu_wrap").append(leftServiceJsonHtml);
         		}
         		
         	}
         	//菜单栏的显示
         	$("#banner_menu_wrap").children().hover(function(){
         	    $(this).css("background","#ff6700");
         	    $(this).children(".banner_menu_content").css("border","1px solid #F0F0F0").show();
         	},function(){
         	    $(this).css("background","none");
         	    $(this).children(".banner_menu_content").css("border","0px solid #F0F0F0").hide();
         	});
        }
   });  
});
