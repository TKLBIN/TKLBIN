<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>新增优惠券</title>
    <jsp:include page="../common/include_css.jsp" />
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><small>优惠券操作</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal" id="editForm" >
                        	<div class="form-group">
                                <label class="col-sm-2 control-label" >类型</label>
                                <div class="col-sm-10">
                                    <select class="form-control m-b" name="couponType">
                                    	<option value="0">满减卷</option>
                                    	<option value="1">运费卷</option>
                                    </select>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">优惠金额</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="couponPrice" value="${cou.couponPrice}">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">满额</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="couponMaxPrice" value="${cou.couponMaxPrice}">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group" id="data_5">
                                <label class="col-sm-2 control-label">时间</label>
				                <div class="input-daterange input-group" id="datepicker" style="padding-left:15px;">
				                	<fmt:formatDate var="start" value="${cou.useStartTime}" pattern="yyyy-MM-dd"/>
				                    <input type="text"   name="useStartTime" class="input form-control" value="${start}"/>
				                    
				                    <span class="input-group-addon">到</span>
				                    <fmt:formatDate var="end" value="${cou.useEndTime}" pattern="yyyy-MM-dd"/>
				                    <input type="text" name="useEndTime" class="input form-control" value="${end}"/>
				                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="button" onclick="uncou()">保存内容</button>
                                    <button class="btn btn-white" type="reset">取消</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
	
	<jsp:include page="../common/include_js.jsp" />
	<script type="text/javascript">
		$(function(){
			$('#data_5 .input-daterange').datepicker({
                keyboardNavigation: false,
                forceParse: false,
                autoclose: true
            });
		})
		function uncou(){
			$.ajax({
				url:"/shop-admin/coupon/upcoupon",
	    	    type:"POST",
	    	    data:$("#editForm").serialize(),
	    	    success:function(data){
	    		   if(data=="e"){
	    			   alert("操作失败")
	    		   }else{
	    			     window.location.href = "/shop-admin/coupon/listCoupon";
	    		   }
	    		   }
			})
		}
	</script>
</body>
</html>