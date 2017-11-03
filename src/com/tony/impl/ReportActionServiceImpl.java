package com.tony.impl;

import java.util.ArrayList;
import java.util.List;

import com.tony.database.ConnData;
import com.tony.method.ReportActionService;
import com.tony.method.UsualStrMethod;
import com.tony.model.Report;

public class ReportActionServiceImpl implements ReportActionService {
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

	public String insertReport(Report report) {
		try{
			String sql="insert into tbztbd(zcategoryid,ztitle,zfbname,zcontent,zfbdate,zfbstate)" +
					" values("+report.getZcategoryid()+",'"+report.getZtitle()+"','"+report.getZfbname()+"','"+report.getZcontent()+"','"+report.getZfbdate()+"',"+report.getZfbstate()+")";
			int flag=connData.insertDataOne(sql);
			if(flag>0){
				return "添加成功";
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "添加记录失败";
	}

	public Report queryOneReport(int zid) {
		Report report=new Report();
		try{
		String sql="select zcategoryid,ztitle,zfbname,zcontent,zfbdate,zfbstate from tbztbd where zid="+zid;
		List<String[]> list=connData.findResult(sql,6);
		for (String[] strings : list) {
			report.setZcategoryname(queryOneReportCategory(Integer.parseInt(strings[0])));
			report.setZtitle(strings[1]);
			report.setZfbname(strings[2]);
			report.setZcontent(strings[3]);
			if(strings[4].length()==0){
				report.setZfbdate("暂未发布");
			}else{
				report.setZfbdate(strings[4]);
			}
			report.setZfbstate(Integer.parseInt(strings[5]));
		}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return report;
	}

	public String queryOneReportCategory(int id) {
	
		String reportCategory="";
		try{
		String sql="select zname from tbztbdcategory where zid="+id;
		List<String[]> list=connData.findResult(sql,1);
		for (String[] strings : list) {
			reportCategory=strings[0];
		}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return reportCategory;
	}

	public List<Report> queryReportList(int len) {
		List<Report> reportList=new ArrayList<Report>();
		String sql="select zid,ztitle,left(zfbdate,10),zcontent from tbztbd where zfbstate=1 order by zmoneystate DESC LIMIT 0,"+len;
		String sql0="set global wait_timeout=50000";
		connData.insertDataOne(sql0);
		List<String[]> list=connData.findResult(sql,4);
		for (String[] strings : list) {
			Report report=new Report();
			report.setZid(Integer.parseInt(strings[0]));
			report.setZtitle(strings[1]);
			report.setZfbdate(strings[2]);
			report.setZcontent(usualStrMethod.removeTagFromText(strings[3]));
			reportList.add(report);
		}
		return reportList;
	}

}
