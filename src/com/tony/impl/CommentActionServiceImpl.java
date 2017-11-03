package com.tony.impl;

import java.util.ArrayList;
import java.util.List;

import com.tony.database.ConnData;
import com.tony.method.CommentActionService;
import com.tony.method.UsualStrMethod;
import com.tony.model.Comment;
import com.tony.model.GoodsInfo;

public class CommentActionServiceImpl implements CommentActionService {
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

	public List<Comment> queryCommentList(int pageid, int goodsid) {
		List<Comment> commentList=new ArrayList<Comment>();
		String sqlStr="select tbuser.zusername,tbuser.zuserimg,zcomment,zdate from tbcomment,tbuser where tbuser.zid=tbcomment.zuserid and zlbid="+pageid+" and zlbxxid="+goodsid+" and tbcomment.zstate=1";
		List<String[]> lt=connData.findResult(sqlStr, 4);
		for (String[] strings : lt) {
			Comment comment=new Comment();
			comment.setZusername(strings[0]);
			comment.setZuserimg(strings[1]);
			comment.setZcomment(strings[2]);
			comment.setZdate(strings[3]);
			commentList.add(comment);
			}
		return commentList;
	}

	public String insertComment(Comment comment) {
		try{
			String data=usualStrMethod.getDateFormatAll();
			String sql="insert into tbcomment(zlbid,zlbxxid,zuserid,zcomment,zdate,zstate) values("+comment.getZlbid()+","+comment.getZlbxxid()+","+comment.getZuserid()+",'"+comment.getZcomment()+"','"+data+"',"+1+")";
			int flag=connData.insertDataOne(sql);
			if(flag>0){
				return "添加成功";
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "添加记录失败";
	}
}
