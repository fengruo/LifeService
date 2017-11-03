package com.tony.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import net.sf.json.JSONArray;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import com.tony.method.GoodsActionService;
import com.tony.method.UsualStrMethod;
import com.tony.model.Goods;
import com.tony.model.GoodsInfo;

public class GoodsAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UsualStrMethod usualStrMethod;
	private GoodsActionService goodsActionService;
	private InputStream textStream;
	
	public UsualStrMethod getUsualStrMethod() {
		return usualStrMethod;
	}

	public void setUsualStrMethod(UsualStrMethod usualStrMethod) {
		this.usualStrMethod = usualStrMethod;
	}

	public GoodsActionService getGoodsActionService() {
		return goodsActionService;
	}

	public void setGoodsActionService(GoodsActionService goodsActionService) {
		this.goodsActionService = goodsActionService;
	}

	public InputStream getTextStream() {
		return textStream;
	}

	public void setTextStream(InputStream textStream) {
		this.textStream = textStream;
	}
	//商品列表查询
	public String queryGoodsList(){
		try {
			List<Goods> goodsList=goodsActionService.queryGoodsList();
			JSONArray json=JSONArray.fromObject(goodsList);
			System.out.println(json);
			textStream=new ByteArrayInputStream(json.toString().getBytes("utf-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	//商品计数
	public String countGoods(){
		try {
			HttpServletRequest request = ServletActionContext.getRequest();
			String condition=usualStrMethod.checkRequestStr(request, "condition");
			int count=goodsActionService.countGoods(condition);
			JSONArray json=JSONArray.fromObject(count);
			System.out.println(json);
			textStream=new ByteArrayInputStream(json.toString().getBytes("utf-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	//商品分页
	public String queryGoodsFenYe(){
		HttpServletRequest request = ServletActionContext.getRequest();
		int nowpage=Integer.parseInt(usualStrMethod.checkRequestStr(request, "nowpage"));
		int pagesize=Integer.parseInt(usualStrMethod.checkRequestStr(request, "pagesize"));
		String shopList=usualStrMethod.checkRequestStr(request, "shopList");
		try {
			List<GoodsInfo> goodsList=goodsActionService.queryGoodsListFY(nowpage, pagesize,shopList);
			JSONArray json=JSONArray.fromObject(goodsList);
			System.out.println(json);
			textStream=new ByteArrayInputStream(json.toString().getBytes("utf-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	//根据商品id查询商品详细信息
	public String queryGoodsOne(){
		HttpServletRequest request = ServletActionContext.getRequest();
		int goodsId=Integer.parseInt(usualStrMethod.checkRequestStr(request, "goodsId"));
		GoodsInfo good=goodsActionService.queryOneGoods(goodsId);
		ActionContext context = ActionContext.getContext();
        ValueStack stack = context.getValueStack();
        //2 调用值栈对象中的set方法
        stack.set("goodinfo", good);
		System.out.println(goodsId);
		return "tospInfo";
	}
}
