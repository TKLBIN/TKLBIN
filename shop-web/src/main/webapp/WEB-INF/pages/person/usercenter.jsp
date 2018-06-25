<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

<title>个人资料</title>
<jsp:include page="../common/include_cus.jsp" />
</head>

<body>
    
	<jsp:include page="../common/include_top.jsp" />
   
	<b class="line"></b>
	
	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<div class="user-info">
					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf">
							<strong class="am-text-danger am-text-lg">个人资料</strong> / <small>Personal&nbsp;information</small>
						</div>
					</div>
					<hr />
					<form class="am-form am-form-horizontal" id="editForm"
						method="post" enctype="multipart/form-data"
						action="/shop-web/user/updateUser">
						<!--头像 -->
						<div class="user-infoPic">

							<div class="filePic">
								
								<input type="file" class="inputPic" name="filImg" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*">
									
									 <img class="am-circle am-img-thumbnail"
									 src="${user.headImg}" alt="" />
							</div>

							<p class="am-form-help">头像</p>
                             
							<div class="info-m">
								<div>
								    
									<b>用户名：${user.username==null?'未命名':user.username  }<i></i></b>
								</div>
								<div class="u-level">
									<span class="rank r2"> <s class="vip1"></s> <a
										class="classes" href="#">会员:${user.vipLevel==null?'1':user.vipLevel }级</a>
									</span>
								</div>
								<div class="u-safety">
									<a href="safety.html"> 账户安全 <span class="u-profile"><i
											class="bc_ee0000" style="width: 60px;" width="0">${num }分</i></span>
									</a>&nbsp;&nbsp;&nbsp;<a href="/shop-web/user/toPwd"><u>修改密码</u></a>
								</div>
							</div>
						</div>

						<!--个人信息 -->
						<div class="info-main">
							<div class="am-form-group">
								<label for="user-name2" class="am-form-label">昵称 *</label>
								<div class="am-form-content">
									<input type="text" id="user-name2" 
									    name="nickname"
									    placeholder="nickname"
										value="${user.nickname }">
										<input type="hidden" name="id" value="${user.id}">
								</div>
							</div>

							<div class="am-form-group">
								<label for="user-name" class="am-form-label">姓名</label>
								<div class="am-form-content">
									<input type="text" id="user-name2" name="username" placeholder="name"
										value="${user.username }">
								</div>
							</div>

							<div class="am-form-group">
								<label class="am-form-label">性别</label>
								<div class="am-form-content sex">
									<label class="am-radio-inline"> 
										<input type="radio" name="sex" value="男" <c:if test="${user.sex=='男' }">checked</c:if> data-am-ucheck> 男
									</label> <label class="am-radio-inline"> 
										<input type="radio" name="sex" value="女" <c:if test="${user.sex=='女' }">checked</c:if> data-am-ucheck> 女
									</label> <label class="am-radio-inline"> 
										<input type="radio" name="sex" value="secret" <c:if test="${user.sex==''|| user.sex==null }">checked</c:if> data-am-ucheck> 保密
									</label>
								</div>
							</div>

							<div class="am-form-group">
								<label for="user-birth" class="am-form-label">生日</label>
								<div class="am-form-content birth">
									<input type="date" placeholder="birthday"
									   name="birthday"
										value="${user.birthday }">
								</div>

							</div>
							<div class="am-form-group">
								<label for="user-phone" class="am-form-label">电话 *</label>
								<div class="am-form-content">
									<input id="user-phone" placeholder="telephonenumber"
									name="telephone"
										type="text" value="${user.telephone }">

								</div>
							</div>
							<div class="am-form-group">
								<label for="user-email" class="am-form-label">电子邮件</label>
								<div class="am-form-content">
									<input id="user-email" placeholder="Email" type="text"
									    name="email"
										value="${user.email }">
								</div>
							</div>
							<div class="am-form-group address">
								<label for="user-address" class="am-form-label">收货地址</label>
								<div class="am-form-content address">
									<a href="${pageContext.request.contextPath }/user/toaddress">
										<p class="new-mu_l2cw">
											<span class="province">湖北</span>省 <span class="city">武汉</span>市
											<span class="dist">洪山</span>区 <span class="street">雄楚大道666号(中南财经政法大学)</span>
											<span class="am-icon-angle-right"></span>
										</p>
									</a>

								</div>
							</div>
							<div class="am-form-group safety">
								<label for="user-safety" class="am-form-label">账号安全</label>
								<div class="am-form-content safety">
									<a href="safety.html"> <span class="am-icon-angle-right"></span>

									</a>

								</div>
							</div>
							<div class="info-btn">
								<button class="am-btn am-btn-danger" type="submit" ">保存修改</button>
								
							</div>
					</form>
				</div>

			</div>
      
		</div>
		<!--底部-->
		<jsp:include page="../common/footer.jsp" />
	</div>

	<!-- 菜单 -->
	<jsp:include page="../common/include_menu.jsp" />
	</div>
	<script type="text/javascript">
		/* function updateUser(){
			$.ajax({
				url:"/shop-web/user/updateUser",
				type:"post",
				data:$("#editForm").serialize(),
				success:function(data){
					if(data=="s"){
						alert("修改成功")
					}
				}
			})
		} */
	</script>
</body>

</html>