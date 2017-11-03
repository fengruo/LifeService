package com.tony.impl;

import java.util.ArrayList;
import java.util.List;

import com.tony.database.ConnData;
import com.tony.method.GoodsActionService;
import com.tony.method.UsualStrMethod;
import com.tony.model.Goods;
import com.tony.model.GoodsInfo;
import com.tony.model.Goodslist;

public class GoodsActionServiceImpl implements GoodsActionService {
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
	
	public List<Goods> queryGoodsList() {
		
		List<Goods> goodsList = new ArrayList<Goods>();
		try{
		//查询goods表
		String sql = "select zid,zname from tbshoptitle";
		List<String[]> lt=connData.findResult(sql, 2);
		for (String[] strings : lt) {
			Goods goods=new Goods();
			goods.setZid(Integer.parseInt(strings[0]));
			goods.setZname(strings[1]);
			//根据goods 表中id  查询  goodslist表中内容
			String sql1="select zid,zname from tbshoplist where ztitleid="+Integer.parseInt(strings[0]);
			List<Goodslist> GoodslistList=new ArrayList<Goodslist>();
			List<String[]> lt1=connData.findResult(sql1, 2);
			//将goodslist中内容生成List
			for (String[] strings2 : lt1) {
				Goodslist goodlist=new Goodslist();
				goodlist.setZid(Integer.parseInt(strings2[0]));
				goodlist.setZname(strings2[1]);
				GoodslistList.add(goodlist);
			}
			//将数据整合
			goods.setGoodslist(GoodslistList);
			goodsList.add(goods);
		}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return goodsList;
	}

	public List<GoodsInfo> queryGoodsListFY(int nowpage, int pagesize,String shopList) {
		List<GoodsInfo> goodsList=new ArrayList<GoodsInfo>();
		String sqlStr="select tbshopinfo.zid,zspname,zspprice,zspimg1,zspdescripe,zusername,zaddress,zuserimg,zphone from tbshopinfo,tbuser where tbshopinfo.zfbuserid=tbuser.zid and zjystate=0 "+shopList+" order by zsppriority desc limit "+(nowpage-1)*pagesize+","+pagesize;
		List<String[]> lt=connData.findResult(sqlStr, 9);
		for (String[] strings : lt) {
			GoodsInfo good=new GoodsInfo();
			good.setZid(Integer.parseInt(strings[0]));
			good.setZspname(strings[1]);
			good.setZspprice(Double.parseDouble(strings[2]));
			good.setZspimg1(strings[3]);
			good.setZspdescripe(strings[4]);
			good.setZusername(strings[5]);
			good.setZaddress(strings[6]);
			good.setZuserimg(strings[7]);
			good.setZphone(strings[8]);
			goodsList.add(good);
			}
		return goodsList;
	}

	public int countGoods(String condition) {
		int num=0;
		String sqlStr="select count(*) from tbshopinfo "+condition;
		System.out.println(sqlStr);
		List<String[]> lt=connData.findResult(sqlStr, 1);
		for (String[] strings : lt) {
			num=Integer.parseInt(strings[0]);
		}
		return num;
	}

	public GoodsInfo queryOneGoods(int goodsid) {
		GoodsInfo good=new GoodsInfo();
		String sqlStr="select tbshopinfo.zid,zspname,zspprice,zspimg1,zspdescripe,zusername,zaddress,zuserimg,zphone,zspdetail,zspimg2,zspimg3 from tbshopinfo,tbuser where tbshopinfo.zfbuserid=tbuser.zid and tbshopinfo.zid="+goodsid;
		List<String[]> lt=connData.findResult(sqlStr, 12);
		for (String[] strings : lt) {
			good.setZid(Integer.parseInt(strings[0]));
			good.setZspname(strings[1]);
			good.setZspprice(Double.parseDouble(strings[2]));
			good.setZspimg1(strings[3]);
			good.setZspdescripe(strings[4]);
			good.setZusername(strings[5]);
			good.setZaddress(strings[6]);
			good.setZuserimg(strings[7]);
			good.setZphone(strings[8]);
			good.setZspdetail(strings[9]);
			good.setZspimg2(strings[10]);
			good.setZspimg3(strings[11]);
			}
		return good;
	}

}
