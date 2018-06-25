<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<title>安全设置</title>

<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/admin.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/amazeui.css"
	rel="stylesheet" type="text/css">

<link href="${pageContext.request.contextPath }/css/personal.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/infstyle.css"
	rel="stylesheet" type="text/css">
</head>

<body>
	<jsp:include page="../common/include_top.jsp" />

	<b class="line"></b>
	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<!--标题 -->
				<div class="user-safety">
					<div class="am-cf am-padding">
						<div class="am-fl am-cf">
							<strong class="am-text-danger am-text-lg">账户安全</strong> / <small>Set&nbsp;up&nbsp;Safety</small>
						</div>
					</div>
					<hr />

					<!--头像 -->
					<div class="user-infoPic">
						<div class="filePic">
							<input type="file" class="inputPic" name="file"
								allowexts="gif,jpeg,jpg,png,bmp" accept="image/*"> <img
								class="am-circle am-img-thumbnail" src="${user.headImg }" alt="" />
						</div>
						<p class="am-form-help">头像</p>
						<div class="info-m">
							<div>
								<b>用户名：${user.username }<i></i></b>
							</div>
							<div class="u-level">
								<span class="rank r2"> <s class="vip1"></s><a
									class="classes" href="#">会员:${user.vipLevel }级</a>
								</span>
							</div>
							<div class="u-safety">
								<a href="safety.html"> 账户安全 <span class="u-profile"><i
										class="bc_ee0000" style="width: 60px;" width="0">60分</i></span>
								</a>
							</div>
						</div>
					</div>

					<div class="check">
						<ul>
							<li><i class="i-safety-lock"></i>
								<div class="m-left">
									<div class="fore1">登录密码</div>
									<div class="fore2">
										<small>为保证您购物安全，建议您定期更改密码以保护账户安全。</small>
									</div>
								</div>
								<div class="fore3">
									<a href="password.html"> <a
										href="${pageContext.request.contextPath }/user/toPwd"
										class="am-btn am-btn-secondary">修改</a>
									</a>
								</div></li>
							<li><i class="i-safety-wallet"></i>
								<div class="m-left">
									<div class="fore1">支付密码</div>
									<div class="fore2">
										<small>启用支付密码功能，为您资产账户安全加把锁。</small>
									</div>
								</div>
								<div class="fore3">
									<a href="setpay.html"> <c:if test="${qi==1 }">
											<a
												href="${pageContext.request.contextPath }/user/jtpath/pay-pass"
												class="am-btn am-btn-secondary">启用成功</a>
										</c:if> <c:if test="${qi==0 }">
											<a
												href="${pageContext.request.contextPath }/user/jtpath/pay-pass"
												class="am-btn am-btn-secondary">立即启用</a>
										</c:if>
									</a>
								</div></li>
							<li><i class="i-safety-mail"></i>
								<div class="m-left">
									<div class="fore1">邮箱验证</div>
									<div class="fore2">
										<small>您验证的邮箱：<u></u> 可用于快速找回登录密码
										</small>
									</div>
								</div>
								<div class="fore3">
									<a href="email.html"> <a href="${pageContext.request.contextPath }/user/jtpath/bindemail"
										class="am-btn am-btn-secondary" type="button">换绑</a>
									</a>
								</div></li>
							<li><i class="i-safety-idcard"></i>
								<div class="m-left">
									<div class="fore1">实名认证</div>
									<div class="fore2">
										<small>用于提升账号的安全性和信任级别，认证后不能修改认证信息。</small>
									</div>
								</div>
								<div class="fore3">
									<a href="${pageContext.request.contextPath }/user/jtpath/bindidcard">
										<div class="am-btn am-btn-secondary">认证</div>
									</a>
								</div></li>
						</ul>
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
<script type="text/javascript">
	/* 修改登陆密码 */
	function modify(id, password) {
		//${pageContext.request.contextPath }/user/toModifyPwd
	}
</script>
</html>