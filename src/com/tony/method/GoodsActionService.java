package com.tony.method;

import java.util.List;

import com.tony.model.Goods;
import com.tony.model.GoodsInfo;

public interface GoodsActionService {
	//查询二手商品标题对象
	public List<Goods> queryGoodsList();
	
	//分页查询二手商品信息
	public List<GoodsInfo> queryGoodsListFY(int nowpage,int pagesize,String shopList);
	//查询总数
	public int countGoods(String condition);
	//根据goodsid查询一条商品详细数据
	public GoodsInfo queryOneGoods(int goodsid);
}
