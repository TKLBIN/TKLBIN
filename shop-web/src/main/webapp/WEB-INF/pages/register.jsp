<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head lang="en">
<meta charset="UTF-8">
<title>注册</title>

<jsp:include page="common/include.jsp" />

</head>

<body>

	<div class="login-boxtitle">
		<a href="home/demo.html"><img alt=""
			src="${pageContext.request.contextPath }/images/logobig.png" /></a>
	</div>

	<div class="res-banner">
		<div class="res-main">
			<div class="login-banner-bg">
				<span></span><img
					src="${pageContext.request.contextPath }/images/big.jpg" />
			</div>
			<div class="login-box">

				<div class="am-tabs" id="doc-my-tabs">
					<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
						<li class="am-active"><a href="">邮箱注册</a></li>
						<li><a href="">手机号注册</a></li>
					</ul>

					<div class="am-tabs-bd">
						<div class="am-tab-panel am-active">
							<form method="post" id="emailRegForm">

								<div class="user-email">
									<label for="email"><i class="am-icon-envelope-o"></i></label> <input
										type="email" id="email" name="email" placeholder="请输入邮箱账号"
										onblur="resEmail(this.value)">
								</div>
								<div class="user-pass">
									<label for="password"><i class="am-icon-lock"></i></label> <input
										type="password" id="password" name="password"
										placeholder="设置密码">
								</div>
								<div class="user-pass">
									<label for="passwordRepeat"><i class="am-icon-lock"></i></label>
									<input type="password" id="passwordRepeat" placeholder="确认密码"
										onblur="checkPwd(this.value)">
								</div>
								<input type="hidden" id="email-username" />
							</form>

							<div class="login-links">
								<label for="reader-me"> <input id="email-reader-me"
									type="checkbox"> 点击表示您同意商城《服务协议》
								</label>
							</div>
							<div class="am-cf">
								<input id="email-reg" type="button" name=""
									onclick="registerUser()" value="注册"
									class="am-btn am-btn-primary am-btn-sm am-fl">
							</div>

						</div>

						<div class="am-tab-panel">
							<form method="post" id="phoneRegForm">
								<div class="user-phone">
									<label for="phone"><i
										class="am-icon-mobile-phone am-icon-md"></i></label> <input type="tel"
										name="telephone" id="phone" placeholder="请输入手机号"
										onblur="resPhone(this.value)">
								</div>
								<div class="verification">
									<label for="code"><i class="am-icon-code-fork"></i></label> <input
										type="tel" name="" id="user-code" placeholder="请输入验证码">
									<a class="btn" href="javascript:void(0);"
										onclick="sendMobileCode()" id="sendMobileCode"> <span
										id="dyMobileButton">获取</span></a>
								</div>
								<div class="user-pass">
									<label for="password"><i class="am-icon-lock"></i></label> <input
										type="password" name="password" id="password1"
										placeholder="设置密码">
								</div>
								<div class="user-pass">
									<label for="passwordRepeat"><i class="am-icon-lock"></i></label>
									<input type="password" name="" id="passwordRepeat"
										placeholder="确认密码" onblur="checkPwd1(this.value)">
								</div>
							</form>
							<div class="login-links">
								<label for="reader-me"> <input id="readerme"
									type="checkbox"> 点击表示您同意商城《服务协议》
								</label>
							</div>
							<div class="am-cf">
								<input type="button" id="regButton"
									onclick="registerUserByPhone()" name="" value="注册"
									class="am-btn am-btn-primary am-btn-sm am-fl">
							</div>

							<hr>
						</div>

						<script>
							$(function() {
								$('#doc-my-tabs').tabs();
							})
						</script>

					</div>
				</div>
			</div>
		</div>

		<jsp:include page="common/footer.jsp"></jsp:include>
</body>
<script type="text/javascript">
	function resEmail(email) {
		var result = email
				.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/);
		if (result == null) {
			if (confirm("请输入正确的邮箱格式")) {
				window.location.reload();
			} else {
				$.ajax({
					url : "/shop-web/user/resEmail?email=" + email,
					type : "post",
					success : function(data) {
						if (data == "e") {
							alert("此邮箱已被注册")
							window.location.reload();
						}
					}
				})
			}
		}

	}
	function resPhone(phone) {
		if (phone != null & phone != '') {
			$.ajax({
				url : "/shop-web/user/resPhone?telephone=" + phone,
				type : "post",
				success : function(data) {
					if (data == "e") {
						alert("此手机号已被注册")
						window.location.reload();
					}
				}
			})
		}
	}

	function checkPwd(pwd) {

		var pwd1 = $("#password").val();
		console.log(pwd1);
		if (pwd != pwd1) {
			alert("两次密码输入不一致");
		}
	}
	function checkPwd1(pwd) {

		var pwd1 = $("#password1").val();
		console.log(pwd1);
		if (pwd != pwd1) {
			alert("两次密码输入不一致");
		}
	}
	function registerUser() {
		if ($("#email-reader-me").prop("checked")) {
			$.ajax({
				url : "/shop-web/user/toDoregister",
				type : "post",
				data : $("#emailRegForm").serialize(),
				success : function(data) {
					if (data == "e") {
						alert("注册失败")
					} else if (data == "s") {
						window.location.href = "/shop-web/user/toLogin";
					}
				}
			})
		} else {
			alert("请同意")

		}

	}
	function registerUserByPhone() {
		
		if ($("#readerme").prop("checked")) {
			$.ajax({
				url : "/shop-web/user/toDoregister",
				type : "post",
				data : $("#phoneRegForm").serialize(),
				success : function(data) {
					if (data == "e") {
						alert("注册失败")
					} else if (data == "s") {
						window.location.href = "/shop-web/user/toLogin";
					}
				}
			})
		} else {
			alert("请同意")

		}

	}
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
</script>
</html>