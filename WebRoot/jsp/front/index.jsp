<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<jsp:include page="/jsp/front/head.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>生活服务网首页</title>
<link href="${pageContext.request.contextPath }/jsp/front/css/index.css"
	rel="stylesheet" type="text/css"></link>
<link href="${pageContext.request.contextPath }/jsp/front/css/calendar.css"
	rel="stylesheet" type="text/css"></link>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/jsp/front/js/index.js"></script>
</head>
<body>
	<div class="container col-xs-12">
		<div class="main col-xs-12">
		<div class="col-xs-3  main_left">
		<div id="main_left">
		</div>
		<div style="height: 700px;">
		
		</div>
		</div>
		<div class="col-xs-6 main_center_ztbd" id="main_center_ztbd">
		<p>
			<span class="col-xs-8">专题报道 &nbsp;<img alt="" src="${pageContext.request.contextPath }/jsp/images/left/source_current.png"></span>
			<span class="col-xs-4"><a href="javascript:void(0)" title="更多专题报道">更多  &gt;&gt;</a></span>
		</p>
		<div class="clear_both"></div>
		<div class="col-xs-12" id="main_center_ztbd_news">
		
		</div>
		<div class="clear_both"></div>
		</div>
		<div class="col-xs-3">
			 <div class='calendar' id='calendar'></div>
			 <div class="clear_both"></div>
		</div>
		<div class="col-xs-9 main_center_tjfw">
		<p>
			<span class="col-xs-8">推荐服务 &nbsp;<img alt="" src="${pageContext.request.contextPath }/jsp/images/left/source_current.png"></span>
			<span class="col-xs-4"><a href="javascript:void(0)" title="更多服务">更多  &gt;&gt;</a></span>
		</p>
			<div class="col-xs-12" id="main_center_tjfw_lbxx">
			
				<!-- 左右滚动部分 begin -->
				<div class="scroll">
				<div class="picbox">
				<ul class="piclist mainlist" id="main_center_tjfw_lbxx_1">
				
				</ul>
		        <ul class="piclist swaplist" id="main_center_tjfw_lbxx_2">
		                    
		       	</ul>
				</div>
				<div class="og_prev"></div>
				<div class="og_next"></div>
				</div>
				<!-- 左右滚动部分 end -->			
											
			</div>
		</div>
		<div class="col-xs-9 main_center_essp">
		<p>
			<span class="col-xs-8">热门二手 &nbsp;<img alt="" src="${pageContext.request.contextPath }/jsp/images/left/source_current.png"></span>
			<span class="col-xs-4"><a href="javascript:void(0)" title="更多热门二手商品">更多  &gt;&gt;</a></span>
		</p>
			<div class="col-xs-12" id="main_center_tjfw_essp">
								
								
								
											
			</div>
		</div>
		<div class="col-xs-12 main_center_axhd">
			<p>
				<span class="col-xs-8">最新活动 &nbsp;<img alt="" src="${pageContext.request.contextPath }/jsp/images/left/source_current.png"></span>
				<span class="col-xs-4"><a href="javascript:void(0)" title="更多爱心活动 ">更多  &gt;&gt;</a></span>
			</p>
				<div class="col-xs-12" id="main_center_axhd_info">
				
				</div>
		</div>
		
		</div>
	</div>
	
	<jsp:include page="/jsp/front/bottom.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath }/jsp/front/js/calendar.js"></script>
	<script src="${pageContext.request.contextPath }/jsp/front/js/carousel.js"></script>
	<script src="${pageContext.request.contextPath }/jsp/front/js/gudingnav.js"></script>
	<script src="${pageContext.request.contextPath }/jsp/front/js/index_effect.js"></script>
	<script type="text/javascript">
		function thistrclick(obj){
		var zid=$(obj).attr("id");
		window.location.href="${pageContext.request.contextPath }/report_toreportPage.tony?report.zid="+zid;
	}
	</script>
</body>
</html>
