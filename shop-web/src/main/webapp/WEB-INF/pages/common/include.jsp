<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":"
			+ request.getServerPort()
			+ path + "/";
%>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="stylesheet" href="<%=basePath %>AmazeUI-2.4.2/assets/css/amazeui.css" />
<link rel="stylesheet" href="<%=basePath %>/css/dlstyle.css" type="text/css">

<link rel="stylesheet" href="<%=basePath %>AmazeUI-2.4.2/assets/css/amazeui.min.css" />
<link rel="stylesheet" href="<%=basePath %>css/dlstyle.css"  type="text/css">
<script src="<%=basePath %>AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
<script src="<%=basePath %>AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
<script src="<%=basePath%>layer-v3.0.3/layer/layer.js"></script>
<script src="<%=basePath%>js/postAjax.js"></script>

