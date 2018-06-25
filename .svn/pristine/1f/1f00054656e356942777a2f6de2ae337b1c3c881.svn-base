<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>新增商品</title>
    <jsp:include page="../common/include_css.jsp" />
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><small>新增商品</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal" id="editForm" 
                        	action="" method="post">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">商品名字</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">销量</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                             <div class="form-group">
                                <label class="col-sm-2 control-label">分类选择</label>
                                <div class="col-sm-10">
                                	<div class="col-sm-5">
                                		<!-- 父分类 -->
                                    	<select class="form-control m-b">
                                    		<option></option>
                                    	</select>
                                    </div>
                                    <div class="col-sm-5">
                                    	<select class="form-control m-b">
                                    		<option></option>
                                    	</select>
                                    </div>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">选择封面图片（单选）</label>
                                <div class="col-sm-10">
                               		<input type="file" class="form-control">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">属性与库存</label>
                                <div class="col-sm-4">
                                	<a href="javascript:void(0);" class="btn btn-primary ">添加属性</a>
                                	<a href="javascript:void(0);" class="btn btn-primary ">清空属性</a>
                                	<a href="javascript:void(0);" class="btn btn-primary ">生成SKU</a>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                            	<div id="attrDiv">
                            		<!-- 属性div-->
                            	</div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                            	<div class="ibox-content">
            						<div  class="dataTables_wrapper form-inline" role="grid">
            							<table class="table table-striped table-bordered table-hover dataTables-example">
                            				<thead>
	                   							<tr>
	                    							<th>SKU属性</th>
	                     						    <th>库存</th>
	                     							<th>价格</th>
	                    						</tr>
	                						</thead>
	                						<tbody id="sku_body">
	                						</tbody>
                            			</table>
                            		</div>
                            	</div>
                            </div>
                            
                            <div class="form-group">
                            	<label class="col-sm-2 control-label">商品描述</label>
                            	<div class="col-sm-10">
					                <div class="ibox float-e-margins">
					                    <div class="ibox-content no-padding">
					                        <div class="summernote">
					                            
					                        </div>
											<script id="container" type="text/plain"></script>
					                    </div>
					                </div>
					            </div>
                            </div>
                            
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="submit">保存内容</button>
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
	<script src="<%=basePath%>resources/js/plugins/prettyfile/bootstrap-prettyfile.js"></script>
	
	
	<div id="diaLogDiv" style="display:none;">
		<div class="ibox-content">
            <div  class="dataTables_wrapper form-inline" role="grid">
            	<table class="table table-striped table-bordered table-hover dataTables-example">
	                <thead>
	                   <tr>
	                     <th>ID</th>
	                     <th>属性名</th>
	                     <th>操作</th>
	                    </tr>
	                </thead>
	                <tbody id="tbody">
	                </tbody>
	             </table>
            </div>
        </div>
	</div>
</body>
<!-- 配置文件 -->
<script type="text/javascript" src="<%=basePath%>/ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="<%=basePath%>/ueditor/ueditor.all.js"></script>
<script type="text/javascript">
		$( 'input[type="file"]' ).prettyFile();
		
		$(function(){
			$('.i-checks').iCheck({
	        	checkboxClass: 'icheckbox_square-green',
	       	 	radioClass: 'iradio_square-green',
	    	});
			
			UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
		    UE.Editor.prototype.getActionUrl = function(action) {
		        if (action == '/admin/notic/uploadImage') {
		            return 'http://localhost:8080/admin/notic/uploadImage';
		        } else {
		            return this._bkGetActionUrl.call(this, action);
		        }
		    }
		})
		
		var ue = UE.getEditor('container');
</script>
</html>
