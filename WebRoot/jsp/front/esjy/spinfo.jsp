<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<jsp:include page="/jsp/front/head.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>商品出售</title>
<link href="${pageContext.request.contextPath }/jsp/front/css/sell.css"
	rel="stylesheet" type="text/css"></link>
<link href="${pageContext.request.contextPath }/jsp/front/css/esmenu.css"
	rel="stylesheet" type="text/css"></link>
<link href="${pageContext.request.contextPath }/jsp/front/esjy/css/shouye.css"
	rel="stylesheet" type="text/css"></link>
<script src="${pageContext.request.contextPath }/jsp/front/js/spmenu.js"></script>
<script src="${pageContext.request.contextPath }/jsp/front/esjy/js/modernizr-custom-v2.7.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var $miaobian=$('.Xcontent08>div');
		var $huantu=$('.Xcontent06>img');
		var $miaobian1=$('.Xcontent26>div');
		$miaobian.mousemove(function(){miaobian(this);});
		$miaobian1.click(function(){miaobian1(this);});
		function miaobian(thisMb){
			for(var i=0; i<$miaobian.length; i++){
				$miaobian[i].style.borderColor = '#dedede';
			}
			thisMb.style.borderColor = '#cd2426';
		
			$huantu[0].src = thisMb.children[0].src;
		}
		function miaobian1(thisMb1){
			for(var i=0; i<$miaobian1.length; i++){
				$miaobian1[i].style.borderColor = '#dedede';
			}
		//		thisMb.style.borderColor = '#cd2426';
			$miaobian.css('border-color','#dedede');
			thisMb1.style.borderColor = '#cd2426';
			$huantu[0].src = thisMb1.children[0].src;
			}
			});
