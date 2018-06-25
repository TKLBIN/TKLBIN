<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@page import="com.model.ShopAddress"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>

<title>订单详情</title>

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

	<jsp:include page="../common/include_top.jsp" />
	<b class="line"></b>
	<jsp:include page="../common/include_menu.jsp" />
	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<div class="user-orderinfo">

					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf">
							<strong class="am-text-danger am-text-lg">订单详情</strong> / <small>Order&nbsp;details</small>
						</div>
					</div>
					<hr />
					<!--进度条-->
					<div class="m-progress">
						<div class="m-progress-list">
							<span class="step-1 step"> <em class="u-progress-stage-bg"></em>
								<i class="u-stage-icon-inner">1<em class="bg"></em></i>
								<p class="stage-name">拍下商品</p>
							</span> <span class="step-2 step"> <em
								class="u-progress-stage-bg"></em> <i class="u-stage-icon-inner">2<em
									class="bg"></em></i>
								<p class="stage-name">卖家发货</p>
							</span> <span class="step-3 step"> <em
								class="u-progress-stage-bg"></em> <i class="u-stage-icon-inner">3<em
									class="bg"></em></i>
								<p class="stage-name">确认收货</p>
							</span> <span class="step-4 step"> <em
								class="u-progress-stage-bg"></em> <i class="u-stage-icon-inner">4<em
									class="bg"></em></i>
								<p class="stage-name">交易完成</p>
							</span> <span class="u-progress-placeholder"></span>
						</div>
						<div class="u-progress-bar total-steps-2">
							<div class="u-progress-bar-inner"></div>
						</div>
					</div>
					<div class="order-infoaside">
						<div class="order-logistics">
							<a href="logistics.html">
								<div class="icon-log">
									<i><img src="../images/receive.png"></i>
								</div>
								<div class="latest-logistics">
									<p class="text">已签收,签收人是${shopAddress.peopleName}签收，感谢使用${order.expressName}快递，期待再次为您服务</p>
									<div class="time-list">
										<span class="date">2015-12-19</span><span class="week">周六</span><span
											class="time">15:35:42</span>
									</div>
									<div class="inquire">
										<span class="package-detail">物流：${order.expressName}快递</span>
										<!-- <span class="package-detail">快递单号: </span>
											<span class="package-number">373269427868</span>
											<a href="logistics.html">查看</a> -->
									</div>
								</div> <span class="am-icon-angle-right icon"></span>
							</a>
							<div class="clear"></div>
						</div>
						<div class="order-addresslist">
							<div class="order-address">
								<div class="icon-add"></div>
								<p class="new-tit new-p-re">
									<span class="new-txt">${shopAddress.peopleName}</span> <span
										class="new-txt-rd2">${shopAddress.telephone}</span>
								</p>
								<div class="new-mu_l2a new-p-re">
									<p class="new-mu_l2cw">
										<span class="title">收货地址：</span>
										<%
											ShopAddress shopAddress = (ShopAddress) request.getAttribute("shopAddress");
											String place = shopAddress.getPlace();
											String[] places = place.split("/");
										%>
										<span class="province"><%=places[0]%></span> <span
											class="city"><%=places[1]%></span> <span class="dist"><%=places[2]%></span>
										<span class="street">雄楚大道666号(中南财经政法大学)</span>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="order-infomain">

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
							<div class="order-status">
								<div class="order-title">
									<div class="dd-num">
										订单编号：<a href="javascript:;">${orders.orderNo}</a>
									</div>
									<span>成交时间 <fmt:formatDate value="${orders.payTime}" /></span>
									<!--    <em>店铺：小桔灯</em>-->
								</div>
								<div class="order-content">
									<div class="order-left">
										<c:forEach var="r" items="${orders.listOrderItem}">
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
												合计：${orders.orderPrcie}
												<p>
													含运费：<span>${orders.expressPrice}</span>
												</p>
											</div>
										</li>
										<div class="move-right">
											<c:if test="${orders.orderStatus==5}">
												<li class="td td-status">
													<div class="item-status">
														<p class="Mystatus">交易成功</p>
														<p class="order-info">
															<a href="/shop-web/orders/toOrderInfo?id=${orders.id}">订单详情</a>
														</p>
														<p class="order-info">
															<a href="logistics.html">查看物流</a>
														</p>
													</div>
												</li>
												<li class="td td-change">
													<div class="am-btn am-btn-danger anniu"
														onclick="delOrder(${orders.id})">删除订单</div>
												</li>
											</c:if>
											<c:if test="${orders.orderStatus==0}">
												<li class="td td-status">
													<div class="item-status">
														<p class="Mystatus">交易关闭</p>
													</div>
												</li>
												<li class="td td-change">
													<div class="am-btn am-btn-danger anniu"
														onclick="delOrder(${orders.id})">删除订单</div>
												</li>

											</c:if>
											<c:if test="${orders.orderStatus==2}">
												<li class="td td-status">
													<div class="item-status">
														<p class="Mystatus">买家已付款</p>
														<p class="order-info">
															<a href="/shop-web/orders/toOrderInfo?id=${orders.id}">订单详情</a>
														</p>
													</div>
												</li>
												<li class="td td-change">
													<div class="am-btn am-btn-danger anniu">提醒发货</div>
												</li>
											</c:if>
											<c:if test="${orders.orderStatus==3}">
												<li class="td td-status">
													<div class="item-status">
														<p class="Mystatus">卖家已发货</p>
														<p class="order-info">
															<a href="/shop-web/orders/toOrderInfo?id=${orders.id}">订单详情</a>
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
											<c:if test="${orders.orderStatus==1}">
												<li class="td td-status">
													<div class="item-status">
														<p class="Mystatus">等待买家付款</p>
														<p class="order-info">
															<a href="#" onclick="updateSta(${orders.id})">取消订单</a>
														</p>

													</div>
												</li>
												<li class="td td-change"><a href="pay.html">
														<div class="am-btn am-btn-danger anniu">一键支付</div>
												</a></li>
											</c:if>
											<c:if test="${orders.orderStatus==4}">
												<li class="td td-status">
													<div class="item-status">
														<p class="Mystatus">交易成功</p>
														<p class="order-info">
															<a href="/shop-web/orders/toOrderInfo?id=${orders.id}">订单详情</a>
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

											</c:if>
										</div>
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
    </script>
</body>
</html>