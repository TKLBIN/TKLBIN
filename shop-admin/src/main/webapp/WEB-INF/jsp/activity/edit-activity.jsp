<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>发布活动</title>
    <jsp:include page="../common/include_css.jsp" />
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><small>发布活动</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal" id="editForm">
                        	<div class="form-group">
                                <label class="col-sm-2 control-label">当前活动</label>
                                <div class="col-sm-10">
                                    <div class="radio i-checks">
                                        <label>
                                            <input type="radio" value="1"> <i></i> 是</label>
                                    </div>
                                    <div class="radio i-checks">
                                        <label>
                                            <input type="radio" value="0"> <i></i> 否</label>
                                    </div>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group" id="data_5">
                                <label class="col-sm-2 control-label">活动时间</label>
				                <div class="input-daterange input-group" id="datepicker" style="padding-left:15px;">
				                    <input type="text" readonly="readonly" class="input form-control"  />
				                    
				                    <span class="input-group-addon">到</span>
				                    <input type="text" readonly="readonly"  class="input form-control"  />
				                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">添加优惠券</label>
                                <div class="col-sm-4">
                                	<a href="javascript:void(0);" class="btn btn-primary ">添加优惠券</a>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                            	<div class="ibox-content">
            						<div  class="dataTables_wrapper form-inline" role="grid">
            							<table class="table table-striped table-bordered table-hover dataTables-example">
                            				<thead>
	                   							<tr>
	                    							<th>类型</th>
	                     						    <th>优惠金额</th>
	                     							<th>满额</th>
	                     							<th>开始时间</th>
	                     							<th>结束时间</th>
	                     							<th>张数</th>
	                     							<th>操作</th>
	                    						</tr>
	                						</thead>
	                						<tbody id="couponBody">
	                						</tbody>
                            			</table>
                            		</div>
                            	</div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="button">保存内容</button>
                                    <button class="btn btn-white" type="reset">取消</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div id="diaLogDiv" style="display:none;">
		<div class="ibox-content">
            <div  class="dataTables_wrapper form-inline" role="grid">
            	<table class="table table-striped table-bordered table-hover dataTables-example">
						<thead>
	                   		<tr>
	                    		<th>类型</th>
	                     		<th>优惠金额</th>
	                     		<th>满额</th>
	                     		<th>开始时间</th>
	                     		<th>结束时间</th>
	                     		<th>操作</th>
	                    	</tr>
	                	</thead>
	                <tbody id="tbody">
	                	<tr>
	                		<td>满减</td>
	                		<td>10</td>
	                		<td>100</td>
	                		<td>2017-1-1</td>
	                		<td>2017-1-1</td>
	                		<td>
	                			<button class='btn btn-primary btn-sm' type='button'>选择</button>
	                		</td>
	                	</tr>
	                </tbody>
	             </table>
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
			
			$('.i-checks').iCheck({
			    checkboxClass: 'icheckbox_square-green',
			    radioClass: 'iradio_square-green',
			});
		})
	</script>
</body>
</html>