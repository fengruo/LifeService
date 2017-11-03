package com.tony.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.tony.method.UserActionService;
import com.tony.method.UsualStrMethod;
import com.tony.model.User;
/*
 * 用户处理类，用户注册，修改，查询
 * author:Tony.Lee
 * */
public class UserAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UsualStrMethod usualStrMethod;
	private UserActionService userActionService;
	private InputStream textStream;
	private User user;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	//==========================================================================
	//注册
	public String userReg(){
		String flag=null;
		HttpServletRequest request = ServletActionContext.getRequest();
		String zuserimg=usualStrMethod.checkRequestStr(request, "zuserimg");
		user.setZuserimg(zuserimg);
		if(userActionService.regUser(user)){
			HttpSession session=request.getSession();
			session.setAttribute("userid",userActionService.returnUserid(user.getZusername()));
			session.setAttribute("loginname", user.getZusername());
			session.setAttribute("username", user.getZname());
			flag="regSuccess";
		}else{
			flag="regFalse";
		}
		//System.out.println(user.getZusername());	
		//System.out.println(zuserimg);	
		return flag;
	}
	//验证用户是否存在
	public String checkUserIshave(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String username=usualStrMethod.checkRequestStr(request, "username");
		String flag="";
		try {
			if(userActionService.checkUserIshave(username)){
				flag="{\"flag\":\"用户名已存在\"}";
			}else{
				flag="{\"flag\":\"用户名可用\"}";
			}
			textStream=new ByteArrayInputStream(flag.getBytes("utf-8"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}
	public String loginUser(){
		//System.out.println(user.getZusername());
		//System.out.println(user.getZemail());
		//System.out.println(user.getZpassword());
		String flag="";
		String nicheng="";
		nicheng=userActionService.loginUser(user);
		try {
			if(nicheng!=null){
				HttpServletRequest request = ServletActionContext.getRequest();
				HttpSession session=request.getSession();
				session.setAttribute("userid",userActionService.returnUserid(user.getZusername()));
				session.setAttribute("loginname", user.getZusername());
				session.setAttribute("username", nicheng);
				flag="{\"flag\":\"登陆成功\"}";
			}else{
				flag="{\"flag\":\"登陆失败，请核对账户密码\"}";
			}
			textStream=new ByteArrayInputStream(flag.getBytes("utf-8"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}
	//=========================================================================
	public UsualStrMethod getUsualStrMethod() {
		return usualStrMethod;
	}
	public void setUsualStrMethod(UsualStrMethod usualStrMethod) {
		this.usualStrMethod = usualStrMethod;
	}
	public UserActionService getUserActionService() {
		return userActionService;
	}
	public void setUserActionService(UserActionService userActionService) {
		this.userActionService = userActionService;
	}
	public InputStream getTextStream() {
		return textStream;
	}
	public void setTextStream(InputStream textStream) {
		this.textStream = textStream;
	}
}
