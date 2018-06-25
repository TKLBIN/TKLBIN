<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>广告管理</title>
    <jsp:include page="../common/include_css.jsp" />
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><small>广告管理</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                    	<div  class="dataTables_wrapper form-inline" role="grid">
                    		<!-- 查询条件 -->
	                    	<form id="searchForm" method="post">
		                    	<div class="row">
		                    		<div class="col-sm-2">
		                    			<div class="dataTables_length">
		                    				<a href="#" class="btn btn-primary ">发布广告</a>
		                    			</div>
		                    		</div>
		                    	</div>
	                    	</form>
                    		<!-- 查询条件结束 -->
	                        <table class="table table-striped table-bordered table-hover dataTables-example">
	                            <thead>
	                                <tr>
	                                    <th>ID</th>
	                                    <th>查询大图</th>
	                                    <th>商品名称</th>
	                                    <th>操作</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            		<tr class="gradeA">
		                            		 <td>1</td>
		                            		 <td><a href="javascript:;" onclick="showBigPic();">点击查看大图</a></td>
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
    
    <div id="diaLogDiv" style="display:none;">
    	<div class="row">
    		<img alt="" src="#" id="adImg">
    	</div>
    </div>
    
   <script type="text/javascript">
   	function showBigPic(){
   		layer.open({
			type : 1,
			skin : 'layui-layer-rim', //加上边框
			area : [ '880px', '440px' ], //宽高
			content : $("#diaLogDiv").html() //内容
		});
   	}
   	
   </script>

    <jsp:include page="../common/include_js.jsp" />
</body>
</html>
