<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<aside class="menu">
	<c:if test="${!empty user}">
		<ul>
			<li class="person"><a href="${pageContext.request.contextPath }/user/jtpath/usercenter">个人中心</a></li>
			<li class="person"><a href="${pageContext.request.contextPath }/user/jtpath/usercenter">个人资料</a>
				<ul>
					<li><a href="${pageContext.request.contextPath }/user/jtpath/usercenter">个人信息</a></li>
					<li><a href="${pageContext.request.contextPath }/user/toSafe">安全设置</a></li>
					<li><a href="${pageContext.request.contextPath }/user/asd?id=${user.id}">收货地址</a></li>
				</ul></li>
			<li class="person"><a href="#">我的交易</a>
				<ul>
					<li class="person"><a href="${pageContext.request.contextPath }/user/jtpath/order">订单管理</a></li>
				</ul></li>
			<li class="person"><a href="#">我的资产</a>
				<ul>
					<li><a href="${pageContext.request.contextPath }/user/getList?id=${user.id}">优惠券 </a></li>
					<li><a href="bill.html">账单明细</a></li>
				</ul></li>

			<li class="person"><a href="#">我的小窝</a>
				<ul>
					<li><a href="collection.html">收藏</a></li>
					<li><a href="${pageContext.request.contextPath }/user/foot">足迹</a></li>
					<li><a href="${pageContext.request.contextPath }/user/getCs?id=${user.id}">评价</a></li>
					<li><a href="news.html">消息</a></li>
				</ul></li>

		</ul>
	</c:if>
</aside>