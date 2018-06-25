<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<title>商品页面</title>

<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/admin.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/amazeui.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/basic/css/demo.css"
	rel="stylesheet" type="text/css" />
<link type="text/css"
	href="${pageContext.request.contextPath }/css/optstyle.css"
	rel="stylesheet" />
<link type="text/css"
	href="${pageContext.request.contextPath }/css/style.css"
	rel="stylesheet" />

<script type="text/javascript"
	src="${pageContext.request.contextPath }/basic/js/jquery-1.7.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/basic/js/quick_links.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/js/amazeui.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.imagezoom.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.flexslider.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/list.js"></script>

</head>

<body>


	<jsp:include page="../common/include_top_index.jsp" />
	<b class="line"></b>
	<div class="listMain">

		<!--分类-->
		<div class="nav-table">
			<div class="long-title">
				<span class="all-goods">全部分类</span>
			</div>
			<div class="nav-cont">
				<ul>
					<li class="index"><a
						href="${pageContext.request.contextPath }/home/toHome">首页</a></li>
					<li class="qc"><a href="#">闪购</a></li>
					<li class="qc"><a href="#">限时抢</a></li>
					<li class="qc"><a href="#">团购</a></li>
					<li class="qc last"><a href="#">大包装</a></li>
				</ul>
				<div class="nav-extra">
					<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
					<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
				</div>
			</div>
		</div>
		<ol class="am-breadcrumb am-breadcrumb-slash">
			<li><a href="${pageContext.request.contextPath }/home/toHome">首页</a></li>
			<li><a href="#">分类</a></li>
			<li class="am-active">内容</li>
		</ol>
		<script type="text/javascript">
			$(function() {
			});
			$(window).load(function() {
				$('.flexslider').flexslider({
					animation : "slide",
					start : function(slider) {
						$('body').removeClass('loading');
					}
				});
			});
		</script>
		<div class="scoll">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<c:forEach var="p" items="${detail.productAds }">
							<li><img src="${p.adPath }" title="pic" /></li>
						</c:forEach>
					</ul>
				</div>
			</section>
		</div>

		<!--放大镜-->

		<div class="item-inform">
			<div class="clearfixLeft" id="clearcontent">

				<div class="box">
					<script type="text/javascript">
						$(document).ready(
								function() {
									$(".jqzoom").imagezoom();
									$("#thumblist li a").click(
											function() {
												$(this).parents("li").addClass(
														"tb-selected")
														.siblings()
														.removeClass(
																"tb-selected");
												$(".jqzoom").attr(
														'src',
														$(this).find("img")
																.attr("mid"));
												$(".jqzoom").attr(
														'rel',
														$(this).find("img")
																.attr("big"));
											});
								});
					</script>

					<div class="tb-booth tb-pic tb-s310">
						<a href="${detail.productAds[0].adPath }"><img
							src="${fn:split(detail.productAds[0].adPath ,'.')[0]}_mid.jpg"
							alt="细节展示放大镜特效" rel="${detail.productAds[0].adPath }"
							class="jqzoom" /></a>
					</div>
					<ul class="tb-thumb" id="thumblist">
						<c:forEach var="p" items="${detail.productAds }">
							<li class="tb-selected">
								<div class="tb-pic tb-s40">
									<a href="#"><img
										src="${fn:split(p.adPath ,'.')[0] }_small.jpg"
										mid="${fn:split(p.adPath ,'.')[0] }_mid.jpg" big="${p.adPath}"></a>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>

				<div class="clear"></div>
			</div>

			<div class="clearfixRight">

				<!--规格属性-->
				<!--名称-->
				<div class="tb-detail-hd">
					<h1>${detail.productDetail }${detail.productName }</h1>
					<input type="hidden" value="${user.id }" name="userid">
				</div>
				<div class="tb-detail-list">
					<!--价格-->
					<div class="tb-detail-price">
						<li class="price iteminfo_price">
							<dt>促销价</dt>
							<dd>
								<em>¥</em><b class="sys_item_price">${detail.pSku.productSalePrice }</b>
							</dd>
						</li>
						<li class="price iteminfo_mktprice">
							<dt>原价</dt>
							<dd>
								<em>¥</em><b class="sys_item_mktprice">${detail.pSku.productPrice }</b>
							</dd>
						</li>
						<div class="clear"></div>
					</div>

					<div class="clear"></div>

					<!--销量-->
					<ul class="tm-ind-panel">
						<li class="tm-ind-item tm-ind-sellCount canClick">
							<div class="tm-indcon">
								<span class="tm-label">月销量</span><span class="tm-count">${detail.productVolume }</span>
							</div>
						</li>
						<li class="tm-ind-item tm-ind-sumCount canClick">
							<div class="tm-indcon">
								<span class="tm-label">累计销量</span><span class="tm-count">${detail.productVolume+5000 }</span>
							</div>
						</li>
						<li class="tm-ind-item tm-ind-reviewCount canClick tm-line3">
							<div class="tm-indcon">
								<span class="tm-label">累计评价</span><span class="tm-count">${count }</span>
							</div>
						</li>
					</ul>
					<div class="clear"></div>

					<!--各种规格-->
					<dl class="iteminfo_parameter sys_item_specpara">
						<dt class="theme-login">
							<div class="cart-title">
								可选规格<span class="am-icon-angle-right"></span>
							</div>
						</dt>
						<dd>
							<!--操作页面-->

							<div class="theme-popover-mask"></div>

							<div class="theme-popover">
								<div class="theme-span"></div>
								<div class="theme-poptit">
									<a href="javascript:;" title="关闭" class="close">×</a>
								</div>
								<div class="theme-popbod dform">
									<form class="theme-signin" name="loginform" action=""
										method="post">

										<div class="theme-signin-left">
											<c:forEach var="pat" items="${detail.productAttrs }">
												<div class="theme-options" name="skuDiv">
													<div class="cart-title">${pat.attrName }</div>
													<ul>
														<c:forEach var="atv" items="${detail.productAttrValues }">
															<c:if test="${pat.id== atv.attrId}">
																<li class="sku-line" onclick="check(this,${param.id})">${atv.attrValue }
																	<i>,${pat.id }</i>
																</li>
															</c:if>
														</c:forEach>
													</ul>
												</div>
											</c:forEach>
											<div class="theme-options">
												<div class="cart-title number">数量</div>
												<dd>
													<input id="min" class="am-btn am-btn-default" name=""
														type="button" value="-" /> <input id="text_box"
														name="goumainum" type="text" value="1"
														style="width: 30px;" /> <input id="add"
														class="am-btn am-btn-default" name="" type="button"
														value="+" /> <span id="Stock" class="tb-hidden">库存<span
														class="stock">${detail.pSku.productStock }</span>件
													</span>
												</dd>

											</div>
											<div class="clear"></div>

											<div class="btn-op">
												<div class="btn am-btn am-btn-warning">确认</div>
												<div class="btn close am-btn am-btn-warning">取消</div>
											</div>
										</div>
										<div class="theme-signin-right">
											<div class="img-info">
												<img
													src="${pageContext.request.contextPath }/images/songzi.jpg" />
											</div>
											<div class="text-info">
												<span class="J_Price price-now">¥39.00</span> <span
													id="Stock" class="tb-hidden">库存<span class="stock">1000</span>件
												</span>
											</div>
										</div>

									</form>
								</div>
							</div>

						</dd>
					</dl>
					<div class="clear"></div>
					<!--活动	-->
					<div class="shopPromotion gold">
						<div class="hot">
							<dt class="tb-metatit">店铺优惠</dt>
							<div class="gold-list">
								<p>
									不要${detail.pSku.productPrice },现在只需${detail.pSku.productSalePrice }块,真的只要${detail.pSku.productSalePrice }块,豪华${detail.productName }拿回家!!
									<span>点击领券<i class="am-icon-sort-down"></i></span>
								</p>
							</div>
						</div>
						<div class="clear"></div>
						<div class="coupon">
							<dt class="tb-metatit">优惠券</dt>
							<div class="gold-list">
								<ul>
									<li>125减5</li>
									<li>198减10</li>
									<li>298减20</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="pay">
					<div class="pay-opt">
						<a href="home.html"><span class="am-icon-home am-icon-fw">首页</span></a>
						<a><span class="am-icon-heart am-icon-fw">收藏</span></a>

					</div>
					<li>
						<div class="clearfix tb-btn tb-btn-buy theme-login">
							<a id="LikBuy" title="点此按钮到下一步确认购买信息" href="javascript:;"
								onclick="addtocar(${param.id})">立即购买</a>
						</div>
					</li>
					<li>
						<div class="clearfix tb-btn tb-btn-basket theme-login">
							<a id="LikBasket" title="加入购物车" href="javascript:;"
								onclick="addtocar(${param.id})"><i></i>加入购物车</a>
						</div>
					</li>
				</div>

			</div>

			<div class="clear"></div>

		</div>

		<div class="clear"></div>

		<!-- introduce-->

		<div class="introduce">
			<div class="browse">
				<div class="mc">
					<ul>
						<div class="mt">
							<h2>看了又看</h2>
						</div>

						<li class="first">
							<div class="p-img">
								<a href="#"> <img class=""
									src="${pageContext.request.contextPath }/images/browse1.jpg">
								</a>
							</div>
							<div class="p-name">
								<a href="#"> 【三只松鼠_开口松子】零食坚果特产炒货东北红松子原味 </a>
							</div>
							<div class="p-price">
								<strong>￥35.90</strong>
							</div>
						</li>
						<li>
							<div class="p-img">
								<a href="#"> <img class=""
									src="${pageContext.request.contextPath }/images/browse1.jpg">
								</a>
							</div>
							<div class="p-name">
								<a href="#"> 【三只松鼠_开口松子】零食坚果特产炒货东北红松子原味 </a>
							</div>
							<div class="p-price">
								<strong>￥35.90</strong>
							</div>
						</li>
						<li>
							<div class="p-img">
								<a href="#"> <img class=""
									src="${pageContext.request.contextPath }/images/browse1.jpg">
								</a>
							</div>
							<div class="p-name">
								<a href="#"> 【三只松鼠_开口松子】零食坚果特产炒货东北红松子原味 </a>
							</div>
							<div class="p-price">
								<strong>￥35.90</strong>
							</div>
						</li>
						<li>
							<div class="p-img">
								<a href="#"> <img class=""
									src="${pageContext.request.contextPath }/images/browse1.jpg">
								</a>
							</div>
							<div class="p-name">
								<a href="#"> 【三只松鼠_开口松子】零食坚果特产炒货东北红松子原味 </a>
							</div>
							<div class="p-price">
								<strong>￥35.90</strong>
							</div>
						</li>
						<li>
							<div class="p-img">
								<a href="#"> <img class=""
									src="${pageContext.request.contextPath }/images/browse1.jpg">
								</a>
							</div>
							<div class="p-name">
								<a href="#"> 【三只松鼠_开口松子218g】零食坚果特产炒货东北红松子原味 </a>
							</div>
							<div class="p-price">
								<strong>￥35.90</strong>
							</div>
						</li>

					</ul>
				</div>
			</div>
			<div class="introduceMain">
				<div class="am-tabs" data-am-tabs>
					<ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
						<li class="am-active"><a href="#"> <span
								class="index-needs-dt-txt">宝贝详情</span></a></li>

						<li><a href="#"> <span class="index-needs-dt-txt">全部评价</span></a></li>

						<li><a href="#"> <span class="index-needs-dt-txt">猜你喜欢</span></a>
						</li>
					</ul>

					<div class="am-tabs-bd">

						<div class="am-tab-panel am-fade am-in am-active">
							<div class="J_Brand">

								<div class="attr-list-hd tm-clear">
									<h4>产品参数：</h4>
								</div>
								<div class="clear"></div>
								<ul id="J_AttrUL">
									<li title="">产品类型:&nbsp;烘炒类</li>
									<li title="">原料产地:&nbsp;巴基斯坦</li>
									<li title="">产地:&nbsp;湖北省武汉市</li>
									<li title="">配料表:&nbsp;进口松子、食用盐</li>
									<li title="">产品规格:&nbsp;210g</li>
									<li title="">保质期:&nbsp;180天</li>
									<li title="">产品标准号:&nbsp;GB/T 22165</li>
									<li title="">生产许可证编号：&nbsp;QS4201 1801 0226</li>
									<li title="">储存方法：&nbsp;请放置于常温、阴凉、通风、干燥处保存</li>
									<li title="">食用方法：&nbsp;开袋去壳即食</li>
								</ul>
								<div class="clear"></div>
							</div>

							<div class="details">
								<div class="attr-list-hd after-market-hd">
									<h4>商品细节</h4>
								</div>
								<div class="twlistNews">
									<img src="${pageContext.request.contextPath }/images/tw1.jpg" />
									<img src="${pageContext.request.contextPath }/images/tw2.jpg" />
									<img src="${pageContext.request.contextPath }/images/tw3.jpg" />
									<img src="${pageContext.request.contextPath }/images/tw4.jpg" />
									<img src="${pageContext.request.contextPath }/images/tw5.jpg" />
									<img src="${pageContext.request.contextPath }/images/tw6.jpg" />
									<img src="${pageContext.request.contextPath }/images/tw7.jpg" />
								</div>
							</div>
							<div class="clear"></div>

						</div>

						<div class="am-tab-panel am-fade">

							<div class="actor-new">
								<div class="rate">
									<strong>100<span>%</span></strong><br> <span>好评度</span>
								</div>
								<dl>
									<dt>买家印象</dt>
									<dd class="p-bfc">
										<q class="comm-tags"><span>味道不错</span><em>(2177)</em></q> <q
											class="comm-tags"><span>颗粒饱满</span><em>(1860)</em></q> <q
											class="comm-tags"><span>口感好</span><em>(1823)</em></q> <q
											class="comm-tags"><span>商品不错</span><em>(1689)</em></q> <q
											class="comm-tags"><span>香脆可口</span><em>(1488)</em></q> <q
											class="comm-tags"><span>个个开口</span><em>(1392)</em></q> <q
											class="comm-tags"><span>价格便宜</span><em>(1119)</em></q> <q
											class="comm-tags"><span>特价买的</span><em>(865)</em></q> <q
											class="comm-tags"><span>皮很薄</span><em>(831)</em></q>
									</dd>
								</dl>
							</div>
							<div class="clear"></div>
							<div class="tb-r-filter-bar">
								<ul class=" tb-taglist am-avg-sm-4">
									<li class="tb-taglist-li tb-taglist-li-current">
										<div class="comment-info">
											<span>全部评价</span> <span class="tb-tbcr-num">(32)</span>
										</div>
									</li>

									<li class="tb-taglist-li tb-taglist-li-1">
										<div class="comment-info">
											<span>好评</span> <span class="tb-tbcr-num">(32)</span>
										</div>
									</li>

									<li class="tb-taglist-li tb-taglist-li-0">
										<div class="comment-info">
											<span>中评</span> <span class="tb-tbcr-num">(32)</span>
										</div>
									</li>

									<li class="tb-taglist-li tb-taglist-li--1">
										<div class="comment-info">
											<span>差评</span> <span class="tb-tbcr-num">(32)</span>
										</div>
									</li>
								</ul>
							</div>
							<div class="clear"></div>

							<ul class="am-comments-list am-comments-list-flip">
								<c:forEach var="c" items="${ gcms}">
									<li class="am-comment">
										<!-- 评论容器 --> <a href=""> <img class="am-comment-avatar"
											src="${pageContext.request.contextPath }/images/hwbn40x40.jpg" />
											<!-- 评论者头像 -->
									</a>

										<div class="am-comment-main">
											<!-- 评论内容容器 -->
											<header class="am-comment-hd">
												<!--<h3 class="am-comment-title">评论标题</h3>-->
												<div class="am-comment-meta">
													<!-- 评论元数据 -->
													<a href="#link-to-user" class="am-comment-author">b***1
														(匿名)</a>
													<!-- 评论者 -->
													评论于
													<time datetime="">2015年11月02日 17:46</time>
												</div>
											</header>

											<div class="am-comment-bd">
												<div class="tb-rev-item " data-id="255776406962">
													<div class="J_TbcRate_ReviewContent tb-tbcr-content ">
														${c.commentLevel } ${c.commentContent }</div>
													<c:forEach var="at" items="${c.chooseAttr }">
														<c:forEach var="atv" items="${c.chooseAttrValues }">
															<c:if test="${at.id==atv.chooseAttrId }">
																<div class="tb-r-act-bar">${at.attrName }:${atv.attrValue }</div>
															</c:if>
														</c:forEach>
													</c:forEach>
												</div>

											</div>
											<!-- 评论内容 -->
										</div>
									</li>
								</c:forEach>
							</ul>

							<div class="clear"></div>

							<!--分页 -->
							<ul class="am-pagination am-pagination-right">
								<li class="am-disabled"><a href="#">&laquo;</a></li>
								<li class="am-active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">&raquo;</a></li>
							</ul>
							<div class="clear"></div>

							<div class="tb-reviewsft">
								<div class="tb-rate-alert type-attention">
									购买前请查看该商品的 <a href="#" target="_blank">购物保障</a>，明确您的售后保障权益。
								</div>
							</div>

						</div>

						<div class="am-tab-panel am-fade">
							<div class="like">
								<ul class="am-avg-sm-2 am-avg-md-3 am-avg-lg-4 boxes">
									<li>
										<div class="i-pic limit">
											<img src="../images/imgsearch1.jpg" />
											<p>
												【良品铺子_开口松子】零食坚果特产炒货 <span>东北红松子奶油味</span>
											</p>
											<p class="price fl">
												<b>¥</b> <strong>298.00</strong>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">
											<img
												src="${pageContext.request.contextPath }/images/imgsearch1.jpg" />
											<p>
												【良品铺子_开口松子】零食坚果特产炒货 <span>东北红松子奶油味</span>
											</p>
											<p class="price fl">
												<b>¥</b> <strong>298.00</strong>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">
											<img
												src="${pageContext.request.contextPath }/images/imgsearch1.jpg" />
											<p>
												【良品铺子_开口松子】零食坚果特产炒货 <span>东北红松子奶油味</span>
											</p>
											<p class="price fl">
												<b>¥</b> <strong>298.00</strong>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">
											<img
												src="${pageContext.request.contextPath }/images/imgsearch1.jpg" />
											<p>
												【良品铺子_开口松子】零食坚果特产炒货 <span>东北红松子奶油味</span>
											</p>
											<p class="price fl">
												<b>¥</b> <strong>298.00</strong>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">
											<img
												src="${pageContext.request.contextPath }/images/imgsearch1.jpg" />
											<p>
												【良品铺子_开口松子】零食坚果特产炒货 <span>东北红松子奶油味</span>
											</p>
											<p class="price fl">
												<b>¥</b> <strong>298.00</strong>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">
											<img
												src="${pageContext.request.contextPath }/images/imgsearch1.jpg" />
											<p>
												【良品铺子_开口松子】零食坚果特产炒货 <span>东北红松子奶油味</span>
											</p>
											<p class="price fl">
												<b>¥</b> <strong>298.00</strong>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">
											<img
												src="${pageContext.request.contextPath }/images/imgsearch1.jpg" />
											<p>
												【良品铺子_开口松子】零食坚果特产炒货 <span>东北红松子奶油味</span>
											</p>
											<p class="price fl">
												<b>¥</b> <strong>298.00</strong>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">
											<img
												src="${pageContext.request.contextPath }/images/imgsearch1.jpg" />
											<p>
												【良品铺子_开口松子】零食坚果特产炒货 <span>东北红松子奶油味</span>
											</p>
											<p class="price fl">
												<b>¥</b> <strong>298.00</strong>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">
											<img
												src="${pageContext.request.contextPath }/images/imgsearch1.jpg" />
											<p>
												【良品铺子_开口松子】零食坚果特产炒货 <span>东北红松子奶油味</span>
											</p>
											<p class="price fl">
												<b>¥</b> <strong>298.00</strong>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">
											<img
												src="${pageContext.request.contextPath }/images/imgsearch1.jpg" />
											<p>
												【良品铺子_开口松子】零食坚果特产炒货 <span>东北红松子奶油味</span>
											</p>
											<p class="price fl">
												<b>¥</b> <strong>298.00</strong>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">
											<img
												src="${pageContext.request.contextPath }/images/imgsearch1.jpg" />
											<p>
												【良品铺子_开口松子】零食坚果特产炒货 <span>东北红松子奶油味</span>
											</p>
											<p class="price fl">
												<b>¥</b> <strong>298.00</strong>
											</p>
										</div>
									</li>
									<li>
										<div class="i-pic limit">
											<img
												src="${pageContext.request.contextPath }/images/imgsearch1.jpg" />
											<p>
												【良品铺子_开口松子】零食坚果特产炒货 <span>东北红松子奶油味</span>
											</p>
											<p class="price fl">
												<b>¥</b> <strong>298.00</strong>
											</p>
										</div>
									</li>
								</ul>
							</div>
							<div class="clear"></div>

							<!--分页 -->
							<ul class="am-pagination am-pagination-right">
								<li class="am-disabled"><a href="#">&laquo;</a></li>
								<li class="am-active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">&raquo;</a></li>
							</ul>
							<div class="clear"></div>

						</div>

					</div>

				</div>

				<div class="clear"></div>

				<jsp:include page="../common/footer.jsp" />
			</div>

		</div>
	</div>
	<!--菜单 -->
	<jsp:include page="../common/include_right.jsp" />
