<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>领卷活动管理</title>
    <jsp:include page="../common/include_css.jsp" />
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><small>领卷活动管理</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                    	<div  class="dataTables_wrapper form-inline" role="grid">
                    		<!-- 查询条件 -->
	                    	<form  id="searchForm" method="post" action="">
		                    	<div class="row">
		                    		<div class="col-sm-2">
		                    			<div class="dataTables_length">
		                    				<a href="" class="btn btn-primary ">发布活动</a>
		                    			</div>
		                    		</div>
		                    		<div class="col-sm-7">
			                    		<div class="form-group" id="data_5" style="float:right;">
				                            <label class="font-noraml">范围选择</label>
				                            <div class="input-daterange input-group" id="datepicker">
				                                <input type="text" readonly="readonly" class="input form-control"/>
				                                <span class="input-group-addon">到</span>
				                                <input type="text" readonly="readonly" class="input form-control" />
				                            </div>
				                        </div>
			                        </div>
		                    		<div class="col-sm-3">
		                    			<div class="input-group" style="float:right;">
				                            <div class="input-group-btn">
				                                <button type="button" class="btn btn-primary" onclick="searchForm(1)">搜索</button>
				                            </div>
				                        </div>
		                    		</div>
		                    	</div>
		                    	<input type="hidden" name="page">
	                    	</form>
                    		<!-- 查询条件结束 -->
	                        <table class="table table-striped table-bordered table-hover dataTables-example">
	                            <thead>
	                                <tr>
	                                    <th>ID</th>
	                                    <th>当前活动</th>
	                                    <th>开始时间</th>
	                                    <th>结束时间</th>
	                                    <th>操作</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            		<tr class="gradeA">
		                            		 <td>1</td>
		                            		 <td>是</td>
		                            		 <td></td>
		                            		 <td></td>
			                                 <td>
			                                 	<a href="#"><i style="margin-left:5px;" class="fa fa-edit"></i></a>
			                                 	<a href="javascript:;"><i style="margin-left:5px;" class="fa fa-trash"></i></a>
			                                 </td>
		                            	</tr>
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
	<script type="text/javascript">
		$(function(){
			$('#data_5 .input-daterange').datepicker({
                keyboardNavigation: false,
                forceParse: false,
                autoclose: true
            });
		})
	</script>
</body>
</html>
