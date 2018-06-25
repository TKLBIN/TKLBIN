<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>

<title>评价管理</title>

<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/admin.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/amazeui.css"
	rel="stylesheet" type="text/css">

<link href="${pageContext.request.contextPath }/css/personal.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/cmstyle.css"
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

				<div class="user-comment">
					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf">
							<strong class="am-text-danger am-text-lg">评价管理</strong> / <small>Manage&nbsp;Comment</small>
						</div>
					</div>
					<hr />

					<div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

						<ul class="am-avg-sm-2 am-tabs-nav am-nav am-nav-tabs">
							<li class="am-active"><a href="#tab1">所有评价</a></li>
							<li><a href="#tab2">有图评价</a></li>

						</ul>

						<div class="am-tabs-bd">
							<div class="am-tab-panel am-fade am-in am-active" id="tab1">
								<c:forEach var="cms" items="${comment }">
									<div class="comment-main">
										<div class="comment-list">
											<ul class="item-list">
												<div class="comment-top">
													<div class="th th-price">
														<td class="td-inner">评价</td>
													</div>
													<div class="th th-item">
														<td class="td-inner">商品</td>
													</div>
												</div>
												<li class="td td-item">
													<div class="item-pic">
														<a href="${pageContext.request.contextPath }/home/godetail?id=${cms.product.id }" class="J_MakePoint">
															<img src="${cms.product.coverImg }" class="itempic">
														</a>
													</div>
												</li>

												<li class="td td-comment">
													<div class="item-title">
														<div class="item-opinion">${cms.commentLevel }</div>
														<div class="item-name">
															<a href="${pageContext.request.contextPath }/home/godetail?id=${cms.product.id }">
																<p class="item-basic-info">${cms.product.productName }</p>
															</a>
														</div>
													</div>
													<div class="item-comment">${cms.commentContent }</div>

													<div class="item-info">
														<div>
															<p class="info-little">
																<span>${cms.product.productDetail }</span>
															</p>
															<p class="info-time">
																<fmt:formatDate value="${cms.time.createTime }"
																	pattern="yyyy-MM-dd" />
															</p>
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</c:forEach>
							</div>
							<div class="am-tab-panel am-fade" id="tab2">
								<c:forEach var="cms" items="${comment }">
									<c:if test="${cms.isPic==1 }">
										<div class="comment-main">
											<div class="comment-list">
												<ul class="item-list">
													<div class="comment-top">
														<div class="th th-price">
															<td class="td-inner">评价</td>
														</div>
														<div class="th th-item">
															<td class="td-inner">商品</td>
														</div>
													</div>
													<li class="td td-item">
														<div class="item-pic">
															<a href="${pageContext.request.contextPath }/home/godetail?id=${cms.product.id }" class="J_MakePoint"> <img
																src="${cms.product.coverImg }" class="itempic">
															</a>
														</div>
													</li>

													<li class="td td-comment">
														<div class="item-title">
															<div class="item-opinion">${cms.commentLevel }</div>
															<div class="item-name">
																<a href="${pageContext.request.contextPath }/home/godetail?id=${cms.product.id }">
																	<p class="item-basic-info">${cms.product.productName }</p>
																</a>
															</div>
														</div>
														<div class="item-comment">
															${cms.commentContent }
															<div class="filePic">
																<img src="${cms.commentPic.picPath }" alt="">
															</div>
														</div>

														<div class="item-info">
															<div>
																<p class="info-little">
																	<span>${cms.product.productDetail }</span>
																</p>
																<p class="info-time">
																	<fmt:formatDate value="${cms.time.createTime }"
																		pattern="yyyy-MM-dd" />
																</p>

															</div>
														</div>
													</li>

												</ul>

											</div>
										</div>
									</c:if>
								</c:forEach>
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

</html>