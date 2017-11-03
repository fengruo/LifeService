package com.tony.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import net.sf.json.JSONArray;



import com.opensymphony.xwork2.ActionSupport;
import com.tony.method.ServeActionService;
import com.tony.method.UsualStrMethod;
import com.tony.model.Serve;

public class ServeAction extends ActionSupport{
	private UsualStrMethod usualStrMethod;
	private ServeActionService serveActionService;
	private InputStream textStream;
	
	public UsualStrMethod getUsualStrMethod() {
		return usualStrMethod;
	}

	public void setUsualStrMethod(UsualStrMethod usualStrMethod) {
		this.usualStrMethod = usualStrMethod;
	}

	public ServeActionService getServeActionService() {
		return serveActionService;
	}

	public void setServeActionService(ServeActionService serveActionService) {
		this.serveActionService = serveActionService;
	}

	public InputStream getTextStream() {
		return textStream;
	}

	public void setTextStream(InputStream textStream) {
		this.textStream = textStream;
	}

	public String queryServeList(){		
	    try {
	    	List<Serve> serveList = serveActionService.queryServeList();
			JSONArray json = JSONArray.fromObject(serveList);
			textStream=new ByteArrayInputStream(json.toString().getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
}
