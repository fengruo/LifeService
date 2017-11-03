package com.tony.method;

import com.tony.model.User;



public interface UserActionService {
	//用户注册
	public boolean regUser(User user);
	//检查用户名是否存在
	public boolean checkUserIshave(String username);
	//用户登录
	public String loginUser(User user);
	//根据用户名返回用户id
	public int returnUserid(String username);
}
