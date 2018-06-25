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
    <title>上传商品图</title>
    <jsp:include page="../common/include_css.jsp" />
    <link href="<%=basePath %>resources/js/plugins/fancybox/jquery.fancybox.css" rel="stylesheet">
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><small>上传商品图</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal" id="editForm" method="post">
                        	<div class="form-group">
                                <label class="col-sm-2 control-label">已有图片</label>
                                <div class="col-sm-10">
                               		<div class="ibox-content">
                               			<div class="col-sm-3" style="height:130px;padding-left:0px;padding-right:5px;padding-top:10px;">
                               			 
	                               			<a class="fancybox" href="" title="图片1" style="display:block;height:100px;">
					                       
					                            	<img alt="image" src="" style="width:100%;height:100px"/>
					                        </a>
					     					<button class="btn btn-primary btn-sm" type="button">删除图片</button>
				                        </div>
                               		</div>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                        	<div class="form-group">
                                <label class="col-sm-2 control-label">图片1（单选）</label>
                                <div class="col-sm-10">
                               		<input type="file" class="form-control">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">图片2（单选）</label>
                                <div class="col-sm-10">
                               		<input type="file" class="form-control">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">图片3（单选）</label>
                                <div class="col-sm-10">
                               		<input type="file" class="form-control">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">图片4（单选）</label>
                                <div class="col-sm-10">
                               		<input type="file" class="form-control">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">图片5（单选）</label>
                                <div class="col-sm-10">
                               		<input type="file" class="form-control">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="submit" >保存内容</button>
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
	<script src="<%=basePath %>resources/js/plugins/prettyfile/bootstrap-prettyfile.js"></script>
	<script src="<%=basePath %>resources/js/plugins/fancybox/jquery.fancybox.js"></script>
	<script type="text/javascript">
		$( 'input[type="file"]' ).prettyFile();
		$(document).ready(function () {
            $('.fancybox').fancybox({
                openEffect: 'none',
                closeEffect: 'none'
            });
        });
		
	</script>
</body>
</html>