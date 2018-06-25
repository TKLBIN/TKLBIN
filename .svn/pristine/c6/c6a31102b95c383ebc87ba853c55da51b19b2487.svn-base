<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

<title>支付密码</title>

<link href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet"
	type="text/css">

<link href="${pageContext.request.contextPath }/css/personal.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/stepstyle.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/sweetalert/sweetalert.css"
	type="text/css">
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
						<strong class="am-text-danger am-text-lg">支付密码</strong> / <small>Set&nbsp;Pay&nbsp;Password</small>
					</div>
				</div>
				<hr />
				<!--进度条-->
				<div class="m-progress">
					<div class="m-progress-list">
						<span class="step-1 step"> <em class="u-progress-stage-bg"></em>
							<i class="u-stage-icon-inner">1<em class="bg"></em></i>
							<p class="stage-name">设置支付密码</p>
						</span> <span class="step-2 step"> <em class="u-progress-stage-bg"></em>
							<i class="u-stage-icon-inner">2<em class="bg"></em></i>
							<p class="stage-name">完成</p>
						</span> <span class="u-progress-placeholder"></span>
					</div>
					<div class="u-progress-bar total-steps-2">
						<div class="u-progress-bar-inner"></div>
					</div>
				</div>
				<form class="am-form am-form-horizontal" id="passwordForm">
					<div class="am-form-group">
						<label for="user-password" class="am-form-label">支付密码</label>
						<div class="am-form-content">
							<input  id="user-password" type="password" onblur="checkLength(this)"
								placeholder="6位数字">
							<input   type="hidden" name="id" value="${user.id }">
						</div>
					</div>
					<div class="am-form-group">
						<label for="user-confirm-password" class="am-form-label">确认密码</label>
						<div class="am-form-content">
							<input type="password" id="user-confirm-password" name="payPassword"
							onblur="checkpay(this)"	placeholder="请再次输入上面的密码">
						</div>
					</div>
					<div class="info-btn">
						<button class="am-btn am-btn-danger" type="button" onclick="sub()">保存修改</button>
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
		//检查密码长度
	function checkLength(obj) {
		var pay = $(obj).val();
		if (pay.length!=6) {
			alert("请输入6位密码");
			$(obj).val("");
		}else if (isNaN(pay)) {
			alert("请输入一个6位数字");
			$(obj).val("");
		}
	}
	function checkpay(obj) {
		var old = $("#user-password").val();
		var pwd = $(obj).val();
		if (old!=pwd) {
			alert("两次密码输入不一致");
			$(obj).val("");
		}
	}
	//提交
	function sub() {
		$.ajax({
			url:"${pageContext.request.contextPath }/user/toModifyPay",
			data:$("#passwordForm").serialize(),
			type:"post",
			success:function(data){
				if (data=="s") {
					alert("修改成功");
					window.location="${pageContext.request.contextPath }/user/toSafe";
				}
			}
		})
	}
</script>
</html>