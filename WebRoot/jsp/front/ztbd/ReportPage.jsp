<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<jsp:include page="/jsp/front/head.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>专题报道</title>
<link href="${pageContext.request.contextPath }/jsp/front/css/ztbd.css"
	rel="stylesheet" type="text/css"></link>
<style type="text/css">
        .ztbdfb_div{
            width:800px;
        }
        .ztbdfb_div .left_title{
        	text-align:right;
        	width:70px;
        }
       	table tr{
        	height: 35px;
        }
        .main_center_ztbd_info{
        	border-bottom: 1px #BFB4B4 solid;
        }
    </style>
</head>
<body>
	<div class="container col-xs-12">
			<div class="main col-xs-12">
			<div class="col-xs-9 main_center_ztbd curved_box" id="main_center_ztbd">
			<div class="col-xs-12 text-left"><a class="col-xs-2 text-right" href="${pageContext.request.contextPath }/jsp/front/ztbd/ztbd.jsp" style="text-decoration: none;"><h4>专题报告 	&gt;&gt;</h4></a><em class="col-xs-5 text-left" style="line-height: 40px;margin-left: -30px;">专题报道详情</em></div>
			<div class="col-xs-12 text-center main_center_ztbd_title"><h3 id="ztitle"></h3></div>
			<div class="col-xs-12 text-right main_center_ztbd_info"><span>来源:</span><span id="zfbname"></span>&nbsp;&nbsp;&nbsp;<span>发布时间:</span><span id="zfbdate"></span></div>
			<div class="col-xs-12 main_center_ztbd_content" style="width: 800px;" id="zcontent">
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
	<input type="hidden" value="${report.zid}" id="report_zid">
	<script type="text/javascript">
	$.ajax({
	url:"${pageContext.request.contextPath }/report_reportPage.tony",
	data:{"zid":$("#report_zid").val()},
	datatype:"json",
	type:"post",
	success:function(msg){
		var report=JSON.parse(msg);
		$("#ztitle").html(report.ztitle);
		$("#zfbname").html(report.zfbname);
		$("#zfbdate").html(report.zfbdate);
		$("#zcontent").html(report.zcontent);
	}
	});
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
