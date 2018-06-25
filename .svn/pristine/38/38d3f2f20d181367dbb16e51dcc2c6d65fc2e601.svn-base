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
    <title>发布公告</title>
    <jsp:include page="../common/include_css.jsp" />
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><small>发布公告</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal" id="editForm" action="/shop-admin/shopNoti/upshopNotic">
                        	<div class="form-group">
                                <label class="col-sm-2 control-label">公告标题</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="noticTitle" value="${sn.noticTitle}">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                            	<label class="col-sm-2 control-label">公告内容</label>
                            	<div class="col-sm-10">
					                <div class="ibox float-e-margins">
					                    <div class="ibox-content no-padding">
					                        <div class="summernote">
					                            
					                        </div>
											<script id="container" type="text/plain" name="noticContent" >${sn.noticContent}</script>
					                    </div>
					                </div>
					            </div>
                            </div>
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
	<!-- 配置文件 -->
    <script type="text/javascript" src="<%=basePath %>ueditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="<%=basePath %>ueditor/ueditor.all.js"></script>
</body>
<script type="text/javascript">
	$(document).ready(function () {
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
	});
	
	var ue = UE.getEditor('container');
	
</script>
</html>
