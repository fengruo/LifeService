<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
   
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>专题报道发布</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
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
    </style>
    </head>
    <body>
<div class="container ztbdfb_div">
    <div class="col-xs-12 text-center"><h3>专题报道内容发布</h3></div>
    <div style="clear:both;"></div>
    <div>
    
    <form>
    <table>
    	<tr><td class="left_title"><span>标题：</span></td>
    	<td><input type="text" maxlength="25" id="ztitle" name="" value="">
    	<input type="hidden" maxlength="25" id="zfbname" value="管理员"></td></tr>
    	<tr><td class="left_title"><span>分类：</span></td><td>
		<select id="zcategoryid">
		<option value="1">时事新闻</option>
		</select>
		</td></tr>
	   	<tr><td class="left_title"><span>内容：</span></td><td></td></tr>
	   	<tr><td colspan="2"><TEXTAREA id="editor" name="mycontent"></TEXTAREA> </td> </tr>
		<tr><td colspan="2"><input type="button" value="提交保存" onclick="formsubbc()"><input type="button" value="立即发表" onclick="formsubfb()"></td></tr>
	</table>
	</form>
	</div>
	</div>
<script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
    function formsubbc(){
    	var jsonform={
    		"ztitle":$("#ztitle").val(),
    		"zfbname":$("#zfbname").val(),
    		"zcategoryid":$("#zcategoryid").val(),
    		"zconttent":ue.getContent(),
    		"zfbdate":null,
    		"zfbstate":0
    	};
    	$.ajax({url:"${pageContext.request.contextPath }/report_insertOneReport.tony",
			data:jsonform,
			type:"post",
			dataType:"html",
			success:function(msg){
				alert(msg+"，尚未发布");
				//window.location.href="${pageContext.request.contextPath }/report_toPreviewReport.tony";
  			}
		});
    }
    function formsubfb(){
    	var jsonform={
    		"ztitle":$("#ztitle").val(),
    		"zfbname":$("#zfbname").val(),
    		"zcategoryid":$("#zcategoryid").val(),
    		"zconttent":ue.getContent(),
    		"zfbdate":getNowFormatDate(),
    		"zfbstate":1
    	};
    	$.post("${pageContext.request.contextPath }/report_insertOneReport.tony",
			jsonform,
		 function(msg){
    		alert(msg+"，已经发布");
    		//window.location.href="${pageContext.request.contextPath }/report_toPreviewReport.tony";
  			},
  		"html"
			);
		}
		
		function getNowFormatDate() {
    		var date = new Date();
   			var seperator1 = "-";
		    var seperator2 = ":";
		    var month = date.getMonth() + 1;
		    var strDate = date.getDate();
		    if (month >= 1 && month <= 9) {
		        month = "0" + month;
		    }
		    if (strDate >= 0 && strDate <= 9) {
		        strDate = "0" + strDate;
		    }
		    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
		            + " " + date.getHours() + seperator2 + date.getMinutes()
		            + seperator2 + date.getSeconds();
		    return currentdate;
}
</script>
</body>
</html>