</body>
<script type="text/javascript">
	$(function() {
		$("div[name='skuDiv']").each(
				function() {
					$(this).find("ul").eq(0).find("li").eq(0).attr("class",
							"sku-line selected");
				})
	})

	function getval() {
		var data = "";
		$("div[name='skuDiv']").each(
				function() {
					data += $(this).find("ul").eq(0).find(
							"li[class='sku-line selected']").text()
							+ "/";
				});
		return data;
	}
	function check(obj,id) {
		var reqdata=getval();
		reqdata += $(obj).text();
		$.post("${pageContext.request.contextPath }/home/price?d="+reqdata+"&id="+id,
				function(data) {
					$("b[class='sys_item_price']").text(data.productSalePrice);
					$("b[class='sys_item_mktprice']").text(data.productPrice);
					$("span[class='stock']").text(data.productStock);
				})
	}
	//加入购物车
	function addtocar(id) {
		var reqdata=getval();
		var num = $("input[name='goumainum']").val();
		var price = $("b[class='sys_item_price']").text();
		var userid= $("input[name='userid']").val();
		$.post("${pageContext.request.contextPath }/orders/car?d="+reqdata+
				"&id="+id+"&num="+num+"&price="+price+"&userid="+userid,
			function(data){
				if (data=="s") {
					location.href="${pageContext.request.contextPath }/home/jthome/shopping-car";
				}else {
					alert("添加失败");
				}
		})
	}
</script>
</html>