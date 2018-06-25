<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

		<title>结算页面</title>

		<link href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />

		<link href="${pageContext.request.contextPath }/basic/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath }/css/cartstyle.css" rel="stylesheet" type="text/css" />

		<link href="${pageContext.request.contextPath }/css/jsstyle.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="${pageContext.request.contextPath }/js/address.js"></script>

	</head>

	<body>

		<jsp:include page="../common/include_top_index.jsp" />

			<div class="clear"></div>
			<div class="concent">
				<!--地址 -->
				<div class="paycont">
					<div class="address">
						<h3>确认收货地址 </h3>
						<div class="control">
							<a href="${pageContext.request.contextPath }/user/asd?id=${user.id}">使用新地址</a>
						</div>
						<div class="clear"></div>
						<ul>
							<c:forEach var="add" items="${adds}">
							<c:choose>
							<c:when test="${add.isDefault==1 }">
							<div                                                                                                                                                                                                                                                                                                                                         class="per-border"></div>
							<li class="user-addresslist defaultAddr" onclick="cg(this)">
								<div class="address-left">
									<div class="user DefaultAddr">

										<span class="buy-address-detail">   
										<span style="display: none;" id="moren">${add.id }</span>
                   						<span class="buy-user">${add.peopleName } </span>
										<span class="buy-phone">${add.telephone }</span>
										</span>
									</div>
									<div class="default-address DefaultAddr">
										<span class="buy-line-title buy-line-title-type">收货地址：</span>
										<span class="buy--address-detail">
								  			<span class="province">${fn:split(add.place,"/")[0]}</span>省
											<span class="city">${fn:split(add.place,"/")[1]}</span>市
											<span class="dist">${fn:split(add.place,"/")[2]}</span>区
											<span class="street">${add.addressDetail }</span>
											<span	style="display: none;">${add.id }</span>
										</span>

										</span>
									</div>
									<ins class="deftip">默认地址</ins> 
								</div>
								<div class="address-right">
									<a href="../person/address.html">
										<span class="am-icon-angle-right am-icon-lg"></span></a>
								</div>
								<div class="clear"></div>

								<div class="new-addr-btn">
									<a href="#" class="hidden" onclick="setMo(this)">设为默认</a>
									<span class="new-addr-bar hidden">|</span>
									<a href="${pageContext.request.contextPath }/user/asd?id=${user.id}">编辑</a>
									<span class="new-addr-bar">|</span>
									<a href="javascript:void(0);" onclick="delClick(${add.id });">删除</a>
								</div>
							</li>
							</c:when>
							<c:otherwise>
							<div class="per-border"></div>
							<li class="user-addresslist" onclick="cg(this)">
								<div class="address-left">
									<div class="user DefaultAddr">

										<span class="buy-address-detail"> 
										<span style="display: none;" id="moren01">${add.id }</span>
                   					<span class="buy-user">${add.peopleName } </span>
										<span class="buy-phone">${add.telephone }</span>
										</span>
									</div>
									<div class="default-address DefaultAddr">
										<span class="buy-line-title buy-line-title-type">收货地址：</span>
										<span class="buy--address-detail">
								   <span class="province">${fn:split(add.place,"/")[0]}</span>省
										<span class="city">${fn:split(add.place,"/")[1]}</span>市
										<span class="dist">${fn:split(add.place,"/")[3]}</span>区
										<span class="street">${add.addressDetail }</span>
										<span style="display: none;">${add.id }</span>
										</span>

										
									</div>
									<ins class="deftip hidden">默认地址</ins>
								</div>
								<div class="address-right">
									<span class="am-icon-angle-right am-icon-lg"></span>
								</div>
								<div class="clear"></div>

								<div class="new-addr-btn">
									<a href="javaseript:;" onclick="setMo(this)">设为默认</a>
									<span class="new-addr-bar">|</span>
									<a href="#">编辑</a>
									<span class="new-addr-bar">|</span>
									<a href="javascript:void(0);"  onclick="delClick(${add.id });">删除</a>
								</div>
							
							</li>
								</c:otherwise>
							</c:choose>
							</c:forEach>
						</ul>

						<div class="clear"></div>
					</div>
					<!--物流 -->
					<div class="logistics">
						<h3>选择物流方式</h3>
						<ul class="op_express_delivery_hot"  > 
							<li data-value="yuantong" class="OP_LOG_BTN  " onclick="express(this)"><i class="c-gap-right" style="background-position:0px -468px"></i>圆通<span></span></li>
							<li data-value="shentong" class="OP_LOG_BTN  " onclick="express(this)"><i class="c-gap-right" style="background-position:0px -1008px"></i>申通<span></span></li>
							<li data-value="yunda" class="OP_LOG_BTN  " onclick="express(this)"><i class="c-gap-right" style="background-position:0px -576px"></i>韵达<span></span></li>
							<li data-value="zhongtong" class="OP_LOG_BTN op_express_delivery_hot_last " onclick="express(this)"><i class="c-gap-right" style="background-position:0px -324px"></i>中通<span></span></li>
							<li data-value="shunfeng" class="OP_LOG_BTN  op_express_delivery_hot_bottom" onclick="express(this)"><i class="c-gap-right" style="background-position:0px -180px"></i>顺丰<span></span></li>
						</ul>
					</div>
					<div class="clear"></div>

					<!--支付方式-->
					<div class="logistics">
						<h3>选择支付方式</h3>
						<ul class="pay-list">
							<li class="pay card"><img src="${pageContext.request.contextPath }/images/wangyin.jpg" />银联<span></span></li>
							<li class="pay qq"><img src="${pageContext.request.contextPath }/images/weizhifu.jpg" />微信<span></span></li>
							<li class="pay taobao"><img src="${pageContext.request.contextPath }/images/zhifubao.jpg" />支付宝<span></span></li>
						</ul>
					</div>
					<div class="clear"></div>

					<!--订单 -->
					<div class="concent">
						<div id="payTable">
							<h3>确认订单信息</h3>
							<div class="cart-table-th">
								<div class="wp">

									<div class="th th-item">
										<div class="td-inner">商品信息</div>
									</div>
									<div class="th th-price">
										<div class="td-inner">单价</div>
									</div>
									<div class="th th-amount">
										<div class="td-inner">数量</div>
									</div>
									<div class="th th-sum">
										<div class="td-inner">金额</div>
									</div>
									<div class="th th-oplist">
										<div class="td-inner">配送方式</div>
									</div>

								</div>
							</div>
							<div class="clear"></div>

							<tr class="item-list">
								<div class="bundle  bundle-last">

									<div class="bundle-main">
										<ul class="item-content clearfix">
											<div class="pay-phone">
												<li class="td td-item">
													<div class="item-pic">
														<a href="#" class="J_MakePoint">
															<img src="${pageContext.request.contextPath }/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg"></a>
													</div>
													<div class="item-info">
														<div class="item-basic-info">
															<a href="#" class="item-title J_MakePoint" data-point="tbcart.8.11">美康粉黛醉美唇膏 持久保湿滋润防水不掉色</a>
														</div>
													</div>
												</li>
												<li class="td td-info">
													<div class="item-props">
														<span class="sku-line">颜色：12#川南玛瑙</span>
														<span class="sku-line">包装：裸装</span>
													</div>
												</li>
												<li class="td td-price">
													<div class="item-price price-promo-promo">
														<div class="price-content">
															<em class="J_Price price-now">39.00</em>
														</div>
													</div>
												</li>
											</div>
											<li class="td td-amount">
												<div class="amount-wrapper ">
													<div class="item-amount ">
														<span class="phone-title">购买数量</span>
														<div class="sl">
															<span>3</span>
														</div>
													</div>
												</div>
											</li>
											<li class="td td-sum">
												<div class="td-inner">
													<em tabindex="0" class="J_ItemSum number">118.00</em>
												</div>
											</li>
											<li class="td td-oplist">
												<div class="td-inner">
													<span class="phone-title">配送方式</span>
													<div class="pay-logis">
														快递<b class="sys_item_freprice">10</b>元
													</div>
												</div>
											</li>

										</ul>
										<div class="clear"></div>

									</div>
							</tr>
							<div class="clear"></div>
							</div>

							<tr id="J_BundleList_s_1911116345_1" class="item-list">
								<div id="J_Bundle_s_1911116345_1_0" class="bundle  bundle-last">
									<div class="bundle-main">
										<ul class="item-content clearfix">
											<div class="pay-phone">
												<li class="td td-item">
													<div class="item-pic">
														<a href="#" class="J_MakePoint">
															<img src="${pageContext.request.contextPath }/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg"></a>
													</div>
													<div class="item-info">
														<div class="item-basic-info">
															<a href="#" target="_blank" title="美康粉黛醉美唇膏 持久保湿滋润防水不掉色" class="item-title J_MakePoint" data-point="tbcart.8.11">美康粉黛醉美唇膏 持久保湿滋润防水不掉色</a>
														</div>
													</div>
												</li>
												<li class="td td-info">
													<div class="item-props">
														<span class="sku-line">颜色：10#蜜橘色+17#樱花粉</span>
														<span class="sku-line">包装：两支手袋装（送彩带）</span>
													</div>
												</li>
												<li class="td td-price">
													<div class="item-price price-promo-promo">
														<div class="price-content">
															<em class="J_Price price-now">39.00</em>
														</div>
													</div>
												</li>
											</div>

											<li class="td td-amount">
												<div class="amount-wrapper ">
													<div class="item-amount ">
														<span class="phone-title">购买数量</span>
														<div class="sl">
															<span>3</span>
														</div>
													</div>
												</div>
											</li>
											<li class="td td-sum">
												<div class="td-inner">
													<em tabindex="0" class="J_ItemSum number">117.00</em>
												</div>
											</li>
											<li class="td td-oplist">
												<div class="td-inner">
													<span class="phone-title">配送方式</span>
													<div class="pay-logis">
														包邮<b class="sys_item_freprice"></b>
													</div>
												</div>
											</li>

										</ul>
										<div class="clear"></div>

									</div>
							</tr>
							</div>
							<div class="clear"></div>
							<div class="pay-total">
						<!--留言-->
							<div class="order-extra">
								<div class="order-user-info">
									<div id="holyshit257" class="memo">
										<div class="msg hidden J-msg">
										</div>
									</div>
								</div>

							</div>
							<!--优惠券 -->
							<div class="buy-agio">
								<li class="td td-coupon">

									<span class="coupon-title">优惠券</span>
									<select data-am-selected  id="sl" onchange="youhuiq(this)" >
									
									
									<c:forEach var="cc" items="${ccs}">
									<c:choose>
									<c:when test="${cc.couponType=='满减' }">
										<option value="a"  >
											<div class="c-price">
												<strong id="youhui">￥${cc.couponPrice}</strong>
											</div>
											<div class="c-limit">
												【消费满<span id="youhui">${cc.couponMaxPrice}</span>元可用】
											</div>
										</option>
										</c:when>
										<c:otherwise>
										<option value="b" selected>
											<div class="c-price">
												<strong>￥${cc.couponPrice}</strong>
											</div>
											<div class="c-limit">
												【无使用门槛】
											</div>
										</option>
										
										</c:otherwise>
										</c:choose>
										</c:forEach>
										
									</select>
								</li>

							</div>
							<div class="clear"></div>
							</div>
							<!--含运费小计 -->
							<div class="buy-point-discharge ">
								<p class="price g_price ">
									合计（含运费） <span>¥</span><em class="pay-sum"></em>
								</p>
							</div>

							<!--信息 -->
							<div class="order-go clearfix">
								<div class="pay-confirm clearfix">
									<div class="box">
										<div tabindex="0" id="holyshit267" class="realPay"><em class="t">实付款：</em>
											<span class="price g_price ">
                                    <span>¥</span> <em class="style-large-bold-red " id="J_ActualFee">244.00</em>
											</span>
										</div>

										<div id="holyshit268" class="pay-address">
											<p class="buy-footer-address">
												<span class="buy-line-title buy-line-title-type">寄送至：</span>
												<span class="buy--address-detail">
								   					<span class="province">${fn:split(add.place,"/")[0]}</span>省
													<span class="city">${fn:split(add.place,"/")[1]}</span>市
													<span class="dist">${fn:split(add.place,"/")[2]}</span>区
													<span class="street">${add.addressDetail }</span>
												</span>
												</span>
											</p>
											<p class="buy-footer-address">
												<span class="buy-line-title">收货人：</span>
												<span class="buy-address-detail">   
                                         			<span class="buy-user">${add.peopleName } </span>
													<span class="buy-phone">${add.telephone }</span>
												</span>
											</p>
										</div>
									</div>

									<div id="holyshit269" class="submitOrder">
										<div class="go-btn-wrap">
											<a id="J_Go" href="success.html" class="btn-go" tabindex="0" title="点击此按钮，提交订单">提交订单</a>
										</div>
									</div>
									<div class="clear"></div>
								</div>
							</div>
						</div>

						<div class="clear"></div>
					</div>
				</div>
				<jsp:include page="../common/footer.jsp" />
			</div>
			<div class="theme-popover-mask"></div>
			<div class="theme-popover">

				<!--标题 -->
				<div class="am-cf am-padding">
					<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add address</small></div>
				</div>
				<hr/>

				<div class="am-u-md-12">
					<form class="am-form am-form-horizontal">

						<div class="am-form-group">
							<label for="user-name" class="am-form-label">收货人</label>
							<div class="am-form-content">
								<input type="text" id="user-name" name="peopleName" placeholder="收货人">
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
							<label for="user-phone" class="am-form-label">所在地</label>
							<div class="am-form-content address">
								<select data-am-selected>
									<option value="a">浙江省</option>
									<option value="b">湖北省</option>
								</select>
								<select data-am-selected>
									<option value="a">温州市</option>
									<option value="b">武汉市</option>
								</select>
								<select data-am-selected>
									<option value="a">瑞安区</option>
									<option value="b">洪山区</option>
								</select>
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-intro" class="am-form-label">详细地址</label>
							<div class="am-form-content">
						<textarea class="" rows="3" id="user-intro" placeholder="输入详细地址" name="addressDetail"></textarea>
								<small>100字以内写出你的详细地址...</small>
							</div>
						</div>

						<div class="am-form-group theme-poptit">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<div class="am-btn am-btn-danger">保存</div>
								<div class="am-btn am-btn-danger close">取消</div>
							</div>
						</div>
					</form>
				</div>

			</div>

			<div class="clear"></div>
	</body>
	
	<script>
	//设置默认地址
	//总金额
	var zongji ;
	function setMo(obj) {
		var morenId = $("#moren").text();
		var setId =$("#moren01").text();
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
	function delClick(id){
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
	function cg(obj){
// 		var firstDiv=$("li[class='user-addresslist defaultAddr']").find("div").eq(0);
		var firstDiv=$(obj).find("div").eq(0);
		var name_phone = firstDiv.find("div").eq(0).find("span").eq(0).find("span");
		var name=name_phone.eq(1).text();
		var phone = name_phone.eq(2).text();
		var psc = firstDiv.find("div").eq(1).find("span").eq(1).find("span");
		var p = psc.eq(0).text();
		var s = psc.eq(1).text();
		var c= psc.eq(2).text();
		var detail = psc.eq(3).text();
		
		var fuzhi = $("div[id='holyshit268']").find("p");
		var faddress = fuzhi.eq(0).find("span").eq(1);
		$(faddress.find("span").eq(0)).text(p);
		$(faddress.find("span").eq(1)).text(s);
		$(faddress.find("span").eq(2)).text(c);
		$(faddress.find("span").eq(3)).text(p);
		var np = fuzhi.eq(1).find("span").eq(1);
		$(np.find("span").eq(0)).text(name);
		$(np.find("span").eq(1)).text(phone);
	}
	
	$(function(){
		//地址
		var firstDiv=$("li[class='user-addresslist defaultAddr']").find("div").eq(0);
		var name_phone = firstDiv.find("div").eq(0).find("span").eq(0).find("span");
		var name=name_phone.eq(1).text();
		var phone = name_phone.eq(2).text();
		var psc = firstDiv.find("div").eq(1).find("span").eq(1).find("span");
		var p = psc.eq(0).text();
		var s = psc.eq(1).text();
		var c= psc.eq(2).text();
		var detail = psc.eq(3).text();
		
		var fuzhi = $("div[id='holyshit268']").find("p");
		var faddress = fuzhi.eq(0).find("span").eq(1);
		$(faddress.find("span").eq(0)).text(p);
		$(faddress.find("span").eq(1)).text(s);
		$(faddress.find("span").eq(2)).text(c);
		$(faddress.find("span").eq(3)).text(detail);
		var np = fuzhi.eq(1).find("span").eq(1);
		$(np.find("span").eq(0)).text(name);
		$(np.find("span").eq(1)).text(phone);
		
		var sum_kuai=0;
		var kuai = $("b[class='sys_item_freprice']");
		for(var i=0;i<kuai.length;i++){
			sum_kuai+=Number(kuai.eq(i).text());
		}
		
		//金额
		var jine=0;
		for (var i = 0; i < 2; i++) {
			jine +=Number($("div[class='bundle-main']").eq(i).find("ul").eq(0).find("li").eq(4).find("em").text());
			
		
			}
		
		 zongji =jine+sum_kuai;
		$("em[class='pay-sum']").text(zongji);
		youhuiq()
	})
	function express(obj) {
		var a= $("div[class='pay-logis']").eq(1).find("b").text();
		
		
	}
	
	$(function(){
		
	
		var sl = $("select[id='sl'] option:selected").find("span[id='youhui']").text();
		
	})
	function youhuiq() {
		
		var zongji =Number( $("em[class='pay-sum']").text(zongji));
		var youhuiquan=$("#sl").find("option:selected").text();
		if(youhuiquan.indexOf("满")>0){
		var aa=youhuiquan.split("满");
		var bb=aa[1];
		var cc=Number(bb.substring(0, bb.indexOf('元')));
		
		if (cc>zongji) {
			 
			
			
		} 
		}
		var ss=youhuiquan.substring(2, youhuiquan.indexOf('【'));
		 var price = parseInt(ss.replace(/[^0-9]/ig,""));//截取数字
		  
		var shijijine =zongji-price;
	
		$("em[id='J_ActualFee']").text(shijijine);
		 
	}
	</script>
	
</html>