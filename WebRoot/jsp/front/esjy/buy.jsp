<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<jsp:include page="/jsp/front/head.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>商品购买</title>
<link href="${pageContext.request.contextPath }/jsp/front/css/sell.css"
	rel="stylesheet" type="text/css"></link>
<link href="${pageContext.request.contextPath }/jsp/front/css/esmenu.css"
	rel="stylesheet" type="text/css"></link>
<script src="${pageContext.request.contextPath }/jsp/front/js/spmenu.js"></script>
<style>
/*右侧广告*/
.dual_d {
	width: 190px;
	height: 282px;
	background-image:
		url(${pageContext.request.contextPath }/jsp/front/images/dual_display.png);
}

.zzyls {
	width: 190px;
	height: 390px;
	background-image:
		url(${pageContext.request.contextPath }/jsp/front/images/ganji_tip.png);
	margin-bottom: 10px;
}


</style>
</head>
<body>
	<div class="container col-xs-12 ">
			<div class="col-xs-12">
			<div class="col-xs-3 main_left" id="main_left">
			<div id="big_banner_wrap">
			 <ul id="banner_menu_wrap">
			 </ul>
			 </div>
			 </div>
			<div class="col-xs-9 main_center_xyfw" id="main_center_xyfw">
			<div class="col-xs-3 title_line"><h4>热门商品</h4></div>
			<div class="col-xs-6 title_line">
						<div class="input-group input_line">
      					<input type="text" class="form-control" placeholder="请输入要搜索的商品关键字...">
      					<span class="input-group-btn">
        				<button class="btn btn-default" type="button">搜索</button>
      					</span>
    					</div>
			</div>
			<div class="col-xs-3 title_line"><h4><a href="${pageContext.request.contextPath }/jsp/front/esjy/buyform.jsp">发布商品信息需求</a></h4></div>
			<div class="col-xs-12"  id="main_center_esjy_info">
					
			
			</div>
			
			</div>
			<div class="col-xs-12">
			<!-- 网站 -->
				
				<div id="main" class="clearfix">
					<div class="mainleft" id="infolist">
						<div class="infocon">
							<table class="tbimg" cellspacing="0" cellpadding="0">
								<colgroup>
									<col class="w150">
									<col>
									<col class="w100">
								</colgroup>
								<tbody id="goods_for_info">
									<!-- 商品1号 -->
									
								</tbody>
								
							</table>
						</div>

						<!-- 分页 -->
						<div class="pageBox">
							<div id="pageTool"></div>
						</div>
					</div>
				<div class="mainright">
					<div id="brand_tcrm"></div>
					<div class="dual_d"></div>
					<div class="zzyls"></div>
				</div>
				</div>
				<!-- 网站 -->
			</div>
	</div>
	</div>
	<div class="col-xs-12" style="height: 15px;">&nbsp;</div>
	<input type="hidden" id="spinfoFrom" value="${param.spinfoFrom}">
	<input type="hidden" id="${param.zidfrom}" class="zidfrom" value="${param.zidfrom}">
	<jsp:include page="/jsp/front/bottom.jsp"></jsp:include>
	<script type="text/javascript" src="${pageContext.request.contextPath }/jsp/front/esjy/js/query.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/jsp/front/esjy/js/paging.js"></script>
	<script src="${pageContext.request.contextPath }/jsp/front/js/buy.js"></script>
	<script src="${pageContext.request.contextPath }/jsp/front/js/right_top.js"></script>
	<script src="${pageContext.request.contextPath }/jsp/front/js/index_effect.js"></script>
	<script src="${pageContext.request.contextPath }/jsp/front/js/gudingnav.js"></script>
	<script type="text/javascript">
	var spinfoFrom=$("#spinfoFrom").val();
	var zidfrom=$(".zidfrom");
	if(spinfoFrom==''){
		$.ajax({
			url:"${pageContext.request.contextPath }/goods_countGoods.tony",
			data:{"condition":" "},
			dataType:"json",
			type:"post",
			success:function(msg){
					var pageInfo={"pagesize":"8","count":msg};
					$.ajax({
						url:"${pageContext.request.contextPath }/goods_queryGoodsFenYe.tony",
						data:{"nowpage":"1","pagesize":"8","shopList":" "},
						dataType:"json",
						type:"post",
						success:function(msg){
							var goodsInfoJsonMsg=eval(msg);
							insertGoods(goodsInfoJsonMsg);
						}
					});
					$('#pageTool').Paging({
								pagesize:pageInfo.pagesize,
								count:pageInfo.count,
								callback:function(page,size,count){
									$.ajax({
											url:"${pageContext.request.contextPath }/goods_queryGoodsFenYe.tony",
											data:{"nowpage":page,"pagesize":size,"shopList":" "},
											dataType:"json",
											type:"post",
											success:function(msg){
												var goodsInfoJsonMsg=eval(msg);
												insertGoods(goodsInfoJsonMsg);
											}
										});
								//alert('当前第 ' +page +'页,每页 '+size+'条,总页数：'+count+'页');
							}});
							
			}
		});
	}
	function goodsListFenye(obj){
				//alert($(obj).attr("id"));
				$("#pageTool").html('');
				document.body.scrollTop=500;
				$.ajax({
				url:"${pageContext.request.contextPath }/goods_countGoods.tony",
				data:{"condition":" where zshoplistid="+$(obj).attr("id")},
				dataType:"json",
				type:"post",
				success:function(msg){
						var pageInfo={"pagesize":"8","count":msg};
						$.ajax({
							url:"${pageContext.request.contextPath }/goods_queryGoodsFenYe.tony",
							data:{"nowpage":"1","pagesize":"8","shopList":"and zshoplistid="+$(obj).attr("id")},
							dataType:"json",
							type:"post",
							success:function(msg){
								var goodsInfoJsonMsg=eval(msg);
								insertGoods(goodsInfoJsonMsg);
							}
						});
						$('#pageTool').Paging({
									pagesize:pageInfo.pagesize,
									count:pageInfo.count,
									callback:function(page,size,count){
										$.ajax({
												url:"${pageContext.request.contextPath }/goods_queryGoodsFenYe.tony",
												data:{"nowpage":page,"pagesize":size,"shopList":" "},
												dataType:"json",
												type:"post",
												success:function(msg){
													var goodsInfoJsonMsg=eval(msg);
													insertGoods(goodsInfoJsonMsg);
												}
											});
									//alert('当前第 ' +page +'页,每页 '+size+'条,总页数：'+count+'页');
								}});
								
				}
			});
	}
	function insertGoods(msg){
			var goodsInfoJson=msg;
			var goodsHtml="";
			for ( var i in goodsInfoJson) {
				goodsHtml=goodsHtml+'<tr class="zzinfo">'+
											'<td class="img"><a id="zid'+goodsInfoJson[i].zid+'"'+
												'href="/LifeService/goods_queryGoodsOne.tony?goodsId='+goodsInfoJson[i].zid+'"'+
												'target="_blank"> <img class="js-lazy-load" id="imgUrl'+goodsInfoJson[i].zid+'"'+
													'src="'+goodsInfoJson[i].zspimg1+'"'+
													'data-original=""'+
													'alt="'+goodsInfoJson[i].zspname+'" style="display: block;"> </a>'+
											'</td>'+
											'<td class="t" style="width: 580px;"><a id="zid'+goodsInfoJson[i].zid+'_'+goodsInfoJson[i].zid+'"'+
												'href="/LifeService/goods_queryGoodsOne.tony?goodsId='+goodsInfoJson[i].zid+'"'+
												'target="_blank" class="t">'+goodsInfoJson[i].zspname+'</a> <i'+
												'class="clear"></i> <span class="pricebiao">￥<span'+
													'class="price" id="price'+goodsInfoJson[i].zid+'">'+goodsInfoJson[i].zspprice+'</span> </span> <i class="clear"></i>'+
											'<div class="clear"></div>'+
												'<div class="quot"></div> 商品描述：<span class="desc" id="desc'+goodsInfoJson[i].zid+'">'+goodsInfoJson[i].zspdescripe+'</span>'+
												'<i class="clear"></i> <br>'+
											'<span class="fl"> <span> 来源地区 </span> <span> ： </span><span id="place'+goodsInfoJson[i].zid+'">'+goodsInfoJson[i].zaddress+
														 '</span> </span> <i class="clear"></i></td>'+
											'<td class="tc">'+
												'<div class="qq_attest">'+
													'<p class="img_attest">'+
														'<img id="userImgUrl'+goodsInfoJson[i].zid+'"'+
															'src="'+goodsInfoJson[i].zuserimg+'">'+
													'</p>'+
													'<p class="name_add" id="userName'+goodsInfoJson[i].zid+'">'+goodsInfoJson[i].zusername+'</p>'+
													'<p class="name_add">'+
														'来自<span class="zz"> 生活服务网 </span>'+
													'</p>'+
												'</div>'+
											'</td>'+
										'</tr>';
			}
			$("#goods_for_info").html(goodsHtml);
		}
		if(spinfoFrom){
			$("#pageTool").html('');
			goodsListFenye(zidfrom);
		}
	</script>
</body>
</html>
