package com.tony.model;

import java.util.List;

public class Goods {
	private int zid;
	private String zname;
	private List<Goodslist> goodslist;
	public int getZid() {
		return zid;
	}
	public void setZid(int zid) {
		this.zid = zid;
	}
	public String getZname() {
		return zname;
	}
	public void setZname(String zname) {
		this.zname = zname;
	}
	public List<Goodslist> getGoodslist() {
		return goodslist;
	}
	public void setGoodslist(List<Goodslist> goodslist) {
		this.goodslist = goodslist;
	}
	
}
