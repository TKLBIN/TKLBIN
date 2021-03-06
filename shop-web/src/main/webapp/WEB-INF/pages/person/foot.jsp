<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

<title>我的足迹</title>

<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/admin.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/amazeui.css"
	rel="stylesheet" type="text/css">

<link href="${pageContext.request.contextPath }/css/personal.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/footstyle.css"
	rel="stylesheet" type="text/css">

</head>

<body>
	<!--头 -->
	<jsp:include page="../common/include_top.jsp" />
	<b class="line"></b>
	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<div class="user-foot">
					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf">
							<strong class="am-text-danger am-text-lg">我的足迹</strong> / <small>Browser&nbsp;History</small>
						</div>
					</div>
					<hr />

					<!--足迹列表 -->

					<div class="goods">
						<div class="goods-date"
							data-date="<%=new SimpleDateFormat("yyyy-MM-dd").format(new Date())%>">
							<span><i class="month-lite"><%=new SimpleDateFormat("MM").format(new Date())%></i>.<i
								class="day-lite"><%=new SimpleDateFormat("dd").format(new Date())%></i><i
								class="date-desc">今天</i></span>
							<del class="am-icon-trash"></del>
							<s class="line"></s>
						</div>
						<c:if test="${!empty foolist }">
							<div class="goods-box first-box">
								<div class="goods-pic">
									<div class="goods-pic-box">
										<a class="goods-pic-link" target="_blank" href="#"
											title="${foolist[0].productName }"> <img
											src="${foolist[0].coverImg }"
											class="goods-img"></a>
									</div>
									<a class="goods-delete" href="javascript:void(0);"><i
										class="am-icon-trash"></i></a>
									<c:if test="${foolist[0].pSku.productStock<=0 }">
										<div class="goods-status goods-status-show">
											<span class="desc">宝贝已下架</span>
										</div>
									</c:if>
								</div>

								<div class="goods-attr">
									<div class="good-title">
										<a class="title" href="#" target="_blank">${foolist[0].productName }</a>
									</div>
									<div class="goods-price">
										<span class="g_price"> <span>¥</span><strong>${foolist[0].pSku.productSalePrice }</strong>
										</span> <span class="g_price g_price-original"> <span>¥</span><strong>${foolist[0].pSku.productPrice }</strong>
										</span>
									</div>
									<div class="clear"></div>
									<div class="goods-num">
										<div class="match-recom">
											<a href="#" class="match-recom-item">找相似</a> <a href="#"
												class="match-recom-item">找搭配</a> <i><em></em><span></span></i>
										</div>
									</div>
								</div>
							</div>
						</c:if>
					</div>
					<c:forEach var="f" items="${foolist }" varStatus="i">
						<c:if test="${i.index>0 }">
							<div class="goods">
								<div class="goods-date" data-date="2015-12-21">
									<s class="line"></s>
								</div>

								<div class="goods-box">
									<div class="goods-pic">
										<div class="goods-pic-box">
											<a class="goods-pic-link" target="_blank" href="#"
												title="${f.productName }"> <img
												src="${f.coverImg }"
												class="goods-img"></a>
										</div>
										<a class="goods-delete" href="javascript:void(0);"><i
											class="am-icon-trash"></i></a>
										<c:if test="${f.pSku.productStock<=0 }">
											<div class="goods-status goods-status-show">
												<span class="desc">宝贝已下架</span>
											</div>
										</c:if>
									</div>

									<div class="goods-attr">
										<div class="good-title">
											<a class="title" href="#" target="_blank">${f.productName }</a>
										</div>
										<div class="goods-price">
											<span class="g_price"> <span>¥</span><strong>${f.pSku.productSalePrice }</strong>
											</span> <span class="g_price g_price-original"> <span>¥</span><strong>${f.pSku.productPrice }</strong>
											</span>
										</div>
										<div class="clear"></div>
										<div class="goods-num">
											<div class="match-recom">
												<a href="#" class="match-recom-item">找相似</a> <a href="#"
													class="match-recom-item">找搭配</a> <i><em></em><span></span></i>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>

					<div class="clear"></div>
					<div class="goods">
						<div class="goods-date" data-date="<%=new SimpleDateFormat("yyyy-MM-dd").format(new Date())%>">
							<span><i class="month-lite"></i><i class="day-lite"></i> <i
								class="date-desc">一周内</i></span>
							<del class="am-icon-trash"></del>
							<s class="line"></s>
						</div>
						<div class="goods-box">
							<div class="goods-pic">
								<div class="goods-pic-box">
									<a class="goods-pic-link" target="_blank" href="#"
										title="意大利费列罗进口食品巧克力零食24粒  进口巧克力食品"> <img
										src="${pageContext.request.contextPath }/images/TB1_pic.jpg_200x200.jpg"
										class="goods-img"></a>
								</div>
								<a class="goods-delete" href="javascript:void(0);"><i
									class="am-icon-trash"></i></a>
								<div class="goods-status goods-status-show">
									<span class="desc">宝贝已下架</span>
								</div>
							</div>

							<div class="goods-attr">
								<div class="good-title">
									<a class="title" href="#" target="_blank">意大利费列罗进口食品巧克力零食24粒
										进口巧克力食品</a>
								</div>
								<div class="goods-price">
									<span class="g_price"> <span>¥</span><strong>71</strong>
									</span> <span class="g_price g_price-original"> <span>¥</span><strong>142</strong>
									</span>
								</div>
								<div class="clear"></div>
								<div class="goods-num">
									<div class="match-recom">
										<a href="#" class="match-recom-item">找相似</a> <a href="#"
											class="match-recom-item">找搭配</a> <i><em></em><span></span></i>
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>
			</div>

			<!--底部-->
			<!--底部-->
			<jsp:include page="../common/footer.jsp" />
		</div>


		<!-- 菜单 -->
		<jsp:include page="../common/include_menu.jsp" />
	</div>

</body>

</html>