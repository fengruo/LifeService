package com.tony.model;

public class Servelist {
	private int zid;
	private int zserviceid;
	private String btitle;
	public int getZid() {
		return zid;
	}
	public void setZid(int zid) {
		this.zid = zid;
	}
	public int getZserviceid() {
		return zserviceid;
	}
	public void setZserviceid(int zserviceid) {
		this.zserviceid = zserviceid;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	@Override
	public String toString() {
		return "Servelist [zid=" + zid + ", zserviceid=" + zserviceid
				+ ", btitle=" + btitle + "]";
	}
	
}
