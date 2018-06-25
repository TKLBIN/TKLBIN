<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>登录</title>

<jsp:include page="common/include.jsp" />

</head>

<body>

	<div class="login-boxtitle">
		<a href="${pageContext.request.contextPath }/home/toHome"><img alt="logo"
			src="/shop-web/images/logobig.png" /></a>
	</div>

	<div class="login-banner">
		<div class="login-main">
			<div class="login-banner-bg">
				<span></span><img
					src="/shop-web/images/big.jpg" />
			</div>
			<div class="login-box">

				<h3 class="title">登录商城</h3>

				<div class="clear"></div>


				<form id="loginForm">
					<div class="login-form">
						<div class="user-name">
							<label for="user"><i class="am-icon-user"></i></label> <input
								type="text" id="user" placeholder="邮箱/手机/用户名" name="username">
						</div>
						<div class="user-pass">
							<label for="password"><i class="am-icon-lock"></i></label> <input
								type="password" id="password" placeholder="请输入密码" name="password">
						</div>

					</div>

					<div class="login-links">
						<a href="#" class="am-fr">忘记密码</a> 
						<a href="${pageContext.request.contextPath }/user/jt/register" class="zcnext am-fr am-btn-default">注册</a> <br />
					</div>
				</form>

				<div class="am-cf">
					<input type="button" name="" value="登 录" id="loginButton"
						class="am-btn am-btn-primary am-btn-sm">
				</div>
				<div class="partner">
					<h3>合作账号</h3>
					<div class="am-btn-group">
						<li><a href="#"><i class="am-icon-qq am-icon-sm"></i><span>QQ登录</span></a></li>
						<li><a href="#"><i class="am-icon-weibo am-icon-sm"></i><span>微博登录</span>
						</a></li>
						<li><a href="#"><i class="am-icon-weixin am-icon-sm"></i><span>微信登录</span>
						</a></li>
					</div>
				</div>

			</div>
		</div>
	</div>

	<jsp:include page="common/footer.jsp"></jsp:include>
</body>

<script type="text/javascript">
	$("#loginButton").click(function() {
		$.ajax({
			url:"${pageContext.request.contextPath }/user/login",
			data:$("#loginForm").serialize(),
			type:"post",
			success:function(data){
				if (data=="s") {
					//跳转进入个人中心
					location.href="${pageContext.request.contextPath }/user/tocenter";
				}else {
					alert("登陆失败,请重新登陆");
					$("#user").val("");
					$("#password").val("");
				}
			}
		})
	})
</script>
</html>