<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":"
			+ request.getServerPort()
			+ path + "/";
%>
<link href="<%=basePath %>AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet"
	type="text/css">
<link href="<%=basePath %>AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet"
	type="text/css">

<link href="<%=basePath %>css/personal.css" rel="stylesheet" type="text/css">
<link href="<%=basePath %>css/infstyle.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="<%=basePath %>css/sweetalert/sweetalert.css"  type="text/css">
<script src="<%=basePath %>AmazeUI-2.4.2/assets/js/jquery.min.js"
	type="text/javascript"></script>
<script src="<%=basePath %>AmazeUI-2.4.2/assets/js/amazeui.js"
	type="text/javascript"></script>
<script src="<%=basePath%>js/postAjax.js"></script>
<script src="<%=basePath%>js/sweetalert/sweetalert.min.js"></script>