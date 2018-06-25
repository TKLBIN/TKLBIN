<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<title>地址管理</title>
<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/admin.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/amazeui.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/personal.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/addstyle.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/sweetalert/sweetalert.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/city-picker.css">
<script
	src="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/js/jquery.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/js/amazeui.js"></script>
<script src="${pageContext.request.contextPath }/js/postAjax.js"></script>
<script
	src="${pageContext.request.contextPath }/js/sweetalert/sweetalert.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/city-picker.data.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/city-picker.js"></script>

</head>

<body onload="">
	<!--头 -->
	<jsp:include page="../common/include_top.jsp" />

	<b class="line"></b>

	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<div class="user-address">
					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf">
							<strong class="am-text-danger am-text-lg">地址管理</strong> / <small>Address&nbsp;list</small>
						</div>
					</div>
					<hr />
					<ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails">
						<c:forEach var="add" items="${adds }">
							<c:choose>
								<c:when test="${add.isDefault==1 }">
									<li class="user-addresslist defaultAddr"><span
										class="new-option-r"><i class="am-icon-check-circle"></i>默认地址</span>
										<p class="new-tit new-p-re">
											<span class="new-txt">${add.peopleName }</span> <span
												class="new-txt-rd2">${add.telephone }</span>
											<!-- 默认地址ID -->
											<span style="display: none;" id="moren">${add.id }</span>
										</p>
										<div class="new-mu_l2a new-p-re">
											<p class="new-mu_l2cw">
												<span class="title">地址：</span> <span class="province">${fn:split(add.place,"/")[0]}</span>
												<span class="city">${fn:split(add.place,"/")[1]}</span> <span
													class="dist">${fn:split(add.place,"/")[2]}</span> <br>
												<span class="street">${add.addressDetail }</span> <span
													style="display: none;">${add.id }</span>
											</p>
										</div>
										<div class="new-addr-btn">
											<a href="javascript:;" onclick="edit(this)"><i
												class="am-icon-edit"></i>编辑</a> <span class="new-addr-bar">|</span>
											<a href="javascript:void(0);" onclick="del(${add.id })" ><i class="am-icon-trash"></i>删除</a>
										</div></li>
								</c:when>
								<c:otherwise>
									<li class="user-addresslist"><span class="new-option-r"
										onclick="setMo(this)"><i class="am-icon-check-circle"></i>
											设为默认 </span> <!--需要设置为默认的ID  --> <span style="display: none;">${add.id }</span>
										<p class="new-tit new-p-re">
											<span class="new-txt">${add.peopleName }</span> <span
												class="new-txt-rd2">${add.telephone }</span>
										</p>
										<div class="new-mu_l2a new-p-re">
											<p class="new-mu_l2cw">
												<span class="title">地址：</span> <span class="province">${fn:split(add.place,"/")[0]}</span>
												<span class="city">${fn:split(add.place,"/")[1]}</span> <span
													class="dist">${fn:split(add.place,"/")[2]}</span> <br>
												<span class="street">${add.addressDetail }</span> <span
													style="display: none;">${add.id }</span>
											</p>
										</div>
										<div class="new-addr-btn">
											<a href="javascript:;" onclick="edit(this)"><i
												class="am-icon-edit"></i>编辑</a> <span class="new-addr-bar">|</span>
											<a href="javascript:void(0);" onclick="del(${add.id })"><i class="am-icon-trash"></i>删除</a>
										</div></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</ul>

					<div class="clear"></div>
					<a class="new-abtn-type"
						data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">添加新地址</a>
					<!--例子-->
					<div class="am-modal am-modal-no-btn" id="doc-modal-1">

						<div class="add-dress">

							<!--标题 -->
							<div class="am-cf am-padding">
								<div class="am-fl am-cf">
									<strong class="am-text-danger am-text-lg">新增（修改）地址</strong> / <small>Add&nbsp;&&nbsp;Update&nbsp;address</small>
								</div>
							</div>
							<hr />

							<div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
								<form class="am-form am-form-horizontal" id="editForm">

									<div class="am-form-group">
										<label for="user-name" class="am-form-label">收货人</label>
										<div class="am-form-content">
											<input type="text" id="user-name" placeholder="收货人"
												name="peopleName">
											<!-- 客户id -->
											<input type="hidden" id="customerID" name="customerId"
												value="${user.id }" />
										</div>
									</div>

									<div class="am-form-group">
										<label for="user-phone" class="am-form-label">手机号码</label>
										<div class="am-form-content">
											<input id="user-phone" placeholder="手机号必填" type="email"
												name="telephone">
										</div>
									</div>
									<div class="am-form-group">
										<label for="user-address" class="am-form-label">所在地</label>
										<div name="place" class="am-form-content address">
											<div style="">
												<input id="city-picker3" name="place" class="form-control"
													readonly type="text" value="" data-toggle="city-picker">
											</div>
										</div>
									</div>

									<div class="am-form-group">
										<label for="user-intro" class="am-form-label">详细地址</label>
										<div class="am-form-content">
											<textarea rows="3" id="user-intro" placeholder="输入详细地址"
												name="addressDetail"></textarea>
											<small>100字以内写出你的详细地址...</small>
										</div>
									</div>

									<div class="am-form-group">
										<div class="am-u-sm-9 am-u-sm-push-3">
											<a class="am-btn am-btn-danger" type="button"
												onclick="save()">保存</a> <a href="javascript: void(0)"
												class="am-close am-btn am-btn-danger" data-am-modal-close>取消</a>
										</div>
									</div>
								</form>
							</div>

						</div>

					</div>

				</div>

				<script type="text/javascript">
					$(document).ready(
							function() {
								$(".new-option-r").click(
										function() {
											$(this).parent('.user-addresslist')
													.addClass("defaultAddr")
													.siblings().removeClass(
															"defaultAddr");
										});

								var $ww = $(window).width();
								if ($ww > 640) {
									$("#doc-modal-1").removeClass(
											"am-modal am-modal-no-btn")
								}

							})
				</script>

				<div class="clear"></div>

			</div>
			<!--底部-->
			<jsp:include page="../common/footer.jsp" />
		</div>

		<!-- 菜单 -->
		<jsp:include page="../common/include_menu.jsp" />
	</div>

