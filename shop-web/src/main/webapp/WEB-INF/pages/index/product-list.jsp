<%@page import="com.model.ProductClassifySub"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<title>搜索页面</title>

<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/amazeui.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath }/AmazeUI-2.4.2/assets/css/admin.css"
	rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath }/basic/css/demo.css"
	rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath }/css/seastyle.css"
	rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="${pageContext.request.contextPath }/basic/js/jquery-1.7.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/script.js"></script>
</head>

<body>

	<jsp:include page="../common/include_top_index.jsp" />
	<b class="line"></b>
	<div class="search">
		<div class="search-list">
			<div class="nav-table">
				<div class="long-title">
					<span class="all-goods">全部分类</span>
				</div>
				<div class="nav-cont">
					<ul>
						<li class="index"><a href="#">首页</a></li>
						<li class="qc"><a href="#">闪购</a></li>
						<li class="qc"><a href="#">限时抢</a></li>
						<li class="qc"><a href="#">团购</a></li>
						<li class="qc last"><a href="#">大包装</a></li>
					</ul>
					<div class="nav-extra">
						<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
						<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
					</div>
				</div>
			</div>


			<div class="am-g am-g-fixed">
				<div class="am-u-sm-12 am-u-md-12">
					<div class="theme-popover">
						<div class="searchAbout">
							<span class="font-pale">相关搜索：</span>
							<c:forEach var="ser" items="${listSearch}">
								<a title="${ser}" href="/shop-web/home/toProductList?productName=${ser}">${ser}&nbsp;&nbsp;</a>
							</c:forEach>


						</div>
						<ul class="select">
							<p class="title font-normal">
								<span class="fl">${searchName}</span> <span class="total fl">搜索到<strong
									class="num">${count}</strong>件相关商品
								</span>
							</p>
							<div class="clear"></div>
							<li class="select-result">
								<dl>
									<dt>已选</dt>
									<dd class="select-no"></dd>
									<p class="eliminateCriteria">清除</p>
								</dl>
							</li>
							<div class="clear"></div>
							<li class="select-list">
								<dl id="select1">
								   
									<dt class="am-badge am-round">分类</dt>

									<div class="dd-conent">
								    	
                                                <%-- <dd "${listProductClassify.size()==1}?class='':'select-all selected'" >
										         	<a href="#">全部</a>
									         	</dd> --%>
									         	<dd class='select-all selected'>
										         	<a href="#" >全部</a>
									         	</dd>
                                            
										<c:forEach var="i" items="${listProductClassify}">
                                            <c:choose>
                                              <c:when test="${listProductClassify.size()==1}">
                                                <dd class="select-all selected">
												        <a href="#">${i.classifyName}</a>
											    </dd>
                                              </c:when>
                                              <c:otherwise>
                                                <dd >
												        <a href="javascript:;" onclick="showProductById(${i.id})">${i.classifyName}</a>
												        <%-- toProductList?classifyName=${i.classifyName} --%>
											    </dd>
                                              
                                              </c:otherwise>
                                            </c:choose>
											
										</c:forEach>


									</div>

								</dl>
							</li>
							<li class="select-list">
								<dl id="select2">
									<dt class="am-badge am-round">二级分类</dt>
									<div class="dd-conent">
										
                                            <dd class='select-all selected'>
										         	<a href="#" >全部</a>
									         	</dd>
									         	<%-- <% List<ProductClassifySub> ll=(List<ProductClassifySub>)request.getAttribute("listProductClassifySub"); %>
                                               <dd "<%=ll.size() %>==1?'class=''':'select-all selected'" >
										         	<a href="#">全部</a>
									           </dd> --%>
                                           
										<c:forEach var="i" items="${listProductClassifySub}">
                                            <c:choose>
                                              <c:when test="${listProductClassifySub.size()==1}">
                                                <dd class="select-all selected">
												        <a href="#">${i.classifySubName}</a>
											    </dd>
                                              </c:when>
                                              <c:otherwise>
                                                <dd >
												        <a href="javascript:;" onclick="showProductBySubId(${i.id})">${i.classifySubName}</a>
												       <%--  toProductList?classifySubName=${i.classifySubName} --%>
											    </dd>
                                              
                                              </c:otherwise>
                                            </c:choose>
											
										</c:forEach>

									</div>
								</dl>
							</li>
							<li class="select-list">
								<dl id="select3">
									<dt class="am-badge am-round">选购热点</dt>
									<div class="dd-conent">
										<dd class="select-all selected">
											<a href="#">全部</a>
										</dd>
										<dd>
											<a href="#">手剥松子</a>
										</dd>
										<dd>
											<a href="#">薄壳松子</a>
										</dd>
										<dd>
											<a href="#">进口零食</a>
										</dd>
										<dd>
											<a href="#">有机零食</a>
										</dd>
									</div>
								</dl>
							</li>

						</ul>
						<div class="clear"></div>
					</div>
					<div class="search-content">
						<div class="sort">
							<li class="first"><a title="综合">综合排序</a></li>
							<li><a title="销量">销量排序</a></li>
							<li><a title="价格">价格优先</a></li>
							<li class="big"><a title="评价" href="#">评价为主</a></li>
						</div>
						<div class="clear"></div>

						<ul class="am-avg-sm-2 am-avg-md-3 am-avg-lg-4 boxes" id="showProduct">
							<c:forEach var="p" items="${listPro}">
								<li>
									<div class="i-pic limit" onclick="goDetail(${p.id})">
										<img
											src="${pageContext.request.contextPath }/images/imgsearch1.jpg" />
										<p class="title fl">${p.productName}</p>
										<p class="price fl">
											<b>¥</b> <strong>${p.pSku.productPrice}</strong>
										</p>
										<p class="number fl">
											销量<span>${p.productVolume}</span>
										</p>
									</div>
								</li>
							</c:forEach>
						</ul>

					</div>
					<div class="search-side">

						<div class="side-title">经典搭配</div>

						<li>
							<div class="i-pic check">
								<img src="${pageContext.request.contextPath }/images/cp.jpg" />
								<p class="check-title">萨拉米 1+1小鸡腿</p>
								<p class="price fl">
									<b>¥</b> <strong>29.90</strong>
								</p>
								<p class="number fl">
									销量<span>1110</span>
								</p>
							</div>
						</li>
						<li>
							<div class="i-pic check">
								<img src="${pageContext.request.contextPath }/images/cp2.jpg" />
								<p class="check-title">ZEK 原味海苔</p>
								<p class="price fl">
									<b>¥</b> <strong>8.90</strong>
								</p>
								<p class="number fl">
									销量<span>1110</span>
								</p>
							</div>
						</li>
					</div>
					<div class="clear"></div>
					<!--分页 -->
					<ul class="am-pagination am-pagination-right">
						<li ><a href="/shop-web/home/toProductList?page=${page-3}">&laquo;</a></li>
						<li ${param.page==null ?"class='am-active'":"" } ${param.page==1 ?"class='am-active'":"" }><a href="/shop-web/home/toProductList?page=1">1</a></li>
						<li ${param.page==2 ?"class='am-active'":"" }><a href="/shop-web/home/toProductList?page=2">2</a></li>
						<li ${param.page==3?"class='am-active'":"" }><a href="/shop-web/home/toProductList?page=3">3</a></li>
						<li ${param.page==4?"class='am-active'":"" }><a href="/shop-web/home/toProductList?page=4">4</a></li>
						<li ${param.page==5?"class='am-active'":"" }><a href="/shop-web/home/toProductList?page=5">5</a></li>
						<li><a href="/shop-web/home/toProductList?page=${page+3}">&raquo;</a></li>
					</ul>

				</div>
			</div>
			<jsp:include page="../common/footer.jsp" />
		</div>

	</div>

	<!--引导 -->
	<div class="navCir">
		<li><a
			href="${pageContext.request.contextPath }/home/jthome/home"><i
				class="am-icon-home "></i>首页</a></li>
		<li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
		<li><a
			href="${pageContext.request.contextPath }/home/jthome/shopping-car"><i
				class="am-icon-shopping-basket"></i>购物车</a></li>
		<li><a href="../person/index.html"><i class="am-icon-user"></i>我的</a></li>
	</div>

	<!--菜单 -->
	<jsp:include page="../common/include_right.jsp" />
	<script>
		window.jQuery
				|| document
						.write('<script src="../basic/js/jquery-1.9.min.js"><\/script>');
	</script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/basic/js/quick_links.js"></script>

	<div class="theme-popover-mask"></div>


	<script type="text/javascript">
		function goDetail(id) {
			location.href = "${pageContext.request.contextPath }/home/godetail?id="
					+ id;
		}
		
		function showProductById(id){
			 $("#showProduct").empty();
			 $.ajax({
			    	url:"/shop-web/home/showProductById",
			        type:"POST",
			        async:false,
			        data:{"id":id},
			        dataType: "json",
			        success:function(data){
			        	 for (var i = 0; i < data.length; i++) {
		    	    		$("#showProduct").append("<li> <div class='i-pic limit' onclick='goDetail('"+data[i].id+")> <img src='${pageContext.request.contextPath }/images/imgsearch1.jpg' />"
		    	    				
		    	    				+"<p class='title fl'>"+data[i].productName+"</p> <p class='price fl'>"+

	                         "<b>¥</b> <strong>"+data[i].productParam+"</strong> </p>"+"<p class='number fl'>销量<span>"+data[i].productVolume
	                         +"</span></p></div></li>");
		             		}
			        }
			    	
			    })
			
		}
		function showProductBySubId(id){
			
			$("#showProduct").empty();
		    $.ajax({
		    	url:"/shop-web/home/showProductBySubId",
		        type:"POST",
		        async:false,
		        data:{"id":id},
		        dataType: "json",
		        success:function(data){
		        	
		        	 for (var i = 0; i < data.length; i++) {
		    	    		$("#showProduct").append("<li> <div class='i-pic limit' onclick='goDetail('"+data[i].id+")> <img src='${pageContext.request.contextPath }/images/imgsearch1.jpg' />"
		    	    				
		    	    				+"<p class='title fl'>"+data[i].productName+"</p> <p class='price fl'>"+

	                         "<b>¥</b> <strong>"+data[i].productParam+"</strong> </p>"+"<p class='number fl'>销量<span>"+data[i].productVolume
	                         +"</span></p></div></li>");
		             		}
		        }
		    	
		    })
			
		}
	</script>
</body>
</html>