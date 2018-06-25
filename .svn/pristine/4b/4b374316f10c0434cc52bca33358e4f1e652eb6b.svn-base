<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>优惠券管理</title>
    <jsp:include page="../common/include_css.jsp" />
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><small>优惠券管理</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                    	<div  class="dataTables_wrapper form-inline" role="grid">
                    		<!-- 查询条件 -->
	                    	<form id="searchForm" method="post" action="/shop-admin/coupon/listCoupon">
		                    	<div class="row">
		                    		<div class="col-sm-6">
		                    			<div class="dataTables_length">
		                    				<a href="/shop-admin/coupon/updatecoupon?id=-1" class="btn btn-primary ">添加优惠券</a>
		                    			</div>
		                    		</div>
		                    		<div class="col-sm-6">
		                    			<div class="input-group" style="float:right;">
				                            <select class="form-control" name="couponType">
				                              <c:forEach var="c" items="${coupons}">
                                    			<option>${c.couponType}</option>
                                    			</c:forEach>
                                    		</select>
				                            <div class="input-group-btn">
				                                <button type="submit" class="btn btn-primary" ">搜索</button>
				                            </div>
				                        </div> 
		                    		</div>
		                    	</div>
	                    	</form>
                    		<!-- 查询条件结束 -->
	                        <table class="table table-striped table-bordered table-hover dataTables-example">
	                            <thead>
	                            
	                                <tr>
	                                    <th>ID</th>
	                                    <th>类型</th>
	                                    <th>优惠金额</th>
	                                    <th>满额</th>
	                                    <th>开始时间</th>
	                                    <th>结束时间</th>
	                                    <th>操作</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            <c:forEach var="c" items="${coupons}">
	                            		<tr class="gradeA">
		                            		 <td>${c.id}</td>
		                            		 <td>${c.couponType}</td>
		                            		 <td>${c.couponPrice}</td>
		                            		 <td>${c.couponMaxPrice}</td>
		                            		 <td><fmt:formatDate value="${c.useStartTime }"/></td>
		                            		 <td><fmt:formatDate value="${c.useEndTime}"/></td>
			                                 <td>
			                                 	<a href="/shop-admin/coupon/updatecoupon?id=${c.id}"><i style="margin-left:5px;" class="fa fa-edit"></i></a>
			                                 	<a href="/shop-admin/coupon/deleteById?id=${c.id}"><i style="margin-left:5px;" class="fa fa-trash"></i></a>
			                                 </td>
			                            </tr>
			                           </c:forEach>
	                            </tbody>
	                        </table>
							<!-- 分页 -->
							<jsp:include page="../common/include_page.jsp" />
							<!-- 分页结束 -->
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="../common/include_js.jsp" />
	
</body>
<script type="text/javascript">

</script>
</html>
