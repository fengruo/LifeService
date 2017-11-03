<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<jsp:include page="/jsp/front/head.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>专题报道</title>
<link href="${pageContext.request.contextPath }/jsp/front/css/ztbd.css"
	rel="stylesheet" type="text/css"></link>
<script src="${pageContext.request.contextPath }/jsp/front/js/shfwmenu.js"></script>
</head>
<body>
	<div class="container col-xs-12">
			<div class="main col-xs-12">
			<div class="col-xs-9 main_center_ztbd curved_box" id="main_center_ztbd" style="">
			<div class="col-xs-12 text-left"><a href="${pageContext.request.contextPath }/jsp/front/ztbd/ztbd.jsp" style="text-decoration: none;"><h4>专题报告 	&gt;&gt;</h4></a></div>
			<div class="col-xs-12 " id="showReport" style="width: 800px;">
			</div>
			</div>
			<div class="col-xs-3 main_ztbd_right" id="main_ztbd_right" style="width: 250px;">
				<div><img src="${pageContext.request.contextPath }/jsp/front/images/ad02.jpg" style="width: 250px;"></div>
				<div class="ztbd_today">
				<div class="ztbd_today_span">今日热门<em>Hot</em></div>
				<div class="ztbd_today_hot" id="ztbd_today_hot" style="">
					
				</div>
				</div>
				<div><img src="${pageContext.request.contextPath }/jsp/front/images/ad02.jpg" style="width: 250px;"></div>
			</div>
	</div>
	</div>
	<script type="text/javascript">
		$("#showReport").load("${pageContext.request.contextPath }/jsp/front/ztbd/showReport.jsp");
		$.ajax({  
		  type: "POST",      
        url: "${pageContext.request.contextPath}/report_hotReport.tony",      
        data: {"len":12},  
        dataType : "json",
        success: function(msg){
        	var reportList=eval(msg);         	
        	//alert(reportList[0].zid);
        	var ztbd_today_hothtml='<ul id="ztbd_today_hot_ul">';
        	for ( var num in reportList) {
        	ztbd_today_hothtml=ztbd_today_hothtml+'<li><img src="${pageContext.request.contextPath }/jsp/front/images/li_icon.png""><a href="report_toreportPage.tony?report.zid='+reportList[num].zid+'" title="点击查看详情" >'+reportList[num].ztitle+'</a></li>';
			}
			$("#ztbd_today_hot").html(ztbd_today_hothtml);
        }
   		}); 
	</script>
	<jsp:include page="/jsp/front/bottom.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath }/jsp/front/js/gudingnav.js"></script>
	<script src="${pageContext.request.contextPath }/jsp/front/js/ztbd.js"></script>
</body>
</html>
