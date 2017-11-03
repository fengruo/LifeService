// JavaScript Document
var compath="/da/";
//支持Enter键登录
		document.onkeydown = function(e){
			if($(".bac").length==0)
			{
				if(!e) e = window.event;
				if((e.keyCode || e.which) == 13){
					var obtnLogin=document.getElementById("submit_btn")
					obtnLogin.focus();
				}
			}
		}

    	$(function(){
			//提交表单
			$('#submit_btn').click(function(){
				show_loading();
				var myReg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/; //邮件正则
				var one=$("#one").text();
				var two=$("#two").text();
				var j_captcha=$("#j_captcha").val();
				if($('#email').val() == ''){
					show_err_msg('帐号还没填呢！');	
					$('#email').focus();
				}else if($('#password').val() == ''){
					show_err_msg('密码还没填呢！');
					$('#password').focus();
				}else if(j_captcha==""){
					show_err_msg('验证码还没填呢！');	
					$('#j_captcha').focus();
				}else{
					if(Number(j_captcha)==(Number(one)+Number(two))){
						show_msg('正在为您跳转...','/');	
						cookSet();
						$('#login_form').submit();
					}else{
						show_err_msg('验证码填写不正确！');	
						$('#j_captcha').focus();
					}
				}
			});
		});
    	function cookSet(){
    		if($("#j_remember").attr("checked")){
    			SetCookie("curuser",$('#email').val());
    			SetCookie("curpass",$('#password').val());
    			SetCookie("curjz","1");
    		}else{
    			DelCookie("curuser");
    			DelCookie("curpass");
    			DelCookie("curjz");
    		}
    	}