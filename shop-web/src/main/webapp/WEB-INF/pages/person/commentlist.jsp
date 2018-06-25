<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

<title>发表评论</title>

<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/admin.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/amazeui.css"
	rel="stylesheet" type="text/css">

<link href="${pageContext.request.contextPath }/css/personal.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/appstyle.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.7.2.min.js"></script>
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
							<strong class="am-text-danger am-text-lg">发表评论</strong> / <small>Make&nbsp;Comments</small>
						</div>
					</div>
					<hr />

					<div class="comment-main">
						<!--多个商品评论-->
						<form action="${pageContext.request.contextPath }/orders/publishCs" method="post"
							enctype="multipart/form-data">
							<!-- for  start-->
							<c:forEach var="ord" items="${order.listOrderItem}" varStatus="ol">
								<div class="comment-list">
									<div class="item-pic">
										<a href="#" class="J_MakePoint"> <img
											src="${ord.product.coverImg}"
											class="itempic">
										</a>
									</div>

									<div class="item-title">
										<div class="item-name">
											<a href="#">
												<p class="item-basic-info">${ord.product.productName}</p>
											</a>
										</div>
										<div class="item-info">
											<div class="info-little">
											
												<span>${ord.orderItmeAttr.chooseAttr}:${ord.orderItmeAttr.chooseAttrValue}</span> 
											</div>
											<div class="item-price">
												价格：<strong>${ord.productPrice}元</strong>
											</div>
										</div>
									</div>
									<div class="clear"></div>
									<div class="item-comment">
										<textarea placeholder="请写下对宝贝的感受吧，对他人帮助很大哦！"
											name="orderItems[${ol.index }].commentContent.commentContent"></textarea>
									</div>
									<div class="filePic">
										<input type="file" name="orderItems[${ol.index }].pictures" class="inputPic"
											accept="image/*" multiple="multiple" max="5"> <span>晒照片(0/5)</span>
										<img
											src="${pageContext.request.contextPath }/images/image.jpg"
											alt="">
									</div>
									<div class="item-opinion">
										<li><i class="op1"></i>好评</li>
										<li><i class="op2"></i>中评</li>
										<li><i class="op3"></i>差评</li>
									</div>
									<!-- for  end-->
								</div>
							</c:forEach>
							<div class="info-btn">
								<input type="submit" value="发表评论" class="am-btn am-btn-danger">
							</div>
						</form>
					</div>


					<script type="text/javascript">
						$(document).ready(
								function() {
									$(".comment-list .item-opinion li").click(
											function() {
												$(this).prevAll().children('i')
														.removeClass("active");
												$(this).nextAll().children('i')
														.removeClass("active");
												$(this).children('i').addClass(
														"active");

											});
								})
					</script>



				</div>

			</div>

		</div>
		<!--底部-->
	</div>
	<jsp:include page="../common/footer.jsp" />

	<jsp:include page="../common/include_menu.jsp" />

</body>
<script type="text/javascript">
	function name() {
		
	}
</script>
</html>