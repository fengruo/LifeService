<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<jsp:include page="/jsp/front/head.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>提供服务</title>

<link href="${pageContext.request.contextPath }/jsp/front/css/menu.css"
	rel="stylesheet" type="text/css"></link>
	<link href="${pageContext.request.contextPath }/jsp/front/css/xyfw.css"
	rel="stylesheet" type="text/css"></link>
<script src="${pageContext.request.contextPath }/jsp/front/js/shfwmenu.js"></script>
</head>
<body>
	<div class="container col-xs-12 ">
			<div class="main col-xs-12">
			<div class="col-xs-3 main_left" id="main_left">
			<div id="big_banner_wrap">
			 <ul id="banner_menu_wrap">
			 </ul>
			 </div>
			 </div>
			<div class="col-xs-9 main_center_tgfw" id="main_center_tgfw">
			<div class="col-xs-3 title_line"><h4>提供服务</h4></div>
			<div class="col-xs-3 title_line"></div>
			<div class="col-xs-6 title_line">
						<div class="input-group input_line">
      					<input type="text" class="form-control" placeholder="请输入要搜索的服务关键字...">
      					<span class="input-group-btn">
        				<button class="btn btn-default" type="button">搜索</button>
      					</span>
    					</div>
			</div>
			<div class="col-xs-12"  id="main_center_tgfw" style="border: 1px red solid;height: 400px;">
				<table>
				<tr><td>服务分类：</td><td></td></tr>
				<tr><td>服务所在地：</td><td></td></tr>
				<tr><td>服务价格：</td><td></td></tr>
				
				</table>
			
			</div>
			</div>
	</div>
	</div>
	<div class="col-xs-12" style="height: 15px;">&nbsp;</div>
	<jsp:include page="/jsp/front/bottom.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath }/jsp/front/js/right_top.js"></script>
	<script src="${pageContext.request.contextPath }/jsp/front/js/gudingnav.js"></script>
</body>
</html>
