package com.tony.model;
//评论实体
public class Comment {
	private int zid;//评论id
	private int zlbid;//评论所属大类别 是服务还是二手
	private int zlbxxid;//评论所属小类别 具体到是商品售出还是收回
	private int zuserid;//评论发布的用户id
	private String zcomment;//评论内容
	private int zstate;//评论状态
	private String zusername;//发布者用户名
	private String zuserimg;//发布者头像
	private String zdate;//发布时间
	
	public String getZdate() {
		return zdate;
	}
	public void setZdate(String zdate) {
		this.zdate = zdate;
	}
	public String getZusername() {
		return zusername;
	}
	public void setZusername(String zusername) {
		this.zusername = zusername;
	}
	public String getZuserimg() {
		return zuserimg;
	}
	public void setZuserimg(String zuserimg) {
		this.zuserimg = zuserimg;
	}
	public int getZid() {
		return zid;
	}
	public void setZid(int zid) {
		this.zid = zid;
	}
	public int getZlbid() {
		return zlbid;
	}
	public void setZlbid(int zlbid) {
		this.zlbid = zlbid;
	}
	public int getZlbxxid() {
		return zlbxxid;
	}
	public void setZlbxxid(int zlbxxid) {
		this.zlbxxid = zlbxxid;
	}
	public int getZuserid() {
		return zuserid;
	}
	public void setZuserid(int zuserid) {
		this.zuserid = zuserid;
	}
	public String getZcomment() {
		return zcomment;
	}
	public void setZcomment(String zcomment) {
		this.zcomment = zcomment;
	}
	public int getZstate() {
		return zstate;
	}
	public void setZstate(int zstate) {
		this.zstate = zstate;
	}
	
	
}
