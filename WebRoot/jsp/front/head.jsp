<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>生活服务网</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.js"></script>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"
	rel="stylesheet" type="text/css"></link>
<link href="${pageContext.request.contextPath }/jsp/front/css/head.css"
	rel="stylesheet" type="text/css"></link>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/jsp/front/js/head.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-ui-1.8.21.custom.min.js"></script>
<style type="text/css">
	#session1,#session2{
		cursor: pointer;
	}
     
	</style>
</head>

<body>
	<div class="container top_layer">
		<div class="top_layer_01 col-xs-12">
			<div class="col-xs-8">
				<span>您好，欢迎来到生活服务网</span>
				<span id="session1">${session.username !=null ? session.username : '注册' }</span> <span id="session2">${session.username !=null ? '退出' : '登录' }</span> 
				<input type="hidden" id="sessionUserName" value="${session.username}">
				<span id="current_time"></span>
			</div>
			<div class="col-xs-2"></div>
			<div class="col-xs-2">
				<span>设为主页 </span><span class="top_layer_01_right">|</span><span>加入收藏夹</span>
			</div>
		</div>
		<div class="top_layer_02 col-xs-12">
			<div class="col-xs-5">
				<img
					src="${pageContext.request.contextPath }/jsp/front/images/top_layer_02_left.png"
					alt="左图标" />
			</div>
			<div class="col-xs-7 top_layer_02_right">
				<img
					src="${pageContext.request.contextPath }/jsp/front/images/top_layer_02_right.jpg"
					alt="右图标" />
			</div>
			<div class="clear_both"></div>
		</div>
		<div class="top_layer_03 col-xs-12">
			<div class="col-xs-12">
				<ul id="head_title">
					
				</ul>
			</div>
	</div>
	<div class="clear-both"></div>
		<!-- 固定导航栏开始 -->
			<div class="nav col-xs-12">
				<div class="nav-left col-xs-3">
					<span class="nav-left-sp01">云开阳软件科技有限公司</span><br /> <span
						class="nav-left-sp02">TEL：0376-8111918</span>
				</div>
				<div class="nav-center col-xs-5">
					<form method="post" action="" class="nav-center-form">
						<span> <input name="key" type="text"
							class="nav-center-form-in01" autocomplete="off"
							placeholder="请输入要搜索的服务关键词" /> <input type="submit"
							class="nav-center-form-in02" value="搜索" /> </span>
					</form>
				</div>
				<div class="nav-right col-xs-4">
					<img
						src="${pageContext.request.contextPath }/jsp/front/images/top_layer_02_right.jpg"
						alt="右图标" />
				</div>
			</div>
				<!-- 固定导航栏结束 -->
		</div>
		 
		<script type="text/javascript">
		setInterval(function() {
			    var now = (new Date()).toLocaleString();
			    $('#current_time').text(now);
			}, 1000);
		$("#session1").click(function(){
			if($("#sessionUserName").val()==""){
				//注册
				//弹出登录
					$("body").append("<div id='mask'></div>");
					$("#mask").addClass("mask").fadeIn("slow");
					$("#regBox").fadeIn("slow");
				//
				//按钮的透明度
				$("#loginbtn").hover(function () {
					$(this).stop().animate({
						opacity: '1'
					}, 600);
				}, function () {
					$(this).stop().animate({
						opacity: '0.8'
					}, 1000);
				});
				//文本框不允许为空---按钮触发
				
				//关闭
				$(".close_btn").hover(function () { $(this).css({ color: 'black' }); }, function () { $(this).css({ color: '#999' });}).on('click', function () {
					$("#regBox").fadeOut("fast");
					$("#mask").css({ display: 'none' });
				});
			}else{
				alert("个人空间");
			}
		});	
		$("#session2").click(function(){
			if($("#sessionUserName").val()==""){
				//弹出登录
					$("body").append("<div id='mask'></div>");
					$("#mask").addClass("mask").fadeIn("slow");
					$("#LoginBox").fadeIn("slow");
				//
				//按钮的透明度
				$("#loginbtn").hover(function () {
					$(this).stop().animate({
						opacity: '1'
					}, 600);
				}, function () {
					$(this).stop().animate({
						opacity: '0.8'
					}, 1000);
				});
				//文本框不允许为空---按钮触发
				$("#loginbtn").on('click', function () {
					var txtName = $("#txtName").val();
					var txtPwd = $("#txtPwd").val();
					if (txtName == "" || txtName == undefined || txtName == null) {
						if (txtPwd == "" || txtPwd == undefined || txtPwd == null) {
							$(".warning").css({ display: 'block' });
						}
						else {
							$("#warn").css({ display: 'block' });
							$("#warn2").css({ display: 'none' });
						}
					}
					else {
						if (txtPwd == "" || txtPwd == undefined || txtPwd == null) {
							$("#warn").css({ display: 'none' });
							$(".warn2").css({ display: 'block' });
						}
						else {
							$(".warning").css({ display: 'none' });
						}
					}
				});
				//文本框不允许为空---单个文本触发
				$("#txtName").on('blur', function () {
					var txtName = $("#txtName").val();
					if (txtName == "" || txtName == undefined || txtName == null) {
						$("#warn").css({ display: 'block' });
					}
					else {
						$("#warn").css({ display: 'none' });
					}
				});
				$("#txtName").on('focus', function () {
					$("#warn").css({ display: 'none' });
				});
				//
				$("#txtPwd").on('blur', function () {
					var txtName = $("#txtPwd").val();
					if (txtName == "" || txtName == undefined || txtName == null) {
						$("#warn2").css({ display: 'block' });
					}
					else {
						$("#warn2").css({ display: 'none' });
					}
				});
				$("#txtPwd").on('focus', function () {
					$("#warn2").css({ display: 'none' });
				});
				//关闭
				$(".close_btn").hover(function () { $(this).css({ color: 'black' }); }, function () { $(this).css({ color: '#999' });}).on('click', function () {
					$("#LoginBox").fadeOut("fast");
					$("#mask").css({ display: 'none' });
				});
			}else{
				window.location.href="${pageContext.request.contextPath }/jsp/front/quit.jsp";
			}
		});	
		</script>
		<!-- 登陆 -->
		<div id="LoginBox">
        <div class="row1">
          		  登录生活服务网<a href="javascript:void(0)" title="关闭窗口" class="close_btn" id="closeBtn">×</a>
        </div>
        <div class="row">
         		   用户名: <span class="inputBox">
                <input type="text" id="txtName" maxlength="20" placeholder="账号" />
            </span><a href="javascript:void(0)"  title="提示" class="warning" id="warn">*</a>
        </div>
        <div class="row">
         		   密&nbsp;&nbsp;&nbsp;&nbsp;码: <span class="inputBox">
                <input type="text" id="txtPwd" maxlength="20" placeholder="密码" />
            </span><a href="javascript:void(0)" title="提示" class="warning" id="warn2">*</a>
        </div>
        <input type="button" class="loginbtn"  id="loginbtn" value="登陆">
   		</div>
	<!--注册 -->
		<div id="regBox">
        <div class="row1">
          		  注册<a href="javascript:void(0)" title="关闭窗口" class="close_btn" id="closeBtn">×</a>
        </div>
       	<div class="regrow">
       		<form id="regForm" name="regForm" action="${pageContext.request.contextPath}/user_userReg.tony" method="post" enctype="multipart/form-data">
       		<table class="regrowtab">
       		<tr><td>用户名：</td><td><input id="username1" onblur="checkUserIshave(this)" maxlength="20" name="user.zusername" type="text" ><span id="zusernameinfo"></span></td><td rowspan="4" id="showImage"></td></tr>
       		<tr><td>密码：</td><td><input id="pwd1" name="user.zpassword" maxlength="20" type="password"></td></tr>
       		<tr><td>确认密码：</td><td><input id="pwd2" onblur="checkpwd()" maxlength="20" type="password"><span id="zpwdinfo"></span></td></tr>
       		<tr><td>昵称：</td><td><input id="nicheng" maxlength="10" type="text" name="user.zname"></td></tr>
       		<tr><td>手机号：</td><td><input id="phone" maxlength="11" name="user.zphone" type="text" ></td></tr>
       		<tr><td>用户头像：</td><td><input name="fileupload"  id="fileupload" type="file" class="fileinput"  style="font-size: 14px;"></td><td style="padding-left:15px;cursor: pointer;color:#577848;" onclick="uploadImage()">预览</td></tr>
       		<tr><td>邮箱：</td><td><input id="email" maxlength="30" name="user.zemail" type="text" ></td><td></td></tr>
       		<tr><td>用户所在地：</td><td><input id="address" maxlength="50" name="user.zaddress" type="text" ></td><td></td></tr>
       		</table>
       		<input type="hidden" id="filePath" name="zuserimg" value="">
       		<input type="hidden" name="user.ztypeid" value="1"><!-- 用户类别 -->
       	</div>
        <div class="row">
            <a href="#" id="regbtn">注册</a>
        </div>
        </form>
    </div>
    ${flag }
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.form.js"></script>
		<script type="text/javascript">
		function uploadImage() {
				if($("#fileupload").val().length==0){
					alert("请选择图片");
					return false;
				}else{
					var options = {
						url : "${pageContext.request.contextPath}/upload_uploadFile.tony",
						type : "POST",
						dataType : "html",
						success : function(msg) {
							if (msg.indexOf("#") > 0) {
								var data = msg.split("#");
								//$("#tipDiv").html(data[0]);
								$("#showImage").html(
										"<img style='width:90px;height:90px;margin-left:10px;' src='${pageContext.request.contextPath}/upload_showImage.tony?imageUrl="
												+ data[1] + "'/>");
							} else {
								//$("#tipDiv").html(msg);
							}
						},
						error : function(error) {
							alert("上传失败");
						}
					};
					$("#regForm").ajaxSubmit(options);
					return false;
					}
			}
			
			$("#regbtn").click(function(){
				//数据验证
				var pwd1=$("#pwd1").val();
				var pwd2=$("#pwd2").val();
				var username1=$("#username1").val();
				var nicheng=$("#nicheng").val();
				var phone=$("#phone").val();
				var email=$("#email").val();
				var address=$("#address").val();
				
				if(pwd1==""||pwd2==""||username1==""||nicheng==""||phone==""||email==""||address==""){
					alert("输入不能有空");
					return false;
				}
				if($("#fileupload").val().length==0){
					alert("请选择图片");
					return false;
				}else{
					var options = {
						url : "${pageContext.request.contextPath}/upload_uploadFile.tony",
						type : "POST",
						dataType : "html",
						success : function(msg) {
							if (msg.indexOf("#") > 0) {
								var data = msg.split("#");
								//$("#tipDiv").html(data[0]);
								$("#showImage").html(
										"<img style='width:90px;height:90px;margin-left:10px;' src='${pageContext.request.contextPath}/upload_showImage.tony?imageUrl="
												+ data[1] + "'/>");
								$("#filePath").val(data[1]);				
								$("#regForm").submit();
								alert("注册成功");
							} else {
								//$("#tipDiv").html(msg);
								alert("注册失败，请重试");
							}
						},
						error : function(error) {
							alert("上传失败");
						}
					};
					$("#regForm").ajaxSubmit(options);
					return false;
					}
			});
			function checkUserIshave(obj){
				var username=$(obj).val();
				$.ajax({
					url:"${pageContext.request.contextPath}/user_checkUserIshave.tony",
					dataType:"json",
					data:{"username":username},
					type:"post",
					success:function(msg){
						var info=eval(msg);
						//alert(info.flag);
						if(info.flag=="用户名已存在"||username==""||username==null){
							$("#zusernameinfo").attr("style","color:red;");
							$("#zusernameinfo").html(" X");
						}else if(info.flag=="用户名可用"){
							$("#zusernameinfo").attr("style","color:green;");
							$("#zusernameinfo").html(" V");
						}
					},
					error:function(){
						window.location.href="/LifeService/jsp/front/index.jsp";
					}
				});
			}
			function checkpwd(){
				var pwd1=$("#pwd1").val();
				var pwd2=$("#pwd2").val();
				if(pwd1==pwd2){
					$("#zpwdinfo").attr("style","color:green;");
					$("#zpwdinfo").html(" V");
				}else{
					$("#zpwdinfo").attr("style","color:red;");
					$("#zpwdinfo").html(" X");
				}
			}
			$("#loginbtn").click(function(){
				var txtName=$("#txtName").val();
				var txtPwd=$("#txtPwd").val();
				if(txtName==""||txtPwd==""){
					alert("输入不能为空");
				}else{
					$.ajax({
					url:"${pageContext.request.contextPath}/user_loginUser.tony",
					dataType:"json",
					data:{"user.zusername":txtName,"user.zpassword":txtPwd},
					type:"post",
					success:function(msg){
						var logInfo=eval(msg);
						if(logInfo.flag=="登陆成功"){
							window.location.href="${pageContext.request.contextPath}/jsp/front/index.jsp";
						}else{
							alert(logInfo.flag);
						}
					},
					error:function(){
						window.location.href="/LifeService/jsp/front/index.jsp";
					}
					});
				}
			});
		</script>
	</body>
</html>
