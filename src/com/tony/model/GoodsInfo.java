package com.tony.model;

public class GoodsInfo {
	private int zid;//商品id
	private String zspname;//商品名字
	private String zfbdate;//发布日期
	private String zjystate;//交易状态 0已发布 1已交易 2已删除
	private double zspprice;//商品价格
	private String zspimg1;//图片1
	private String zspimg2;//图片2
	private String zspimg3;//图片3
	private String zspdescripe;//商品描述
	private String zspdetail;//商品详细信息
	private String zusername;//发布者用户名
	private String zaddress; //发布者位置
	private String zuserimg;//发布者头像
	private String zphone;//发布者电话
	private int zshipliulan;//商品浏览量
	
	public int getZshipliulan() {
		return zshipliulan;
	}
	public void setZshipliulan(int zshipliulan) {
		this.zshipliulan = zshipliulan;
	}
	public String getZphone() {
		return zphone;
	}
	public void setZphone(String zphone) {
		this.zphone = zphone;
	}
	public String getZusername() {
		return zusername;
	}
	public void setZusername(String zusername) {
		this.zusername = zusername;
	}
	public String getZaddress() {
		return zaddress;
	}
	public void setZaddress(String zaddress) {
		this.zaddress = zaddress;
	}
	public String getZuserimg() {
		return zuserimg;
	}
	public void setZuserimg(String zuserimg) {
		this.zuserimg = zuserimg;
	}
	private User userinfo;
	public int getZid() {
		return zid;
	}
	public void setZid(int zid) {
		this.zid = zid;
	}
	public String getZspname() {
		return zspname;
	}
	public void setZspname(String zspname) {
		this.zspname = zspname;
	}
	public String getZfbdate() {
		return zfbdate;
	}
	public void setZfbdate(String zfbdate) {
		this.zfbdate = zfbdate;
	}
	public String getZjystate() {
		return zjystate;
	}
	public void setZjystate(String zjystate) {
		this.zjystate = zjystate;
	}
	public double getZspprice() {
		return zspprice;
	}
	public void setZspprice(double zspprice) {
		this.zspprice = zspprice;
	}
	public String getZspimg1() {
		return zspimg1;
	}
	public void setZspimg1(String zspimg1) {
		this.zspimg1 = zspimg1;
	}
	public String getZspimg2() {
		return zspimg2;
	}
	public void setZspimg2(String zspimg2) {
		this.zspimg2 = zspimg2;
	}
	public String getZspimg3() {
		return zspimg3;
	}
	public void setZspimg3(String zspimg3) {
		this.zspimg3 = zspimg3;
	}
	public String getZspdescripe() {
		return zspdescripe;
	}
	public void setZspdescripe(String zspdescripe) {
		this.zspdescripe = zspdescripe;
	}
	public String getZspdetail() {
		return zspdetail;
	}
	public void setZspdetail(String zspdetail) {
		this.zspdetail = zspdetail;
	}
	public User getUserinfo() {
		return userinfo;
	}
	public void setUserinfo(User userinfo) {
		this.userinfo = userinfo;
	}
	
	
}
