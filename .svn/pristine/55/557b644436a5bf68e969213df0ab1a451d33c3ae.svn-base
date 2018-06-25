<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

<title>实名认证</title>

<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/admin.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/amazeui.css"
	rel="stylesheet" type="text/css">

<link href="${pageContext.request.contextPath }/css/personal.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/stepstyle.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/sweetalert/sweetalert.css"
	type="text/css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.7.2.min.js"></script>
<script
	src="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/js/amazeui.js"></script>
<script src="${pageContext.request.contextPath }/js/postAjax.js"></script>
<script
	src="${pageContext.request.contextPath }/js/sweetalert/sweetalert.min.js"></script>

</head>

<body>
	<jsp:include page="../common/include_top.jsp" />
	<b class="line"></b>
	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<div class="am-cf am-padding">
					<div class="am-fl am-cf">
						<strong class="am-text-danger am-text-lg">实名认证</strong> / <small>Real&nbsp;authentication</small>
					</div>
				</div>
				<hr />
				<!--进度条-->
				<div class="m-progress">
					<div class="m-progress-list">
						<span class="step-1 step"> <em class="u-progress-stage-bg"></em>
							<i class="u-stage-icon-inner">1<em class="bg"></em></i>
							<p class="stage-name">实名认证</p>
						</span> <span class="step-2 step"> <em class="u-progress-stage-bg"></em>
							<i class="u-stage-icon-inner">2<em class="bg"></em></i>
							<p class="stage-name">完成</p>
						</span> <span class="u-progress-placeholder"></span>
					</div>
					<div class="u-progress-bar total-steps-2">
						<div class="u-progress-bar-inner"></div>
					</div>
				</div>
				<form class="am-form am-form-horizontal" id="smrzForm">
					<div class="am-form-group bind">
						<label for="user-info" class="am-form-label">账户名</label>
						<div class="am-form-content">
							<span id="user-info">${user.username }</span> <input
								type="hidden" name="id" value="${user.id }" />
						</div>
					</div>
					<div class="am-form-group">
						<label for="user-name" class="am-form-label">真实姓名</label>
						<div class="am-form-content">
							<c:if test="${ empty user.truename }">
								<input type="text" id="user-name" placeholder="请输入您的真实姓名"
									name="truename">
							</c:if>
							<c:if test="${ !empty user.truename }">
								<input type="text" id="user-name"
									placeholder="${user.truename }" readonly="readonly">
							</c:if>
						</div>
					</div>
					<div class="am-form-group">
						<label for="user-IDcard" class="am-form-label">身份证号</label>
						<div class="am-form-content">
							<c:if test="${ empty user.idCard }">
								<input type="tel" id="user-IDcard" placeholder="请输入您的身份证信息"
									onblur="checksfz(this)" name="idCard">
							</c:if>
							<c:if test="${ !empty user.idCard }">
								<input type="text" id="user-name" placeholder="${user.idCard }"
									readonly="readonly">
							</c:if>

						</div>
					</div>
					<div class="info-btn">
						<c:if test="${ empty user.idCard || empty user.truename }">
							<div class="am-btn am-btn-danger" onclick="save()">保存修改</div>
						</c:if>
						<c:if test="${ !empty user.idCard && !empty user.truename }">
							<div class="am-btn am-btn-danger" onclick="resave()">保存修改</div>
						</c:if>
					</div>

				</form>

			</div>
			<!--底部-->
			<jsp:include page="../common/footer.jsp" />
		</div>

		<jsp:include page="../common/include_menu.jsp" />
	</div>

</body>
<script type="text/javascript">
	//修改
	function save() {
		$.ajax({
			url : "${pageContext.request.contextPath }/user/toModifyIdCard",
			type : "post",
			data : $("#smrzForm").serialize(),
			success : function(data) {
				if (data == "s") {
					alert("修改成功");
					window.location.go(-1); //刷新上一页
				} else {
					alert("修改失败");
					window.location.reload();
				}
			}
		})
	}
	function resave() {
		alert("不能够重复认证哦");
		window.location = "${pageContext.request.contextPath }/user/toSafe";
	}
	//验证身份证
	function checksfz(obj) {
		var v = $(obj).val();
		var sfz = v
				.match(/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/);
		if (sfz==null) {
			alert("请输入正确的身份证格式");
			$(obj).val("");
		}
	}
</script>
</html>