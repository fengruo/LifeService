<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/js/jquery.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/ueditor/lang/zh-cn/zh-cn.js"></script>
    <link href="${pageContext.request.contextPath }/css/bootstrap.min.css"
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
<div class="container ztbdfb_div">
    <div class="col-xs-12 text-left"><h4>专题报道预览</h4></div>
    <div style="clear:both;"></div>
    <div>
    <div class="col-xs-12 main_center_ztbd curved_box" id="main_center_ztbd">
			<div class="col-xs-12 text-center main_center_ztbd_title"><h3 id="ztitle"></h3></div>
			<div class="col-xs-12 text-right main_center_ztbd_info"><span>来源:</span><span id="zfbname"></span>&nbsp;&nbsp;&nbsp;<span>发布时间:</span><span id="zfbdate"></span></div>
			<div class="col-xs-12 main_center_ztbd_content" style="width: 800px;" id="zcontent">

			</div>
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
	</script>
