package com.tony.model;

import java.util.List;

public class Serve {
	private int zid;
	private String btitle;
	private List<Servelist> Servelist;
	public int getZid() {
		return zid;
	}
	public void setZid(int zid) {
		this.zid = zid;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public List<Servelist> getServelist() {
		return Servelist;
	}
	public void setServelist(List<Servelist> servelist) {
		Servelist = servelist;
	}
	@Override
	public String toString() {
		return "Serve [zid=" + zid + ", btitle=" + btitle + ", Servelist="
				+ Servelist + "]";
	}
	
}