</script>
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
			<div class="col-xs-3 title_line"><h4>商品详情</h4></div>
			<div class="col-xs-3 title_line"></div>
			<div class="col-xs-6 title_line">
						<div class="input-group input_line">
      					<input type="text" class="form-control" placeholder="请输入要搜索的商品关键字...">
      					<span class="input-group-btn">
        				<button class="btn btn-default" type="button">搜索</button>
      					</span>
    					</div>
			</div>
			
			<div class="col-xs-12"  id="main_center_spinfo" style="border: 0px red solid;">
				<div><h4 class="Xcontent20">${goodinfo.zspname }</h4></div>
				<div><span class="Xcontent21">发布时间：${goodinfo.zfbdate }</span><span>&nbsp;</span><span class="Xcontent22"></span></div>
				<div>
				<div class="col-xs-5">
					<div class="Xcontent">
					<ul class="Xcontent01">
						<div class="Xcontent06"><img alt="图片暂无" src="${goodinfo.zspimg1 }"></div>
						<ol class="Xcontent08">
							<div class="Xcontent07"><img alt="图片暂无" src="${goodinfo.zspimg1 }"></div>
							<div class="Xcontent09"><img alt="图片暂无" src="${goodinfo.zspimg2 }"></div>
							<div class="Xcontent10"><img alt="图片暂无" src="${goodinfo.zspimg3 }"></div>
						</ol>
					</ul>
					</div>
				</div>
				<div class="col-xs-7"><table><tr>
				<td class="Xcontent23">商品来源：</td><td class="Xcontent24">${goodinfo.zusername }</td></tr><tr>
				<td class="Xcontent23">商品价格：</td><td class="Xcontent24">￥${goodinfo.zspprice }</td></tr><tr>
				<td class="Xcontent23">联系电话：</td><td class="Xcontent24">${goodinfo.zphone }</td></tr><tr>
				<td class="Xcontent231">联系地址：</td><td class="Xcontent24">${goodinfo.zaddress }</td></tr><tr>
				<td class="Xcontent25" colspan="2">友情提示：</td>
				</tr>
				<tr><td class="Xcontent26" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请确认身份后再进行交易哦！</td></tr>
				<td class="Xcontent27" colspan="2">简要介绍：</td>
				</tr>
				<tr><td class="Xcontent28" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${goodinfo.zspdescripe }</td></tr>
				
				</table></div></div>
				<div class="col-xs-12" class="Xcontent29div">
				<div><span class="Xcontent29">详细说明：</span></div>
				<div><span class="Xcontent30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${goodinfo.zspdetail }</span></div>
				</div>
				<div class="col-xs-12" class="Xcontent31div">
				<span class="Xcontent31">评论:</span>
				<div class="Xcontent32">
							<div class="infocon">
							<table class="tbimg" cellspacing="0" cellpadding="0">
								<colgroup>
									<col class="w100">
									<col>
								</colgroup>
								<tbody id="comment_for_info">
									<!-- 评论1号 -->
									
								</tbody>
							</table>
						</div>
				</div>
				<div>
				<input type="hidden" id="userloginid" value="${session.userid }">
				<textarea rows="5" cols="50" id="commentInfo"  style="width: 806;height: 100px;resize:none;font-size: 16px;"></textarea>
				<input type="button" id="commentUp" value="提交" style="width: 60px;height: 30px;font-size: 16px;margin-left: 747px;">				
				</div>
				</div>
			</div>
			</div>
			
			
	</div>
	</div>
	<input type="hidden" id="goodsid" value="${goodinfo.zid }">
	<div class="col-xs-12" style="height: 15px;">&nbsp;</div>
	<jsp:include page="/jsp/front/bottom.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath }/jsp/front/js/right_top.js"></script>
	<script src="${pageContext.request.contextPath }/jsp/front/js/index_effect.js"></script>
	<script src="${pageContext.request.contextPath }/jsp/front/js/gudingnav.js"></script>
	<script type="text/javascript">
	//根据商品id调取评论
	$.ajax({
		url:"${pageContext.request.contextPath}/comment_queryCommentList.tony",
		dataType:"json",
		data:{"pageid":"4","goodsid":$("#goodsid").val()},
		type:"post",
		success:function(msg){
			var commentjson=eval(msg);
			var commenthtml="";
			for ( var num in commentjson) {
				//alert(commentjson[num].zcomment);
				commenthtml=commenthtml+'<tr class="zzinfo">'+
							'<td class="tc">'+
							'<div class="qq_attest">'+
									'<p class="img_attest">'+
										'<img src="${pageContext.request.contextPath}/upload_showImage.tony?imageUrl='+commentjson[num].zuserimg+'">'+
									'</p>'+
									'<p class="name_add" >'+commentjson[num].zusername+'</p>'+
									'<p class="name_add">'+
										'来自<span class="zz"> 生活服务网 </span>'+
									'</p>'+
							'</div>'+
							'</td>'+
							'<td class="Xcontent34"><span class="Xcontent35">#'+(parseInt(num)+1)+'</span><br>'+commentjson[num].zcomment+
							'</td>'+
							'</tr>';
			}
			$("#comment_for_info").html(commenthtml);
		}
	});
	function goodsListFenye(obj){
				window.location.href="/LifeService/jsp/front/esjy/buy.jsp?spinfoFrom=true&zidfrom="+$(obj).attr("id");
	}
	$("#commentUp").click(function(){
		var commentInfo=$("#commentInfo").val();
		//alert(commentInfo);
		//alert($("#userloginid").val());
		if($("#userloginid").val()==""){
			alert("请登陆后留言");
			window.location.href="/LifeService/jsp/front/index.jsp";
		}else{
			$.ajax({
				url:"${pageContext.request.contextPath}/comment_insertComment.tony",
				dataType:"html",
				data:{"zlbid":"4","zlbxxid":$("#goodsid").val(),"zuserid":$("#userloginid").val(),"zcomment":commentInfo},
				type:"post",
				success:function(msg){
					alert(msg);
					window.location.href="${pageContext.request.contextPath}/goods_queryGoodsOne.tony?goodsId="+$("#goodsid").val();
				},
				error:function(){
				}
			});
		
		}
	});	
	</script>
</body>
</html>
