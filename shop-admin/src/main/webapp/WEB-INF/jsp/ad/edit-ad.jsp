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
    <title>发布广告</title>
    <jsp:include page="../common/include_css.jsp" />
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><small>发布广告</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal" method="post" id="editForm">
                        	<div class="form-group">
                                <label class="col-sm-2 control-label">选择商品</label>
                                <div class="col-sm-10">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="searchProduct" autocomplete="off">
                                        <!-- 保存商品ID -->
                                        <div class="input-group-btn">
                                            <button type="button" class="btn btn-white dropdown-toggle" data-toggle="">
                                                <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu dropdown-menu-right" role="menu" style="padding-top: 0px; max-height: 375px; max-width: 800px; overflow: auto; width: auto; transition: 0.3s; -webkit-transition: 0.3s; left: -267px; right: auto; min-width: 300px;">
                                            </ul>
                                        </div>
                                        <!-- /btn-group -->
                                    </div>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">选择图片（单选）</label>
                                <div class="col-sm-10">
                               		<input type="file" class="form-control">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">是否显示</label>
                                <div class="col-sm-10">
                                    <div class="radio i-checks">
                                        <label>
                                            <input type="radio"  value="0" > <i></i> 显示</label>
                                    </div>
                                    <div class="radio i-checks">
                                        <label>
                                            <input type="radio"  value="1" > <i></i> 不显示</label>
                                    </div>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">原商品</label>
                                <div class="col-sm-10">
                                    <input type="text" disabled  class="form-control">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="button" >保存内容</button>
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
	<script src="<%=basePath%>resources/js/plugins/suggest/bootstrap-suggest.min.js"></script>
	<script src="<%=basePath%>resources/js/plugins/prettyfile/bootstrap-prettyfile.js"></script>
</body>
<script type="text/javascript">
		$(document).ready(function () {
	    	$('.i-checks').iCheck({
	        	checkboxClass: 'icheckbox_square-green',
	        	radioClass: 'iradio_square-green',
	    	});
		});
		$( 'input[type="file"]' ).prettyFile();
		
		var baiduBsSuggest = $("#searchProduct").bsSuggest({
            allowNoKeyword: false, //是否允许无关键字时请求数据
            getDataMethod: "url", //获取数据的方式，总是从 URL 获取
            url:'/admin/pro/selectByName?productName=',
            keyField: 'productName', 
            idField: 'id',  
            /*如果从 url 获取数据，并且需要跨域，则该参数必须设置*/
            processData: function (json) { // url 获取数据时，对数据的处理，作为 getData 的回调函数
                var i, len, data = {
                    value: []
                };
                if (!json || json.length === 0) {
                    return false;
                }

                console.log(json);
                len = json.length;

                jsonStr = "{'value':[";
                for (i = 0; i < len; i++) {
                    data.value.push({
                    	id : json[i].id,
                        productName: "商品名:" + json[i].productName
                    });
                }

                //字符串转化为 js 对象
                return data;
            }
        });
        
</script>
</html>
