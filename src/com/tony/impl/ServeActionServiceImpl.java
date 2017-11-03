package com.tony.impl;

import java.util.ArrayList;
import java.util.List;

import com.tony.database.ConnData;
import com.tony.method.ServeActionService;
import com.tony.method.UsualStrMethod;
import com.tony.model.Serve;
import com.tony.model.Servelist;

public class ServeActionServiceImpl implements ServeActionService {
	private ConnData connData;
	private UsualStrMethod usualStrMethod;
	
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

	public List<Serve> queryServeList() {
		List<Serve> serveList = new ArrayList<Serve>();
		/*
		 * 1.查询 serveList 
		 * 2.查询 servelistList
		 */
		try{
			String sql="select zid,btitle from tbservicetitle";
			List<String[]> lt=connData.findResult(sql, 2);
			for (String[] strings : lt) {
				Serve serve=new Serve();
				serve.setZid(Integer.parseInt(strings[0]));
				serve.setBtitle(strings[1]);
				String sql2="select zid,btitle from tbservicelist where zserviceid="+Integer.parseInt(strings[0]);
				//System.out.println(sql2);
				List<Servelist> servelistList= new ArrayList<Servelist>();
				List<String[]> lt1=connData.findResult(sql2, 2);
				for (String[] strings2 : lt1) {
					Servelist servelist=new Servelist();
					//System.out.println(Integer.parseInt(strings2[0]));
					servelist.setZid(Integer.parseInt(strings2[0]));
					servelist.setBtitle(strings2[1]);
					servelistList.add(servelist);
				}
				serve.setServelist(servelistList);
				serveList.add(serve);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return serveList;
	}
	
}
