package com.tony.impl;

import java.util.List;

import com.tony.database.ConnData;
import com.tony.method.UserActionService;
import com.tony.method.UsualStrMethod;
import com.tony.model.GoodsInfo;
import com.tony.model.User;

public class UserActionServiceImpl implements UserActionService{
	private ConnData connData;
	private UsualStrMethod usualStrMethod;
	
	//===================================================

	public ConnData getConnData() {
		return connData;
	}

	public void setConnData(ConnData connData) {
		this.connData = connData;
	}

	public UsualStrMethod getUsualStrMethod() {
		return usualStrMethod;
	}

	public void setUsualStrMethod(UsualStrMethod usualStrMethod) {
		this.usualStrMethod = usualStrMethod;
	}

	public boolean regUser(User user) {
		try{
			String sql="insert into tbuser(zusername,zpassword,zphone,zemail,zaddress,ztypeid,zuserimg,zname)" +
					" values('"+user.getZusername()+"','"+user.getZpassword()+"','"+user.getZphone()+"','"+user.getZemail()+"','"+user.getZaddress()+"',"+user.getZtypeid()+",'"+user.getZuserimg()+"','"+user.getZname()+"')";
			int flag=connData.insertDataOne(sql);
			if(flag>0){
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean checkUserIshave(String username) {
		String zid="";
		String sqlStr="select zid from tbuser where zusername='"+username+"'";
		List<String[]> lt=connData.findResult(sqlStr, 1);
		for (String[] strings : lt) {
				zid=strings[0];
			}
		if(zid.length()<1){
			return false;
		}else{
			return true;
		}
		
	}

	public String loginUser(User user) {
		String nicheng="";
		String sqlStr="select zname from tbuser where zusername='"+user.getZusername()+"' and zpassword='"+user.getZpassword()+"'";
		List<String[]> lt=connData.findResult(sqlStr, 1);
		for (String[] strings : lt) {
			nicheng=strings[0];
		}
		// TODO Auto-generated method stub
		if(nicheng.length()>0){
			return nicheng;
		}
		return null;
	}

	public int returnUserid(String username) {
		int userid=0;
		String sqlStr="select zid from tbuser where zusername='"+username+"'";
		List<String[]> lt=connData.findResult(sqlStr, 1);
		for (String[] strings : lt) {
			userid=Integer.parseInt(strings[0]);
		}
		// TODO Auto-generated method stub
		return userid;
	}
}
