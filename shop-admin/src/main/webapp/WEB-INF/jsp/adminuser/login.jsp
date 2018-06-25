<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <jsp:include page="../common/include_css.jsp" />

</head>

<body class="signin">
    <div class="signinpanel">
        <div class="row">
            <div class="col-sm-7">
                <div class="signin-info">
                    <div class="logopanel m-b">
                        <h1>后台管理系统</h1>
                    </div>
                    <div class="m-b"></div>
                    <h4>欢迎使用 <strong>商城后台管理系统</strong></h4>
                    <ul class="m-b">
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势一</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势二</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势三</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势四</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 优势五</li>
                    </ul>
                    <strong>还没有账号？ <a href="#">立即注册&raquo;</a></strong>
                </div>
            </div>
            <div class="col-sm-5">
                <form id="loginForm">
                    <h4 class="no-margins">登录：</h4>
                    <p class="m-t-md">登录到商城管理后台</p>
                    <input type="text"  class="form-control uname"  placeholder="用户名" />
                    <input type="password"  class="form-control pword m-b" placeholder="密码" />
                    <a href="">忘记密码了？</a>
                    <button type="button" class="btn btn-success btn-block">登录</button>
                </form>
            </div>
        </div>
        <div class="signup-footer">
            <div class="pull-left">
                &copy; 2017 All Rights Reserved. Muty
            </div>
        </div>
    </div>
    
    <jsp:include page="../common/include_js.jsp" />
</body>
</html>

