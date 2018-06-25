<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

<title>验证邮箱</title>

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
	<!--头 -->
	<jsp:include page="../common/include_top.jsp" />
	<b class="line"></b>
	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<div class="am-cf am-padding">
					<div class="am-fl am-cf">
						<strong class="am-text-danger am-text-lg">绑定邮箱</strong> / <small>Email</small>
					</div>
				</div>
				<hr />
				<!--进度条-->
				<div class="m-progress">
					<div class="m-progress-list">
						<span class="step-1 step"> <em class="u-progress-stage-bg"></em>
							<i class="u-stage-icon-inner">1<em class="bg"></em></i>
							<p class="stage-name">验证邮箱</p>
						</span> <span class="step-2 step"> <em class="u-progress-stage-bg"></em>
							<i class="u-stage-icon-inner">2<em class="bg"></em></i>
							<p class="stage-name">完成</p>
						</span> <span class="u-progress-placeholder"></span>
					</div>
					<div class="u-progress-bar total-steps-2">
						<div class="u-progress-bar-inner"></div>
					</div>
				</div>
				<form class="am-form am-form-horizontal" id="emailForm">
					<div class="am-form-group">
						<label for="user-email" class="am-form-label">验证邮箱</label>
						<div class="am-form-content">
							<input type="tel" id="user-email" placeholder="请输入邮箱地址" required
								onblur="checkemail(this)"> <input type="hidden"
								id="oldemail" value="${user.email }">
						</div>
					</div>
					<div class="am-form-group code">
						<label for="user-code" class="am-form-label">验证码</label>
						<div class="am-form-content">
							<input type="tel" id="user-code" placeholder="验证码">
						</div>
						<a class="btn" href="javascript:void(0);"
							onclick="sendMobileCode();" id="sendMobileCode">
							<div class="am-btn am-btn-danger">验证码</div>
						</a>
					</div>
					<div class="info-btn">
						<button type="button" onclick="save()"
							class="am-btn am-btn-danger">保存修改</button>
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
	function checkemail(obj) {
		var em = $(obj).val();
		var result = em
				.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/);
		if (result == null) {
			alert("请输入正确的邮箱格式");
			$(obj).val("");
		} else {
			var oldem = $("#oldemail").val();
			if (oldem != null) {
				if (oldem != em) {
					alert("输入邮箱与绑定邮箱不匹配");
					$(obj).val("");
				}
			}
		}
	}
	/* //验证验证码
	function checkyzm(obj) {
		var ym = $(obj).val();
		var yzm = sendMobileCode();
		if (ym.toLowerCase() != yzm.toLowerCase()) {
			alert("验证码输入错误");
			$(obj).val("");
		}
	} */
	//生成验证码
	var chars = [ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B',
			'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O',
			'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' ];
	function sendMobileCode() {
		var res = "";
		for (var i = 0; i < 5; i++) {
			var id = Math.ceil(Math.random() * 35);
			res += chars[id];
		}
		$("#user-code").val(res);
		return res;
	}
	//修改
	function save() {
		$.ajax({
			url:"${pageContext.request.contextPath }/user/toModifyEmail",
			type:"post",
			data:$("#emailForm").serialize(),
			success:function(data){
				if (data=="s") {
					alert("修改成功");
					location.history.go(-1);
				}else {
					alert("修改失败");
					location.reload();
				}
			}
		})
	}
</script>
</html>