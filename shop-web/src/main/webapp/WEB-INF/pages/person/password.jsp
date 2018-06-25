<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

<title>修改密码</title>

<link href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet"
	type="text/css">

<link href="${pageContext.request.contextPath }/css/personal.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/stepstyle.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/sweetalert/sweetalert.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.7.2.min.js"></script>
<script src="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/js/amazeui.js"></script>
<script src="${pageContext.request.contextPath }/js/postAjax.js"></script>
<script src="${pageContext.request.contextPath }/js/sweetalert/sweetalert.min.js"></script>

</head>

<body>

	<jsp:include page="../common/include_top.jsp" />
	<b class="line"></b>
	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<div class="am-cf am-padding">
					<div class="am-fl am-cf">
						<strong class="am-text-danger am-text-lg">修改密码</strong> / <small>Password</small>
					</div>
				</div>
				<hr />
				<!--进度条-->
				<div class="m-progress">
					<div class="m-progress-list">
						<span class="step-1 step"> <em class="u-progress-stage-bg"></em>
							<i class="u-stage-icon-inner">1<em class="bg"></em></i>
							<p class="stage-name">重置密码</p>
						</span> <span class="step-2 step"> <em class="u-progress-stage-bg"></em>
							<i class="u-stage-icon-inner">2<em class="bg"></em></i>
							<p class="stage-name">完成</p>
						</span> <span class="u-progress-placeholder"></span>
					</div>
					<div class="u-progress-bar total-steps-2">
						<div class="u-progress-bar-inner"></div>
					</div>
				</div>
				<form class="am-form am-form-horizontal" action="${pageContext.request.contextPath }/user/toModifyPwd" id="passwordForm" method="post">
					<div class="am-form-group">
						<label for="user-old-password" class="am-form-label">原密码</label>
						<div class="am-form-content">
							<input type="password" id="user-old-password"
								placeholder="请输入原登录密码" onblur="checkPwd(this)">
								<input type="hidden" id="oldpwd" value="${user.password }">
								<input type="hidden" value="${user.id }" name="id">
						</div>
					</div>
					<div class="am-form-group">
						<label for="user-new-password" class="am-form-label">新密码</label>
						<div class="am-form-content">
							<input type="password" id="user-new-password"
								placeholder="由数字、字母组合">
						</div>
					</div>
					<div class="am-form-group">
						<label for="user-confirm-password" class="am-form-label">确认密码</label>
						<div class="am-form-content">
							<input type="password"
								id="user-confirm-password" onblur="checkpwd(this)" placeholder="请再次输入上面的密码" name="password">
						</div>
					</div>
					<div class="info-btn">
						<input class="am-btn am-btn-danger" type="submit">保存修改</input>
					</div>

				</form>

			</div>
			<!--底部-->
			<jsp:include page="../common/footer.jsp" />
		</div>
		<!-- 菜单 -->
		<jsp:include page="../common/include_menu.jsp" />
	</div>
	<script type="text/javascript">
		function checkPwd(obj) {
			//校验原密码
			var old = $("#oldpwd").val();
			var newpwd = $(obj).val();
			if (old!=newpwd) {
				alert("原密码输入错误");
				$(obj).val("");
			}
		}
		//比对两次输入密码是否一致
		function checkpwd(obj) {
			var npwd = $("#user-new-password").val();
			var rpwd= $(obj).val();
			if (npwd!=rpwd) {
				alert("两次密码输入不一致");
				$(obj).val("");
			}
		}
	</script>
</body>
</html>