package com.tony.method;

import java.util.List;

import com.tony.model.Report;

public interface ReportActionService {
	//插入专题报道信息
	public String insertReport(Report report);
	//根据id查询一条专题报道信息
	public Report queryOneReport(int zid);
	
	//根据len查询对应条数的报道信息,适用于热门报道，并通过价格排序
	public List<Report> queryReportList(int len);
	//对专题报道分类的处理
	//根据id返回报道分类名
	public String queryOneReportCategory(int id);
}
