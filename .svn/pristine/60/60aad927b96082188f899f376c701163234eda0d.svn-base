<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>

		<title>地址管理</title>

		<link href="/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="/css/personal.css" rel="stylesheet" type="text/css">
		<link href="/css/addstyle.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="/css/sweetalert/sweetalert.css" type="text/css">
		<link rel="stylesheet" href="/css/city-picker.css">
		<script src="/AmazeUI-2.4.2/assets/js/jquery.min.js" type="text/javascript"></script>
		<script src="/AmazeUI-2.4.2/assets/js/amazeui.js"></script>
		<script src="/js/postAjax.js"></script>
		<script src="/js/sweetalert/sweetalert.min.js"></script>
		
		<script type="text/javascript" src="/js/city-picker.data.js"></script>
   		<script type="text/javascript" src="/js/city-picker.js"></script>

	</head>

	<body>
		<!--头 -->
		<jsp:include page="../common/include_top.jsp" />
		
		<b class="line"></b>

		<div class="center">
			<div class="col-main">
				<div class="main-wrap">

					<div class="user-address">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">地址管理</strong> / <small>Address&nbsp;list</small></div>
						</div>
						<hr/>
						<ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails">
							<li class="user-addresslist defaultAddr">
								<span class="new-option-r"><i class="am-icon-check-circle"></i>默认地址</span>
								<p class="new-tit new-p-re">
									<span class="new-txt">收货人</span>
									<span class="new-txt-rd2">123456</span>
								</p>
								<div class="new-mu_l2a new-p-re">
									<p class="new-mu_l2cw">
										<span class="title">地址：</span>
										<span class="province">山西</span>省
										<span class="city">太原</span>市
										<span class="dist">小店</span>区
										<span class="street">123123</span></p>
								</div>
								<div class="new-addr-btn">
									<a href="#"><i class="am-icon-edit"></i>编辑</a>
									<span class="new-addr-bar">|</span>
									<a href="javascript:void(0);"><i class="am-icon-trash"></i>删除</a>
								</div>
							</li>
							<li class="user-addresslist">
								<span class="new-option-r"><i class="am-icon-check-circle"></i>设为默认</span>
								<p class="new-tit new-p-re">
									<span class="new-txt">收货人</span>
									<span class="new-txt-rd2">123456</span>
								</p>
								<div class="new-mu_l2a new-p-re">
									<p class="new-mu_l2cw">
										<span class="title">地址：</span>
										<span class="province">山西</span>省
										<span class="city">太原</span>市
										<span class="dist">小店</span>区
										<span class="street">123123</span></p>
								</div>
								<div class="new-addr-btn">
									<a href="#"><i class="am-icon-edit"></i>编辑</a>
									<span class="new-addr-bar">|</span>
									<a href="javascript:void(0);"><i class="am-icon-trash"></i>删除</a>
								</div>
							</li>
						</ul>
						<div class="clear"></div>
						<a class="new-abtn-type" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">添加新地址</a>
						<!--例子-->
						<div class="am-modal am-modal-no-btn" id="doc-modal-1">

							<div class="add-dress">

								<!--标题 -->
								<div class="am-cf am-padding">
									<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增（修改）地址</strong> / <small>Add&nbsp;&&nbsp;Update&nbsp;address</small></div>
								</div>
								<hr/>

								<div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
									<form class="am-form am-form-horizontal"  id="editForm">

										<div class="am-form-group">
											<label for="user-name" class="am-form-label">收货人</label>
											<div class="am-form-content">
												<input type="text" id="user-name" placeholder="收货人">
											</div>
										</div>

										<div class="am-form-group">
											<label for="user-phone" class="am-form-label">手机号码</label>
											<div class="am-form-content">
												<input id="user-phone" placeholder="手机号必填" type="email">
											</div>
										</div>
										<div class="am-form-group">
											<label for="user-address" class="am-form-label">所在地</label>
											<div name="place" class="am-form-content address">
												<div style="">
													<input id="city-picker3" name="areaId" class="form-control" readonly type="text" value="" data-toggle="city-picker">
												</div>
											</div>
										</div>

										<div class="am-form-group">
											<label for="user-intro" class="am-form-label">详细地址</label>
											<div class="am-form-content">
												<textarea rows="3" id="user-intro" placeholder="输入详细地址"></textarea>
												<small>100字以内写出你的详细地址...</small>
											</div>
										</div>

										<div class="am-form-group">
											<div class="am-u-sm-9 am-u-sm-push-3">
												<a class="am-btn am-btn-danger" type="button">保存</a>
												<a href="javascript: void(0)" class="am-close am-btn am-btn-danger" data-am-modal-close>取消</a>
											</div>
										</div>
									</form>
								</div>

							</div>

						</div>

					</div>

					<script type="text/javascript">
						$(document).ready(function() {							
							$(".new-option-r").click(function() {
								$(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
							});
							
							var $ww = $(window).width();
							if($ww>640) {
								$("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
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
	
</script>
</html>