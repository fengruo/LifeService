package com.tony.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.tony.method.CommentActionService;
import com.tony.method.GoodsActionService;
import com.tony.method.UsualStrMethod;
import com.tony.model.Comment;
import com.tony.model.GoodsInfo;

public class CommentAction extends ActionSupport {
	private CommentActionService commentActionService;
	private UsualStrMethod usualStrMethod;
	private InputStream textStream;
	
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

	public CommentActionService getCommentActionService() {
		return commentActionService;
	}

	public void setCommentActionService(CommentActionService commentActionService) {
		this.commentActionService = commentActionService;
	}
	//查询具体到某条信息对应评论
	public String queryCommentList(){
		HttpServletRequest request = ServletActionContext.getRequest();
		int pageid=Integer.parseInt(usualStrMethod.checkRequestStr(request, "pageid"));
		int goodsid=Integer.parseInt(usualStrMethod.checkRequestStr(request, "goodsid"));
		try {
			List<Comment> commentList=commentActionService.queryCommentList(pageid, goodsid);
			JSONArray json=JSONArray.fromObject(commentList);
			System.out.println(json);
			textStream=new ByteArrayInputStream(json.toString().getBytes("utf-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	//添加评论
	public String insertComment(){
		HttpServletRequest request = ServletActionContext.getRequest();
		Comment comment=new Comment();
		comment.setZlbid(Integer.parseInt(usualStrMethod.checkRequestStr(request, "zlbid")));
		comment.setZlbxxid(Integer.parseInt(usualStrMethod.checkRequestStr(request, "zlbxxid")));
		comment.setZuserid(Integer.parseInt(usualStrMethod.checkRequestStr(request, "zuserid")));
		comment.setZcomment(usualStrMethod.checkRequestStr(request, "zcomment"));
		try {
			String flag=commentActionService.insertComment(comment);
			textStream=new ByteArrayInputStream(flag.getBytes("utf-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	
}
