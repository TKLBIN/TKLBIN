<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>

<title>优惠券</title>

<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/admin.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/amazeui.css"
	rel="stylesheet" type="text/css">

<link href="${pageContext.request.contextPath }/css/personal.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/cpstyle.css"
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
	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<div class="user-coupon">
					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf">
							<strong class="am-text-danger am-text-lg">优惠券</strong> / <small>Coupon</small>
						</div>
					</div>
					<hr />

					<div class="am-tabs-d2 am-tabs  am-margin" data-am-tabs>

						<ul class="am-avg-sm-2 am-tabs-nav am-nav am-nav-tabs">
							<li class="am-active"><a href="#tab1">可用优惠券</a></li>
							<li><a href="#tab2">已用/过期优惠券</a></li>

						</ul>

						<div class="am-tabs-bd">
							<div class="am-tab-panel am-fade am-in am-active" id="tab1">
								<div class="coupon-items">
									<c:forEach var="cp" items="${coups }" varStatus="i">
										<!-- status=0 未使用 -->
										<c:if test="${cp.status==0 }">
											<div class="coupon-item coupon-item-d">
												<div class="coupon-list">
													<div class="c-type">
														<c:if test="${cp.couponType==1}">
															<div class="c-class">
																<strong>购物券</strong>
															</div>
															<div class="c-price">
																<strong>￥${cp.couponPrice }</strong>
															</div>
															<div class="c-limit">【消费满&nbsp;${cp.couponMaxPrice }元&nbsp;可用】</div>
														</c:if>
														<c:if test="${cp.couponType==0}">
															<div class="c-class">
																<strong>运费券</strong>
															</div>
															<div class="c-price">
																<strong>可抵运费</strong>
															</div>
															<div class="c-limit">【不含偏远地区】</div>
														</c:if>
														<div class="c-time">
															<span>使用期限</span>
															<fmt:formatDate value="${cp.useStartTime }"
																pattern="yyyy-MM-dd" />
															--
															<fmt:formatDate value="${cp.useEndTime }"
																pattern="yyyy-MM-dd" />
														</div>
														<div class="c-type-top"></div>

														<div class="c-type-bottom"></div>
													</div>
													<div class="c-msg">
														<div class="c-range">
															<div class="range-all">
																<div class="range-item">
																	<span class="label">券&nbsp;编&nbsp;号：</span> <span
																		class="txt">${code[i.index] }</span>
																</div>
															</div>
														</div>
														<div class="op-btns">
															<a href="${pageContext.request.contextPath }/home/jthome/product-list" class="btn"><span class="txt">立即使用</span><b></b></a>
														</div>
													</div>
												</div>
											</div>
										</c:if>
									</c:forEach>
								</div>
							</div>
							<div class="am-tab-panel am-fade" id="tab2">
								<div class="coupon-items">
									<!-- 过期/失效 -->
									<c:forEach var="cp" items="${coups }" varStatus="i">
										<c:if test="${cp.status==1 }">
											<c:if test="${cp.couponType==1}">
												<div class="coupon-item coupon-item-d">
													<div class="coupon-list">
														<div class="c-type">
															<div class="c-class">
																<strong>购物券</strong> <span class="am-icon-trash"></span>
															</div>
															<div class="c-price">
																<strong>￥${cp.couponPrice }</strong>
															</div>
															<div class="c-limit">【消费满&nbsp;${cp.couponMaxPrice }元&nbsp;可用】</div>
															<div class="c-time">
																<span>使用期限</span>
																<fmt:formatDate value="${cp.useStartTime }"
																	pattern="yyyy-MM-dd" />
																--
																<fmt:formatDate value="${cp.useEndTime }"
																	pattern="yyyy-MM-dd" />
															</div>
															<div class="c-type-top"></div>

															<div class="c-type-bottom"></div>
														</div>

														<div class="c-msg">
															<div class="c-range">
																<div class="range-all">
																	<div class="range-item">
																		<span class="label">券&nbsp;编&nbsp;号：</span> <span
																			class="txt">${code[i.index] }</span>
																	</div>
																</div>
															</div>
															<div class="op-btns c-del">
																<a href="javascript:;" onclick="del(${cp.id})" class="btn"><span class="txt">删除</span><b></b></a>
															</div>
														</div>

														<li class="td td-usestatus ">
															<div class="item-usestatus ">
																<span><img src="../images/gift_stamp_31.png" /></span>
															</div>
														</li>
													</div>
												</div>
											</c:if>
										</c:if>
									</c:forEach>

									<c:forEach var="cp" items="${coups }" varStatus="i">
										<c:if test="${cp.status==1 }">
											<c:if test="${cp.couponType==0}">
												<div class="coupon-item coupon-item-yf">
													<div class="coupon-list">
														<div class="c-type">
															<div class="c-class">
																<strong>运费券</strong> <span class="am-icon-trash"></span>
															</div>
															<div class="c-price">
																<strong>可抵运费</strong>
															</div>
															<div class="c-limit">【不含偏远地区】</div>
															<div class="c-time">
																<span>使用期限</span></span>
																<fmt:formatDate value="${cp.useStartTime }"
																	pattern="yyyy-MM-dd" />
																--
																<fmt:formatDate value="${cp.useEndTime }"
																	pattern="yyyy-MM-dd" />
															</div>
															<div class="c-type-top"></div>

															<div class="c-type-bottom"></div>
														</div>

														<div class="c-msg">
															<div class="c-range">
																<div class="range-all">
																	<div class="range-item">
																		<span class="label">券&nbsp;编&nbsp;号：</span> <span
																			class="txt">${code[i.index] }</span>
																	</div>
																</div>
															</div>
															<div class="op-btns c-del">
																<a href="javascript:;" onclick="del(${cp.id})" class="btn"><span class="txt">删除</span><b></b></a>
															</div>
														</div>
														<li class="td td-usestatus ">
															<div class="item-usestatus ">
																<span><img src="../images/gift_stamp_21.png" /></span>
															</div>
														</li>
													</div>
												</div>
											</c:if>
										</c:if>
									</c:forEach>
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
</body>
<script type="text/javascript">
	function del(id) {
		var r  = window.confirm("确认删除?");
		if (r) {
			$.post("${pageContext.request.contextPath }/user/delCou?id="+id,function(data){
				if (data=="s") {
					location.reload();
				}else{
					alert("操作失败");
				}
			})
		}
	}
</script>
</html>
