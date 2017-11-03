package com.tony.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.tony.method.ReportActionService;
import com.tony.method.UsualStrMethod;
import com.tony.model.Report;

public class ReportAction  extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UsualStrMethod usualStrMethod;
	private InputStream textStream;
	private ReportActionService reportActionService;
	
	public UsualStrMethod getUsualStrMethod() {
		return usualStrMethod;
	}

	public void setUsualStrMethod(UsualStrMethod usualStrMethod) {
		this.usualStrMethod = usualStrMethod;
	}

	public InputStream getTextStream() {
		return textStream;
	}

	public void setTextStream(InputStream textStream) {
		this.textStream = textStream;
	}

	public ReportActionService getReportActionService() {
		return reportActionService;
	}

	public void setReportActionService(ReportActionService reportActionService) {
		this.reportActionService = reportActionService;
	}
	//插入一条专题报道信息
	public String insertOneReport(){
		HttpServletRequest request = ServletActionContext.getRequest();
		Report report=new Report();
		report.setZcontent(usualStrMethod.checkRequestStr(request, "zconttent"));
		report.setZtitle(usualStrMethod.checkRequestStr(request, "ztitle"));
		report.setZfbname(usualStrMethod.checkRequestStr(request, "zfbname"));
		report.setZcategoryid(Integer.parseInt(usualStrMethod.checkRequestStr(request, "zcategoryid")));
		report.setZfbdate(usualStrMethod.checkRequestStr(request, "zfbdate"));
		report.setZfbstate(Integer.parseInt(usualStrMethod.checkRequestStr(request, "zfbstate")));
		try {
			String sb=reportActionService.insertReport(report);
			textStream = new ByteArrayInputStream(sb.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	//进入对应id的专题报道详细页面
	public String reportPage(){
		HttpServletRequest request = ServletActionContext.getRequest();
		int zid=Integer.parseInt(usualStrMethod.checkRequestStr(request, "zid"));
		try {
			Report report=reportActionService.queryOneReport(zid);
			JSONObject json=JSONObject.fromObject(report);
			textStream = new ByteArrayInputStream(json.toString().getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	//查询出对应条数的付费信息进行展示
	public String hotReport(){
		HttpServletRequest request = ServletActionContext.getRequest();
		int len=Integer.parseInt(usualStrMethod.checkRequestStr(request, "len"));
		try {
			List<Report> reportList=reportActionService.queryReportList(len);
			JSONArray json=JSONArray.fromObject(reportList);
			textStream = new ByteArrayInputStream(json.toString().getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	public String toPreviewReport(){
		return "toPreviewReportSuccesss";
	}
	private Report report;
	
	public Report getReport() {
		return report;
	}

	public void setReport(Report report) {
		this.report = report;
	}

	public String toreportPage(){
		return "toreportPageSuccesss";
	}
	
}
