<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<jsp:include page="/jsp/front/head.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>出售表单</title>
<link href="${pageContext.request.contextPath }/jsp/front/css/xyfw.css"
	rel="stylesheet" type="text/css"></link>
</head>
<body>
	<div class="container col-xs-12 ">
			<div class="main_all col-xs-12">
			<div class="col-xs-12 main_center_xyfw" id="main_center_fw">
			<div class="col-xs-3 title_line"><h4>出售二手商品</h4></div>
			<div class="col-xs-3 title_line"></div>
			<div class="col-xs-6 title_line">
						<div class="input-group input_line">
      					<input type="text" class="form-control" placeholder="请输入要搜索的商品关键字...">
      					<span class="input-group-btn">
        				<button class="btn btn-default" type="button">搜索</button>
      					</span>
    					</div>
			</div>
			<div class="col-xs-12"  id="main_center_tgfw" style="border: 1px red solid;height: 400px;">
				商品类别
				商品名称：
				发布者id  ：隐藏
				价格
				图片上传
				简要说明
				详细说明
			</div>
			</div>
	</div>
	</div>
	<div class="col-xs-12" style="height: 15px;">&nbsp;</div>
	<jsp:include page="/jsp/front/bottom.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath }/jsp/front/js/right_top.js"></script>
	<script src="${pageContext.request.contextPath }/jsp/front/js/gudingnav.js"></script>
	<script type="text/javascript">
	
	
	
	</script>
</body>
</html>