</body>
<script type="text/javascript">
	var id = 0;
	//进入修改
	function edit(obj) {
		//光标下滑
		$('html,body').animate({
			scrollTop : $('.new-addr-bar').offset().top
		}, 800);
		//数据回显
		var p = $(obj).parent().siblings();
		var namephone = p.eq(1);
		var name = namephone.children().eq(0).text();//用户名
		var phone = namephone.children().eq(1).text();//电话
		var adds = p.eq(2).children().children();
		var addp = adds.eq(1).text();//省
		var addc = adds.eq(2).text();//市
		var addd = adds.eq(3).text();//区 
		var add = adds.eq(5).text();//详细地址
		id = adds.eq(6).text();//地址id
		$("#user-name").val(name);
		$("#user-phone").val(phone);
		$("#city-picker3").val(addp+"/"+addc+"/"+addd);
		$("#user-intro").val(add);
	}

	//提交
	function save() {
		$.ajax({
				url : "${pageContext.request.contextPath }/user/modifyAdd?id="
						+ id,
				data : $("#editForm").serialize(),
				type : "post",
				success : function(data) {
					if (data == "s") {
						alert("操作成功");
						location.reload();
					} else {
						alert("操作失败");
						//location.reload();
					}
				}
			})
	}

	//设置默认地址
	function setMo(obj) {
		var morenId = $("#moren").text();
		var setId = $(obj).next("span").text();
		var ar = new Array();
		ar.push(morenId);
		ar.push(setId);
		$.ajax({
			url : "${pageContext.request.contextPath }/user/moren",
			type : "post",
			data : JSON.stringify(ar),
			contentType : "application/json",
			success : function(data) {
				if (data == "s") {
					location.reload();
				} else {
					alrt("操作失败");
					location.reload();
				}
			}
		})

	}
	//删除地址
	function del(id){
		var r = window.confirm("确定要删除该条地址码?");
		if (r) {
			$.post("${pageContext.request.contextPath }/user/deladd?id="+id,function(data){
				if (data=="s") {
					alert("操作成功");
					location.reload();
				}
				else {
					alrt("操作失败");
					location.reload();
				}
			})
		}
	}
</script>
</html>