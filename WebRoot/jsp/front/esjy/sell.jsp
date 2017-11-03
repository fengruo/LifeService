<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<jsp:include page="/jsp/front/head.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>商品出售</title>
<link href="${pageContext.request.contextPath }/jsp/front/css/sell.css"
	rel="stylesheet" type="text/css"></link>
<link href="${pageContext.request.contextPath }/jsp/front/css/esmenu.css"
	rel="stylesheet" type="text/css"></link>
<script src="${pageContext.request.contextPath }/jsp/front/js/spmenu.js"></script>
</head>
<body>
	<div class="container col-xs-12 ">
		<div class="col-xs-12">
			<div class="col-xs-3 main_left" id="main_left">
				<div id="big_banner_wrap">
					<ul id="banner_menu_wrap">
					</ul>
				</div>
			</div>
			<div class="col-xs-9 main_center_xyfw" id="main_center_xyfw">
				<div class="col-xs-3 title_line">
					<h4>热门需求</h4>
				</div>
				<div class="col-xs-6 title_line">
					<div class="input-group input_line">
						<input type="text" class="form-control"
							placeholder="请输入要搜索的商品关键字..."> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button">搜索</button> </span>
					</div>
				</div>
				<div class="col-xs-3 title_line">
					<h4>
						<a
							onclick="checkuserlogin()">发布出售商品信息</a>
					</h4>
				</div>
				<div class="col-xs-12">
					<div id="main_center_xyfw_tj"></div>
					<div style="clear:both;"></div>
				</div>
			</div>
			<div class="col-xs-12" style="margin-top:15px;">
				<!-- 网站 -->
				<div id="wrapper">
					<div id="ad_container_ka_top_banner" class="kA_top_ershou"></div>
					
				</div>
				<div id="main" class="clearfix">
					<div class="mainleft" id="infolist">
						<div class="infocon">
							<table class="tbimg" cellspacing="0" cellpadding="0">
								<colgroup>
									<col class="w150">
									<col>
									<col class="w100">
								</colgroup>
								<tbody>
									<tr class="zzinfo">
										<td class="img"><a
											href="http://zhuanzhuan.ganji.com/detail/852522190362148871z.shtml?from=pc&amp;source=ganji&amp;cate=南阳赶集|南阳二手|南阳二手笔记本&amp;cateurl=nanyang|wu|ershoubijibendiannao&amp;gj_other_ifid=from_ganji&amp;gj_other_city_id=111&amp;gj_other_gc_1=wu&amp;gj_other_uuid=&amp;gj_other_ca_s=&amp;gj_other_ca_kw=&amp;gj_other_ca_n=&amp;gj_other_ca_i=&amp;gj_other_sid="
											target="_blank"> <img class="js-lazy-load"
												src="http://pic6.58cdn.com.cn/zhuanzh/n_v1bl2lwkhgqtxvqwlq4vxa_130_130.jpg"
												data-original="http://pic6.58cdn.com.cn/zhuanzh/n_v1bl2lwkhgqtxvqwlq4vxa_130_130.jpg"
												alt="全新戴尔笔记本，低价卖出，骗子死全家" style="display: block;"> </a>
										</td>
										<td class="t"><a
											href="http://zhuanzhuan.ganji.com/detail/852522190362148871z.shtml?from=pc&amp;source=ganji&amp;cate=南阳赶集|南阳二手|南阳二手笔记本&amp;cateurl=nanyang|wu|ershoubijibendiannao&amp;gj_other_ifid=from_ganji&amp;gj_other_city_id=111&amp;gj_other_gc_1=wu&amp;gj_other_uuid=&amp;gj_other_ca_s=&amp;gj_other_ca_kw=&amp;gj_other_ca_n=&amp;gj_other_ca_i=&amp;gj_other_sid="
											target="_blank" class="t">全新戴尔笔记本，低价卖出，骗子死全家</a> <i
											class="clear"></i> <span class="pricebiao">￥<span
												class="price">2800</span> </span> <i class="clear"></i>
										<div class="clear"></div>
											<div class="quot"></div> <span class="desc">买回来一个月，全新没怎么玩过，原价4600，工作原因没什么用了，配有充电器，无线鼠标，清洁剂和毛刷，手提包，在正版旗舰店买的，可议价</span>
											<i class="clear"></i> <br>
										<span class="fl"> <span> 南阳 </span> <span> - </span><span>
													卧龙 </span> </span> <i class="clear"></i></td>


										<td class="tc">
											<div class="qq_attest">
												<p class="img_attest">
													<img
														src="http://pic4.58cdn.com.cn/zhuanzh/n_v1bkujjdzyldcfqkcvta2q_64_64.jpg">
												</p>
												<p class="name_add">站住，干什...</p>
												<p class="name_add">
													来自<span class="zz"> 转转 </span>
												</p>
											</div>
										</td>
									</tr>
									<tr class="zzinfo">
										<td class="img"><a
											href="http://zhuanzhuan.ganji.com/detail/852522190362148871z.shtml?from=pc&amp;source=ganji&amp;cate=南阳赶集|南阳二手|南阳二手笔记本&amp;cateurl=nanyang|wu|ershoubijibendiannao&amp;gj_other_ifid=from_ganji&amp;gj_other_city_id=111&amp;gj_other_gc_1=wu&amp;gj_other_uuid=&amp;gj_other_ca_s=&amp;gj_other_ca_kw=&amp;gj_other_ca_n=&amp;gj_other_ca_i=&amp;gj_other_sid="
											target="_blank"> <img class="js-lazy-load"
												src="http://pic6.58cdn.com.cn/zhuanzh/n_v1bl2lwkhgqtxvqwlq4vxa_130_130.jpg"
												data-original="http://pic6.58cdn.com.cn/zhuanzh/n_v1bl2lwkhgqtxvqwlq4vxa_130_130.jpg"
												alt="全新戴尔笔记本，低价卖出，骗子死全家" style="display: block;"> </a>
										</td>
										<td class="t"><a
											href="http://zhuanzhuan.ganji.com/detail/852522190362148871z.shtml?from=pc&amp;source=ganji&amp;cate=南阳赶集|南阳二手|南阳二手笔记本&amp;cateurl=nanyang|wu|ershoubijibendiannao&amp;gj_other_ifid=from_ganji&amp;gj_other_city_id=111&amp;gj_other_gc_1=wu&amp;gj_other_uuid=&amp;gj_other_ca_s=&amp;gj_other_ca_kw=&amp;gj_other_ca_n=&amp;gj_other_ca_i=&amp;gj_other_sid="
											target="_blank" class="t">全新戴尔笔记本，低价卖出，骗子死全家</a> <i
											class="clear"></i> <span class="pricebiao">￥<span
												class="price">2800</span> </span> <i class="clear"></i>
										<div class="clear"></div>
											<div class="quot"></div> <span class="desc">买回来一个月，全新没怎么玩过，原价4600，工作原因没什么用了，配有充电器，无线鼠标，清洁剂和毛刷，手提包，在正版旗舰店买的，可议价</span>
											<i class="clear"></i> <br>
										<span class="fl"> <span> 南阳 </span> <span> - </span><span>
													卧龙 </span> </span> <i class="clear"></i></td>


										<td class="tc">
											<div class="qq_attest">
												<p class="img_attest">
													<img
														src="http://pic4.58cdn.com.cn/zhuanzh/n_v1bkujjdzyldcfqkcvta2q_64_64.jpg">
												</p>
												<p class="name_add">站住，干什...</p>
												<p class="name_add">
													来自<span class="zz"> 转转 </span>
												</p>
											</div>
										</td>
									</tr>
									<tr class="zzinfo">
										<td class="img"><a
											href="http://zhuanzhuan.ganji.com/detail/852522190362148871z.shtml?from=pc&amp;source=ganji&amp;cate=南阳赶集|南阳二手|南阳二手笔记本&amp;cateurl=nanyang|wu|ershoubijibendiannao&amp;gj_other_ifid=from_ganji&amp;gj_other_city_id=111&amp;gj_other_gc_1=wu&amp;gj_other_uuid=&amp;gj_other_ca_s=&amp;gj_other_ca_kw=&amp;gj_other_ca_n=&amp;gj_other_ca_i=&amp;gj_other_sid="
											target="_blank"> <img class="js-lazy-load"
												src="http://pic6.58cdn.com.cn/zhuanzh/n_v1bl2lwkhgqtxvqwlq4vxa_130_130.jpg"
												data-original="http://pic6.58cdn.com.cn/zhuanzh/n_v1bl2lwkhgqtxvqwlq4vxa_130_130.jpg"
												alt="全新戴尔笔记本，低价卖出，骗子死全家" style="display: block;"> </a>
										</td>
										<td class="t"><a
											href="http://zhuanzhuan.ganji.com/detail/852522190362148871z.shtml?from=pc&amp;source=ganji&amp;cate=南阳赶集|南阳二手|南阳二手笔记本&amp;cateurl=nanyang|wu|ershoubijibendiannao&amp;gj_other_ifid=from_ganji&amp;gj_other_city_id=111&amp;gj_other_gc_1=wu&amp;gj_other_uuid=&amp;gj_other_ca_s=&amp;gj_other_ca_kw=&amp;gj_other_ca_n=&amp;gj_other_ca_i=&amp;gj_other_sid="
											target="_blank" class="t">全新戴尔笔记本，低价卖出，骗子死全家</a> <i
											class="clear"></i> <span class="pricebiao">￥<span
												class="price">2800</span> </span> <i class="clear"></i>
										<div class="clear"></div>
											<div class="quot"></div> <span class="desc">买回来一个月，全新没怎么玩过，原价4600，工作原因没什么用了，配有充电器，无线鼠标，清洁剂和毛刷，手提包，在正版旗舰店买的，可议价</span>
											<i class="clear"></i> <br>
										<span class="fl"> <span> 南阳 </span> <span> - </span><span>
													卧龙 </span> </span> <i class="clear"></i></td>


										<td class="tc">
											<div class="qq_attest">
												<p class="img_attest">
													<img
														src="http://pic4.58cdn.com.cn/zhuanzh/n_v1bkujjdzyldcfqkcvta2q_64_64.jpg">
												</p>
												<p class="name_add">站住，干什...</p>
												<p class="name_add">
													来自<span class="zz"> 转转 </span>
												</p>
											</div>
										</td>
									</tr>
									<tr class="zzinfo">
										<td class="img"><a
											href="http://zhuanzhuan.ganji.com/detail/852522190362148871z.shtml?from=pc&amp;source=ganji&amp;cate=南阳赶集|南阳二手|南阳二手笔记本&amp;cateurl=nanyang|wu|ershoubijibendiannao&amp;gj_other_ifid=from_ganji&amp;gj_other_city_id=111&amp;gj_other_gc_1=wu&amp;gj_other_uuid=&amp;gj_other_ca_s=&amp;gj_other_ca_kw=&amp;gj_other_ca_n=&amp;gj_other_ca_i=&amp;gj_other_sid="
											target="_blank"> <img class="js-lazy-load"
												src="http://pic6.58cdn.com.cn/zhuanzh/n_v1bl2lwkhgqtxvqwlq4vxa_130_130.jpg"
												data-original="http://pic6.58cdn.com.cn/zhuanzh/n_v1bl2lwkhgqtxvqwlq4vxa_130_130.jpg"
												alt="全新戴尔笔记本，低价卖出，骗子死全家" style="display: block;"> </a>
										</td>
										<td class="t"><a
											href="http://zhuanzhuan.ganji.com/detail/852522190362148871z.shtml?from=pc&amp;source=ganji&amp;cate=南阳赶集|南阳二手|南阳二手笔记本&amp;cateurl=nanyang|wu|ershoubijibendiannao&amp;gj_other_ifid=from_ganji&amp;gj_other_city_id=111&amp;gj_other_gc_1=wu&amp;gj_other_uuid=&amp;gj_other_ca_s=&amp;gj_other_ca_kw=&amp;gj_other_ca_n=&amp;gj_other_ca_i=&amp;gj_other_sid="
											target="_blank" class="t">全新戴尔笔记本，低价卖出，骗子死全家</a> <i
											class="clear"></i> <span class="pricebiao">￥<span
												class="price">2800</span> </span> <i class="clear"></i>
										<div class="clear"></div>
											<div class="quot"></div> <span class="desc">买回来一个月，全新没怎么玩过，原价4600，工作原因没什么用了，配有充电器，无线鼠标，清洁剂和毛刷，手提包，在正版旗舰店买的，可议价</span>
											<i class="clear"></i> <br>
										<span class="fl"> <span> 南阳 </span> <span> - </span><span>
													卧龙 </span> </span> <i class="clear"></i></td>


										<td class="tc">
											<div class="qq_attest">
												<p class="img_attest">
													<img
														src="http://pic4.58cdn.com.cn/zhuanzh/n_v1bkujjdzyldcfqkcvta2q_64_64.jpg">
												</p>
												<p class="name_add">站住，干什...</p>
												<p class="name_add">
													来自<span class="zz"> 转转 </span>
												</p>
											</div>
										</td>
									</tr>
									<tr class="zzinfo">
										<td class="img"><a
											href="http://zhuanzhuan.ganji.com/detail/852522190362148871z.shtml?from=pc&amp;source=ganji&amp;cate=南阳赶集|南阳二手|南阳二手笔记本&amp;cateurl=nanyang|wu|ershoubijibendiannao&amp;gj_other_ifid=from_ganji&amp;gj_other_city_id=111&amp;gj_other_gc_1=wu&amp;gj_other_uuid=&amp;gj_other_ca_s=&amp;gj_other_ca_kw=&amp;gj_other_ca_n=&amp;gj_other_ca_i=&amp;gj_other_sid="
											target="_blank"> <img class="js-lazy-load"
												src="http://pic6.58cdn.com.cn/zhuanzh/n_v1bl2lwkhgqtxvqwlq4vxa_130_130.jpg"
												data-original="http://pic6.58cdn.com.cn/zhuanzh/n_v1bl2lwkhgqtxvqwlq4vxa_130_130.jpg"
												alt="全新戴尔笔记本，低价卖出，骗子死全家" style="display: block;"> </a>
										</td>
										<td class="t"><a
											href="http://zhuanzhuan.ganji.com/detail/852522190362148871z.shtml?from=pc&amp;source=ganji&amp;cate=南阳赶集|南阳二手|南阳二手笔记本&amp;cateurl=nanyang|wu|ershoubijibendiannao&amp;gj_other_ifid=from_ganji&amp;gj_other_city_id=111&amp;gj_other_gc_1=wu&amp;gj_other_uuid=&amp;gj_other_ca_s=&amp;gj_other_ca_kw=&amp;gj_other_ca_n=&amp;gj_other_ca_i=&amp;gj_other_sid="
											target="_blank" class="t">全新戴尔笔记本，低价卖出，骗子死全家</a> <i
											class="clear"></i> <span class="pricebiao">￥<span
												class="price">2800</span> </span> <i class="clear"></i>
										<div class="clear"></div>
											<div class="quot"></div> <span class="desc">买回来一个月，全新没怎么玩过，原价4600，工作原因没什么用了，配有充电器，无线鼠标，清洁剂和毛刷，手提包，在正版旗舰店买的，可议价</span>
											<i class="clear"></i> <br>
										<span class="fl"> <span> 南阳 </span> <span> - </span><span>
													卧龙 </span> </span> <i class="clear"></i></td>


										<td class="tc">
											<div class="qq_attest">
												<p class="img_attest">
													<img
														src="http://pic4.58cdn.com.cn/zhuanzh/n_v1bkujjdzyldcfqkcvta2q_64_64.jpg">
												</p>
												<p class="name_add">站住，干什...</p>
												<p class="name_add">
													来自<span class="zz"> 转转 </span>
												</p>
											</div>
										</td>
									</tr>
									<tr class="zzinfo">
										<td class="img"><a
											href="http://zhuanzhuan.ganji.com/detail/852522190362148871z.shtml?from=pc&amp;source=ganji&amp;cate=南阳赶集|南阳二手|南阳二手笔记本&amp;cateurl=nanyang|wu|ershoubijibendiannao&amp;gj_other_ifid=from_ganji&amp;gj_other_city_id=111&amp;gj_other_gc_1=wu&amp;gj_other_uuid=&amp;gj_other_ca_s=&amp;gj_other_ca_kw=&amp;gj_other_ca_n=&amp;gj_other_ca_i=&amp;gj_other_sid="
											target="_blank"> <img class="js-lazy-load"
												src="http://pic6.58cdn.com.cn/zhuanzh/n_v1bl2lwkhgqtxvqwlq4vxa_130_130.jpg"
												data-original="http://pic6.58cdn.com.cn/zhuanzh/n_v1bl2lwkhgqtxvqwlq4vxa_130_130.jpg"
												alt="全新戴尔笔记本，低价卖出，骗子死全家" style="display: block;"> </a>
										</td>
										<td class="t"><a
											href="http://zhuanzhuan.ganji.com/detail/852522190362148871z.shtml?from=pc&amp;source=ganji&amp;cate=南阳赶集|南阳二手|南阳二手笔记本&amp;cateurl=nanyang|wu|ershoubijibendiannao&amp;gj_other_ifid=from_ganji&amp;gj_other_city_id=111&amp;gj_other_gc_1=wu&amp;gj_other_uuid=&amp;gj_other_ca_s=&amp;gj_other_ca_kw=&amp;gj_other_ca_n=&amp;gj_other_ca_i=&amp;gj_other_sid="
											target="_blank" class="t">全新戴尔笔记本，低价卖出，骗子死全家</a> <i
											class="clear"></i> <span class="pricebiao">￥<span
												class="price">2800</span> </span> <i class="clear"></i>
										<div class="clear"></div>
											<div class="quot"></div> <span class="desc">买回来一个月，全新没怎么玩过，原价4600，工作原因没什么用了，配有充电器，无线鼠标，清洁剂和毛刷，手提包，在正版旗舰店买的，可议价</span>
											<i class="clear"></i> <br>
										<span class="fl"> <span> 南阳 </span> <span> - </span><span>
													卧龙 </span> </span> <i class="clear"></i></td>


										<td class="tc">
											<div class="qq_attest">
												<p class="img_attest">
													<img
														src="http://pic4.58cdn.com.cn/zhuanzh/n_v1bkujjdzyldcfqkcvta2q_64_64.jpg">
												</p>
												<p class="name_add">站住，干什...</p>
												<p class="name_add">
													来自<span class="zz"> 转转 </span>
												</p>
											</div>
										</td>
									</tr>
									<tr class="zzinfo">
										<td class="img"><a
											href="http://zhuanzhuan.ganji.com/detail/852522190362148871z.shtml?from=pc&amp;source=ganji&amp;cate=南阳赶集|南阳二手|南阳二手笔记本&amp;cateurl=nanyang|wu|ershoubijibendiannao&amp;gj_other_ifid=from_ganji&amp;gj_other_city_id=111&amp;gj_other_gc_1=wu&amp;gj_other_uuid=&amp;gj_other_ca_s=&amp;gj_other_ca_kw=&amp;gj_other_ca_n=&amp;gj_other_ca_i=&amp;gj_other_sid="
											target="_blank"> <img class="js-lazy-load"
												src="http://pic6.58cdn.com.cn/zhuanzh/n_v1bl2lwkhgqtxvqwlq4vxa_130_130.jpg"
												data-original="http://pic6.58cdn.com.cn/zhuanzh/n_v1bl2lwkhgqtxvqwlq4vxa_130_130.jpg"
												alt="全新戴尔笔记本，低价卖出，骗子死全家" style="display: block;"> </a>
										</td>
										<td class="t"><a
											href="http://zhuanzhuan.ganji.com/detail/852522190362148871z.shtml?from=pc&amp;source=ganji&amp;cate=南阳赶集|南阳二手|南阳二手笔记本&amp;cateurl=nanyang|wu|ershoubijibendiannao&amp;gj_other_ifid=from_ganji&amp;gj_other_city_id=111&amp;gj_other_gc_1=wu&amp;gj_other_uuid=&amp;gj_other_ca_s=&amp;gj_other_ca_kw=&amp;gj_other_ca_n=&amp;gj_other_ca_i=&amp;gj_other_sid="
											target="_blank" class="t">全新戴尔笔记本，低价卖出，骗子死全家</a> <i
											class="clear"></i> <span class="pricebiao">￥<span
												class="price">2800</span> </span> <i class="clear"></i>
										<div class="clear"></div>
											<div class="quot"></div> <span class="desc">买回来一个月，全新没怎么玩过，原价4600，工作原因没什么用了，配有充电器，无线鼠标，清洁剂和毛刷，手提包，在正版旗舰店买的，可议价</span>
											<i class="clear"></i> <br>
										<span class="fl"> <span> 南阳 </span> <span> - </span><span>
													卧龙 </span> </span> <i class="clear"></i></td>


										<td class="tc">
											<div class="qq_attest">
												<p class="img_attest">
													<img
														src="http://pic4.58cdn.com.cn/zhuanzh/n_v1bkujjdzyldcfqkcvta2q_64_64.jpg">
												</p>
												<p class="name_add">站住，干什...</p>
												<p class="name_add">
													来自<span class="zz"> 转转 </span>
												</p>
											</div>
										</td>
									</tr>
									<tr class="zzinfo">
										<td class="img"><a
											href="http://zhuanzhuan.ganji.com/detail/860030468536320012z.shtml?from=pc&amp;source=ganji&amp;cate=南阳赶集|南阳二手|南阳二手笔记本&amp;cateurl=nanyang|wu|ershoubijibendiannao&amp;gj_other_ifid=from_ganji&amp;gj_other_city_id=111&amp;gj_other_gc_1=wu&amp;gj_other_uuid=&amp;gj_other_ca_s=&amp;gj_other_ca_kw=&amp;gj_other_ca_n=&amp;gj_other_ca_i=&amp;gj_other_sid="
											target="_blank"> <img class="js-lazy-load"
												src="http://pic6.58cdn.com.cn/zhuanzh/n_v1bkuymc2a2iffsepf4esa_130_130.jpg"
												data-original="http://pic6.58cdn.com.cn/zhuanzh/n_v1bkuymc2a2iffsepf4esa_130_130.jpg"
												alt="联想310s" style="display: block;"> </a>
										</td>
										<td class="t"><a
											href="http://zhuanzhuan.ganji.com/detail/860030468536320012z.shtml?from=pc&amp;source=ganji&amp;cate=南阳赶集|南阳二手|南阳二手笔记本&amp;cateurl=nanyang|wu|ershoubijibendiannao&amp;gj_other_ifid=from_ganji&amp;gj_other_city_id=111&amp;gj_other_gc_1=wu&amp;gj_other_uuid=&amp;gj_other_ca_s=&amp;gj_other_ca_kw=&amp;gj_other_ca_n=&amp;gj_other_ca_i=&amp;gj_other_sid="
											target="_blank" class="t">联想310s</a> <i class="clear"></i> <span
											class="pricebiao">￥<span class="price">3550</span> </span> <i
											class="clear"></i>
										<div class="clear"></div>
											<div class="quot"></div> <span class="desc">购买时间五个月，平常没咋用，6次都没用到！几乎全新机！高配置！因闲置现将出售！！！出厂日期是16年八月四日。懂电脑的一定知道是赚到！！！</span>
											<i class="clear"></i> <br>
										<span class="fl"> <span> 南阳 </span> <span> - </span><span>
													卧龙 </span> </span> <i class="clear"></i></td>


										<td class="tc">
											<div class="qq_attest">
												<p class="img_attest">
													<img
														src="http://pic8.58cdn.com.cn/zhuanzh/n_v1bkujjd2trafvtnc64yla_64_64.jpg">
												</p>
												<p class="name_add">爱襖</p>
												<p class="name_add">
													来自<span class="zz"> 转转 </span>
												</p>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

						<!-- 分页 -->
						<div class="pageBox">
							
						</div>
					</div>
					<div class="mainright">
					<div class="shangjiaconright">
						<a onclick="clickLog('from=zzgjlist_allcpcclick');"
							href="//nanyang.ganji.com/ershoubijibendiannao/a2/"><div
								class="sjicon"></div>查看全部商家信息</a>
					</div>
					<div id="brand_tcrm"></div>
					<div class="dual_d"></div>
					<div id="rightframe">
						<div id="direct_ad_right">
							<div class="ad_border">
								<div class="title">
									<h3>其他人还在看</h3>
								</div>
								<ul>
									<li><a
										href="http://jump.zhineng.58.com/jump?target=pZwY0jCfsLEdrjEOnHmLrHEdrH9vn1DOsWN3PH98mvqVTHDdnjcQPHNQrHTvnH9KPjbQn1bznH03rjNQrH0Kn9DLPH9YPHmOn1cLn1nYPHm1rjEKn1TKn1TKn19YrjnKPHbzTHDdnjcQPHNQrHTvPjcKnEZCVUUGh3ukmSilWrpFBSyc-SB6Jrh6VXy5_SiSGkDQTHDKugF1pAqdg1cknH0kn1TvgvR30ZkQTiYQTyOdUAkKnTD1TEDKm1ELrHn1PjmVryD3PaYYPW0zsHbvrHnVnHu-ujw6njD1nj0OTHn1rHmzrjNQTHcQrHnQnWmQnjTkP1nkPTDKn1mKPHbzTHT8nHTdrHE3n1czPHmvPj0On9DKTEDKpZwY0jCfsvO6UM-6Uh08uv78phb8mvqVsvRz0v6fIyFGph-BuyObpy78Uh7fskDKnHT8nHnvsWcQri3QPkDkTHTKsE76uAEkrAN1mHPbuHTkmWmd"
										data-jingzhunurl="http://jump.zhineng.58.com/jump?target=pZwY0jCfsLEdrjEOnHmLrHEdrH9vn1DOsWN3PH98mvqVTHDdnjcQPHNQrHTvnH9KPjbQn1bznH03rjNQrH0Kn9DLPH9YPHmOn1cLn1nYPHm1rjEKn1TKn1TKn19YrjnKPHbzTHDdnjcQPHNQrHTvPjcKnEZCVUUGh3ukmSilWrpFBSyc-SB6Jrh6VXy5_SiSGkDQTHDKugF1pAqdg1cknH0kn1TvgvR30ZkQTiYQTyOdUAkKnTD1TEDKm1ELrHn1PjmVryD3PaYYPW0zsHbvrHnVnHu-ujw6njD1nj0OTHn1rHmzrjNQTHcQrHnQnWmQnjTkP1nkPTDKn1mKPHbzTHT8nHTdrHE3n1czPHmvPj0On9DKTEDKpZwY0jCfsvO6UM-6Uh08uv78phb8mvqVsvRz0v6fIyFGph-BuyObpy78Uh7fskDKnHT8nHnvsWcQri3QPkDkTHTKsE76uAEkrAN1mHPbuHTkmWmd"
										target="_blank"> <img
											src="http://t1.58cdn.com.cn/bidding/small/n_v26df9d42b8ab049c093e54fcc2907fd1d_160_120.jpg">
											<p>
												<b>面议</b>
											</p>
											<h3>促销苹果5s至7plus只需499元起</h3> </a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="zzyls"></div>
				</div>
				</div>
				<!-- 网站 -->
			</div>
		</div>
	</div>
	<div class="col-xs-12" style="height: 15px;">&nbsp;</div>
	<jsp:include page="/jsp/front/bottom.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath }/jsp/front/js/sell.js"></script>
	<script
		src="${pageContext.request.contextPath }/jsp/front/js/right_top.js"></script>
	<script
		src="${pageContext.request.contextPath }/jsp/front/js/index_effect.js"></script>
	<script
		src="${pageContext.request.contextPath }/jsp/front/js/gudingnav.js"></script>
	<input type="hidden" id="userloginid" value="${session.userid }">
	<script type="text/javascript">
	function checkuserlogin(){
		if($("#userloginid").val()==""){
			alert("请登陆后发布");
			return false;
		}else{
			window.location.href="${pageContext.request.contextPath }/jsp/front/esjy/sellform.jsp";
			return true;
		}
	}
	</script>
</body>
</html>
