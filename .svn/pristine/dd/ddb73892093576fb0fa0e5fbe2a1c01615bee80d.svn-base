<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

<title>订单管理</title>

<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/admin.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/amazeui.css"
	rel="stylesheet" type="text/css">

<link href="${pageContext.request.contextPath }/css/personal.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/orstyle.css"
	rel="stylesheet" type="text/css">

<script
	src="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/js/amazeui.js"></script>

</head>

<body>
	<!--头 -->
	<jsp:include page="../common/include_top.jsp" />

	<b class="line"></b>
	<jsp:include page="../common/include_menu.jsp" />
	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<div class="user-order">

					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf">
							<strong class="am-text-danger am-text-lg">订单管理</strong> / <small>Order</small>
						</div>
					</div>
					<hr />

					<div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

						<ul class="am-avg-sm-5 am-tabs-nav am-nav am-nav-tabs">
							<li class="am-active"><a href="#tab1">所有订单</a></li>
							<li><a href="#tab2">待付款</a></li>
							<li><a href="#tab3">待发货</a></li>
							<li><a href="#tab4">待收货</a></li>
							<li><a href="#tab5">待评价</a></li>
						</ul>

						<div class="am-tabs-bd">
							<div class="am-tab-panel am-fade am-in am-active" id="tab1">
								<div class="order-top">
									<div class="th th-item">
										<td class="td-inner">商品</td>
									</div>
									<div class="th th-price">
										<td class="td-inner">单价</td>
									</div>
									<div class="th th-number">
										<td class="td-inner">数量</td>
									</div>
									<div class="th th-operation">
										<td class="td-inner">商品操作</td>
									</div>
									<div class="th th-amount">
										<td class="td-inner">合计</td>
									</div>
									<div class="th th-status">
										<td class="td-inner">交易状态</td>
									</div>
									<div class="th th-change">
										<td class="td-inner">交易操作</td>
									</div>
								</div>

								<div class="order-main">
									<div class="order-list">

										<!--交易成功-->
										<c:forEach var="i" items="${listOrder}">
											<div class="order-status">
												<div class="order-title">
													<div class="dd-num">
														订单编号：<a href="javascript:;">${i.orderNo}</a>
													</div>
													<span>成交时间 <fmt:formatDate value="${i.payTime}" /></span>
													<!--    <em>店铺：小桔灯</em>-->
												</div>

												<div class="order-content">
													<div class="order-left">


														<!-- c; -->


														<c:forEach var="r" items="${i.listOrderItem}">
															<ul class="item-list">
																<li class="td td-item">
																	<div class="item-pic">
																		<a href="#" class="J_MakePoint"> <img
																			src="../images/kouhong.jpg_80x80.jpg"
																			class="itempic J_ItemImg">
																		</a>
																	</div>
																	<div class="item-info">
																		<div class="item-basic-info">
																			<a href="#">
																				<p>${r.product.productName}</p>
																				<p class="info-little">${r.orderItmeAttr.chooseAttr}:${r.orderItmeAttr.chooseAttrValue}
																					<br />包装：裸装
																				</p>
																			</a>
																		</div>
																	</div>
																</li>
																<li class="td td-price">
																	<div class="item-price">${r.productPrice}</div>
																</li>
																<li class="td td-number">
																	<div class="item-number">
																		<span>×</span>${r.buyCount}
																	</div>
																</li>
																<li class="td td-operation">
																	<div class="item-operation"></div>
																</li>
															</ul>
														</c:forEach>
													</div>

													<div class="order-right">
														<li class="td td-amount">
															<div class="item-amount">
																合计：${i.orderPrcie}
																<p>
																	含运费：<span>${i.expressPrice}</span>
																</p>
															</div>
														</li>
														<div class="move-right">
															<c:if test="${i.orderStatus==5}">
																<li class="td td-status">
																	<div class="item-status">
																		<p class="Mystatus">交易成功</p>
																		<p class="order-info">
																			<a href="/shop-web/orders/toOrderInfo?id=${i.id}">订单详情</a>
																		</p>
																		<p class="order-info">
																			<a href="logistics.html">查看物流</a>
																		</p>
																	</div>
																</li>
																<li class="td td-change">
																	<div class="am-btn am-btn-danger anniu"
																		onclick="delOrder(${i.id})">删除订单</div>
																</li>
															</c:if>
															<c:if test="${i.orderStatus==0}">
																<li class="td td-status">
																	<div class="item-status">
																		<p class="Mystatus">交易关闭</p>
																	</div>
																</li>
																<li class="td td-change">
																	<div class="am-btn am-btn-danger anniu"
																		onclick="delOrder(${i.id})">删除订单</div>
																</li>

															</c:if>
															<c:if test="${i.orderStatus==2}">
																<li class="td td-status">
																	<div class="item-status">
																		<p class="Mystatus">买家已付款</p>
																		<p class="order-info">
																			<a href="/shop-web/orders/toOrderInfo?id=${i.id}">订单详情</a>
																		</p>
																	</div>
																</li>
																<li class="td td-change">
																	<div class="am-btn am-btn-danger anniu">提醒发货</div>
																</li>
															</c:if>
															<c:if test="${i.orderStatus==3}">
																<li class="td td-status">
																	<div class="item-status">
																		<p class="Mystatus">卖家已发货</p>
																		<p class="order-info">
																			<a href="/shop-web/orders/toOrderInfo?id=${i.id}">订单详情</a>
																		</p>
																		<p class="order-info">
																			<a href="logistics.html">查看物流</a>
																		</p>
																		<p class="order-info">
																			<a href="#">延长收货</a>
																		</p>
																	</div>
																</li>
																<li class="td td-change"><a href="#"
																	onclick="confirmOrder(${i.id})">
																		<div class="am-btn am-btn-danger anniu">确认收货</div>
																</a></li>
															</c:if>
															<c:if test="${i.orderStatus==1}">
																<li class="td td-status">
																	<div class="item-status">
																		<p class="Mystatus">等待买家付款</p>
																		<p class="order-info">
																			<a href="#" onclick="updateSta(${i.id})">取消订单</a>
																		</p>

																	</div>
																</li>
																<li class="td td-change"><a href="pay.html">
																		<div class="am-btn am-btn-danger anniu">一键支付</div>
																</a></li>
															</c:if>
															<c:if test="${i.orderStatus==4}">
																<li class="td td-status">
																	<div class="item-status">
																		<p class="Mystatus">交易成功</p>
																		<p class="order-info">
																			<a href="/shop-web/orders/toOrderInfo?id=${i.id}">订单详情</a>
																		</p>
																		<p class="order-info">
																			<a href="logistics.html">查看物流</a>
																		</p>
																	</div>
																</li>
																<li class="td td-change"><a href="commentlist.html">
																		<div class="am-btn am-btn-danger anniu" onclick="">评价商品</div>
																</a></li>

															</c:if>
														</div>
													</div>


												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
							<!-- 待付款 -->
							<div class="am-tab-panel am-fade" id="tab2">

								<div class="order-top">
									<div class="th th-item">
										<td class="td-inner">商品</td>
									</div>
									<div class="th th-price">
										<td class="td-inner">单价</td>
									</div>
									<div class="th th-number">
										<td class="td-inner">数量</td>
									</div>
									<div class="th th-operation">
										<td class="td-inner">商品操作</td>
									</div>
									<div class="th th-amount">
										<td class="td-inner">合计</td>
									</div>
									<div class="th th-status">
										<td class="td-inner">交易状态</td>
									</div>
									<div class="th th-change">
										<td class="td-inner">交易操作</td>
									</div>
								</div>

								<div class="order-main">
									<div class="order-list">
										<c:forEach var="i" items="${listOrder}">
											<c:if test="${i.orderStatus==1}">
												<div class="order-status1">
													<div class="order-title">
														<div class="dd-num">
															订单编号：<a href="javascript:;">${i.orderNo}</a>
														</div>
														<span>成交时间 <fmt:formatDate value="${i.payTime}" /></span>
														<!--    <em>店铺：小桔灯</em>-->
													</div>
													<div class="order-content">
														<div class="order-left">


															<!-- c; -->


															<c:forEach var="r" items="${i.listOrderItem}">
																<ul class="item-list">
																	<li class="td td-item">
																		<div class="item-pic">
																			<a href="#" class="J_MakePoint"> <img
																				src="../images/kouhong.jpg_80x80.jpg"
																				class="itempic J_ItemImg">
																			</a>
																		</div>
																		<div class="item-info">
																			<div class="item-basic-info">
																				<a href="#">
																					<p>${r.product.productName}</p>
																					<p class="info-little">${r.orderItmeAttr.chooseAttr}:${r.orderItmeAttr.chooseAttrValue}
																						<br />包装：裸装
																					</p>
																				</a>
																			</div>
																		</div>
																	</li>
																	<li class="td td-price">
																		<div class="item-price">${r.productPrice}</div>
																	</li>
																	<li class="td td-number">
																		<div class="item-number">
																			<span>×</span>${r.buyCount}
																		</div>
																	</li>
																	<li class="td td-operation">
																		<div class="item-operation"></div>
																	</li>
																</ul>
															</c:forEach>
														</div>

														<div class="order-right">
															<li class="td td-amount">
																<div class="item-amount">
																	合计：${i.orderPrcie}
																	<p>
																		含运费：<span>${i.expressPrice}</span>
																	</p>
																</div>
															</li>
															<div class="move-right">
																<li class="td td-status">
																	<div class="item-status">
																		<p class="Mystatus">等待买家付款</p>
																		<p class="order-info">
																			<a href="#">取消订单</a>
																		</p>

																	</div>
																</li>
																<li class="td td-change"><a href="pay.html">
																		<div class="am-btn am-btn-danger anniu">一键支付</div>
																</a></li>
															</div>
														</div>

													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>
								</div>
							</div>
							<!-- 待发货 -->
							<div class="am-tab-panel am-fade" id="tab3">

								<div class="order-top">
									<div class="th th-item">
										<td class="td-inner">商品</td>
									</div>
									<div class="th th-price">
										<td class="td-inner">单价</td>
									</div>
									<div class="th th-number">
										<td class="td-inner">数量</td>
									</div>
									<div class="th th-operation">
										<td class="td-inner">商品操作</td>
									</div>
									<div class="th th-amount">
										<td class="td-inner">合计</td>
									</div>
									<div class="th th-status">
										<td class="td-inner">交易状态</td>
									</div>
									<div class="th th-change">
										<td class="td-inner">交易操作</td>
									</div>
								</div>

								<div class="order-main">
									<div class="order-list">
										<c:forEach var="i" items="${listOrder}">
											<c:if test="${i.orderStatus==2}">
												<div class="order-status1">
													<div class="order-title">
														<div class="dd-num">
															订单编号：<a href="javascript:;">${i.orderNo}</a>
														</div>
														<span>成交时间 <fmt:formatDate value="${i.payTime}" /></span>
														<!--    <em>店铺：小桔灯</em>-->
													</div>
													<div class="order-content">
														<div class="order-left">


															<!-- c; -->


															<c:forEach var="r" items="${i.listOrderItem}">
																<ul class="item-list">
																	<li class="td td-item">
																		<div class="item-pic">
																			<a href="#" class="J_MakePoint"> <img
																				src="../images/kouhong.jpg_80x80.jpg"
																				class="itempic J_ItemImg">
																			</a>
																		</div>
																		<div class="item-info">
																			<div class="item-basic-info">
																				<a href="#">
																					<p>${r.product.productName}</p>
																					<p class="info-little">${r.orderItmeAttr.chooseAttr}:${r.orderItmeAttr.chooseAttrValue}
																						<br />包装：裸装
																					</p>
																				</a>
																			</div>
																		</div>
																	</li>
																	<li class="td td-price">
																		<div class="item-price">${r.productPrice}</div>
																	</li>
																	<li class="td td-number">
																		<div class="item-number">
																			<span>×</span>${r.buyCount}
																		</div>
																	</li>
																	<li class="td td-operation">
																		<div class="item-operation"></div>
																	</li>
																</ul>
															</c:forEach>
														</div>

														<div class="order-right">
															<li class="td td-amount">
																<div class="item-amount">
																	合计：${i.orderPrcie}
																	<p>
																		含运费：<span>${i.expressPrice}</span>
																	</p>
																</div>
															</li>
															<div class="move-right">
																<li class="td td-status">
																	<div class="item-status">
																		<p class="Mystatus">买家已付款</p>
																		<p class="order-info">
																			<a href="/shop-web/orders/toOrderInfo?id=${i.id}">订单详情</a>
																		</p>
																	</div>
																</li>
																<li class="td td-change">
																	<div class="am-btn am-btn-danger anniu">提醒发货</div>
																</li>
															</div>
														</div>

													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>
								</div>
							</div>

							<!-- 待收货 -->
							<div class="am-tab-panel am-fade" id="tab4">

								<div class="order-top">
									<div class="th th-item">
										<td class="td-inner">商品</td>
									</div>
									<div class="th th-price">
										<td class="td-inner">单价</td>
									</div>
									<div class="th th-number">
										<td class="td-inner">数量</td>
									</div>
									<div class="th th-operation">
										<td class="td-inner">商品操作</td>
									</div>
									<div class="th th-amount">
										<td class="td-inner">合计</td>
									</div>
									<div class="th th-status">
										<td class="td-inner">交易状态</td>
									</div>
									<div class="th th-change">
										<td class="td-inner">交易操作</td>
									</div>
								</div>

								<div class="order-main">
									<div class="order-list">
										<c:forEach var="i" items="${listOrder}">
											<c:if test="${i.orderStatus==3}">
												<div class="order-status1">
													<div class="order-title">
														<div class="dd-num">
															订单编号：<a href="javascript:;">${i.orderNo}</a>
														</div>
														<span>成交时间 <fmt:formatDate value="${i.payTime}" /></span>
														<!--    <em>店铺：小桔灯</em>-->
													</div>
													<div class="order-content">
														<div class="order-left">


															<!-- c; -->


															<c:forEach var="r" items="${i.listOrderItem}">
																<ul class="item-list">
																	<li class="td td-item">
																		<div class="item-pic">
																			<a href="#" class="J_MakePoint"> <img
																				src="../images/kouhong.jpg_80x80.jpg"
																				class="itempic J_ItemImg">
																			</a>
																		</div>
																		<div class="item-info">
																			<div class="item-basic-info">
																				<a href="#">
																					<p>${r.product.productName}</p>
																					<p class="info-little">${r.orderItmeAttr.chooseAttr}:${r.orderItmeAttr.chooseAttrValue}
																						<br />包装：裸装
																					</p>
																				</a>
																			</div>
																		</div>
																	</li>
																	<li class="td td-price">
																		<div class="item-price">${r.productPrice}</div>
																	</li>
																	<li class="td td-number">
																		<div class="item-number">
																			<span>×</span>${r.buyCount}
																		</div>
																	</li>
																	<li class="td td-operation">
																		<div class="item-operation"></div>
																	</li>
																</ul>
															</c:forEach>
														</div>

														<div class="order-right">
															<li class="td td-amount">
																<div class="item-amount">
																	合计：${i.orderPrcie}
																	<p>
																		含运费：<span>${i.expressPrice}</span>
																	</p>
																</div>
															</li>
															<div class="move-right">
																<li class="td td-status">
																	<div class="item-status">
																		<p class="Mystatus">卖家已发货</p>
																		<p class="order-info">
																			<a href="/shop-web/orders/toOrderInfo?id=${i.id}">订单详情</a>
																		</p>
																		<p class="order-info">
																			<a href="logistics.html">查看物流</a>
																		</p>
																		<p class="order-info">
																			<a href="#">延长收货</a>
																		</p>
																	</div>
																</li>
																<li class="td td-change"><a href="#"
																	onclick="confirmOrder(${i.id})">
																		<div class="am-btn am-btn-danger anniu">确认收货</div>
																</a></li>
															</div>
														</div>

													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>
								</div>
							</div>


							<!-- 待评价 -->

							<div class="am-tab-panel am-fade" id="tab5">

								<div class="order-top">
									<div class="th th-item">
										<td class="td-inner">商品</td>
									</div>
									<div class="th th-price">
										<td class="td-inner">单价</td>
									</div>
									<div class="th th-number">
										<td class="td-inner">数量</td>
									</div>
									<div class="th th-operation">
										<td class="td-inner">商品操作</td>
									</div>
									<div class="th th-amount">
										<td class="td-inner">合计</td>
									</div>
									<div class="th th-status">
										<td class="td-inner">交易状态</td>
									</div>
									<div class="th th-change">
										<td class="td-inner">交易操作</td>
									</div>
								</div>
								<div class="order-main">
									<div class="order-list">
										<c:forEach var="i" items="${listOrder}">
											<c:if test="${i.orderStatus==4}">
												<div class="order-status1">
													<div class="order-title">
														<div class="dd-num">
															订单编号：<a href="javascript:;">${i.orderNo}</a>
														</div>
														<span>成交时间 <fmt:formatDate value="${i.payTime}" /></span>
														<!--    <em>店铺：小桔灯</em>-->
													</div>
													<div class="order-content">
														<div class="order-left">
															<!-- c; -->
															<c:forEach var="r" items="${i.listOrderItem}">
																<ul class="item-list">
																	<li class="td td-item">
																		<div class="item-pic">
																			<a href="#" class="J_MakePoint"> <img
																				src="../images/kouhong.jpg_80x80.jpg"
																				class="itempic J_ItemImg">
																			</a>
																		</div>
																		<div class="item-info">
																			<div class="item-basic-info">
																				<a href="#">
																					<p>${r.product.productName}</p>
																					<p class="info-little">${r.orderItmeAttr.chooseAttr}:${r.orderItmeAttr.chooseAttrValue}
																						<br />包装：裸装
																					</p>
																				</a>
																			</div>
																		</div>
																	</li>
																	<li class="td td-price">
																		<div class="item-price">${r.productPrice}</div>
																	</li>
																	<li class="td td-number">
																		<div class="item-number">
																			<span>×</span>${r.buyCount}
																		</div>
																	</li>
																	<li class="td td-operation">
																		<div class="item-operation"></div>
																	</li>
																</ul>
															</c:forEach>
														</div>

														<div class="order-right">
															<li class="td td-amount">
																<div class="item-amount">
																	合计：${i.orderPrcie}
																	<p>
																		含运费：<span>${i.expressPrice}</span>
																	</p>
																</div>
															</li>
															<div class="move-right">
																<li class="td td-status">
																	<div class="item-status">
																		<p class="Mystatus">交易成功</p>
																		<p class="order-info">
																			<a href="/shop-web/orders/toOrderInfo?id=${i.id}">订单详情</a>
																		</p>
																		<p class="order-info">
																			<a href="logistics.html">查看物流</a>
																		</p>
																	</div>
																</li>
																<li class="td td-change"><a
																	href="/shop-web/orders/toAssessPro?id=${orders.id}">
																		<div class="am-btn am-btn-danger anniu">评价商品</div>
																</a></li>
															</div>
														</div>

													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>
								</div>
							</div>

						</div>

					</div>
				</div>
			</div>
			<!--底部-->
			<jsp:include page="../common/footer.jsp" />
		</div>
		<!-- 菜单 -->
		<jsp:include page="../common/include_menu.jsp" />
	</div>
	<script type="text/javascript">
       function delOrder(id){
    	 
    	   if(confirm("亲 您真的要删除订单吗？")){
    	   $.ajax({
   	    	url:"/shop-web/orders/delOrder",
		        type:"POST",
		        async:false,
		        data:{"id":id},
		        success:function(data){
		        	if(data=='s'){
		        		alert("删除成功")
		        		window.location.reload();
		        	}
		        }
		    	
		    })
    	   }   
       }
       
       
       function updateSta(id){
    	   if(confirm("亲 您真的要取消订单吗？")){
    	    $.ajax({
    	    	url:"/shop-web/orders/toUpdateSta",
		        type:"POST",
		        async:false,
		        data:{"id":id},
		        success:function(data){
		        	if(data=='s'){
		        		alert("取消订单成功")
		        		window.location.reload();
		        	}
		        }
		    	
		    })
    	   }
       }
       function confirmOrder(id){
    	   if(confirm("亲 您的货物已经收到了吗？")){
       	    $.ajax({
       	    	url:"/shop-web/orders/confirmOrder",
   		        type:"POST",
   		        async:false,
   		        data:{"id":id},
   		        success:function(data){
   		        	if(data=='s'){
   		        		alert("收货成功")
   		        		window.location.reload();
   		        	}
   		        }
   		    	
   		    })
       	   }
       }
    </script>
</body>

</html>