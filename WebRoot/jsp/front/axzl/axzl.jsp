<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<jsp:include page="/jsp/front/head.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>爱心助力</title>
<link href="${pageContext.request.contextPath }/jsp/front/css/axzl.css"
	rel="stylesheet" type="text/css"></link>
</head>
<body>
	<div class="container col-xs-12 ">
			<div class="main_all col-xs-12">
			<div class="col-xs-12 main_navmain" id="main_axzl_main" style="">
			<div style="clear:both;"></div>
				<div id="big_banner_wrap">
					 <div id="big_banner_pic_wrap">
						 <ul id="big_banner_pic">
							 
						 </ul>
					 </div>
						 <div id="big_banner_change_wrap">
							 <div id="big_banner_change_prev">&lt;</div>
							 <div id="big_banner_change_next">&gt;</div>
						 </div>
 					</div>
			</div>
			<div style="clear:both;"></div>
			<div class="col-xs-12 main_center_axzl" id="main_center_xyfw" style="border: 1px red solid;height: 400px;margin-top:5px;">
			<h4>这里是详细信息展示模块</h4>
			</div>
			</div>
	</div>
	<div class="col-xs-12" style="height: 15px;">&nbsp;</div>
	<jsp:include page="/jsp/front/bottom.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath }/jsp/front/js/axzl.js"></script>
	<script src="${pageContext.request.contextPath }/jsp/front/js/right_top.js"></script>
	<script src="${pageContext.request.contextPath }/jsp/front/js/gudingnav.js"></script>
</body>
</html>
