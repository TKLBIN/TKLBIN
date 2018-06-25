<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>商品分类管理</title>
    <jsp:include page="../common/include_css.jsp" />
</head>

<body class="gray-bg">
	<a href="/shop-admin/toProductClassify">跳回到父分类首页</a>
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><small>商品分类管理</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                    	<div  class="dataTables_wrapper form-inline" role="grid">
                    		<!-- 查询条件 -->
	                    	<form id="searchForm" method="post" action="/shop-admin/sub/toselect">
		                    	<div class="row">
		                    		<div class="col-sm-6">
		                    			<div class="dataTables_length">
		                    				<a href="/shop-admin/sub/toInsert" class="btn btn-primary ">添加分类</a>
		                    			</div>
		                    		</div>
		                    		<div class="col-sm-6">
		                    			<div class="input-group" style="float:right;">
				                            <input type="text" class="form-control" value="${productClassifySub.classifySubName}" name="classifySubName" placeholder="分类名字">
				                            <div class="input-group-btn">
				                                <button type="submit" class="btn btn-primary">搜索</button>
				                            </div>
				                        </div>
		                    		</div>
		                    	</div>
	                    	</form>
                    		<!-- 查询条件结束 -->
	                        <table class="table table-striped table-bordered table-hover dataTables-example">
	                            <thead>
	                                <tr>
	                                    <th>ID</th>
	                                    <th>子分类名称</th>
	                                    <th>排序</th>
	                                    <th>是否启用</th>
	                                    <th>操作</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            <c:forEach var="i" items="${subList}">
	                            		<tr class="gradeA">
		                            		 <td>${i.id}</td>
		                            		 <td>${i.classifySubName}</td>
		                            		 <td>${i.subOrder}</td>
		                            		 <td>${i.subIsOn}</td>
			                                 <td>
			                                 	<a href="/shop-admin/sub/toUpdate?id=${i.id}"><i style="margin-left:5px;" class="fa fa-edit"></i></a>
			                                 	<a href="javascript:;" onclick="deletesub(${i.id})"><i style="margin-left:5px;" class="fa fa-trash"></i></a>
			                                 </td>
		                            	</tr>
		                            	</c:forEach>
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
</body>
<script type="text/javascript">
	function deletesub(id){
		$.ajax({
			url:"/shop-admin/sub/delete/"+id,
			type:"post",
			success:function(data){
				if(data=='success'){
					window.location.reload();
				}else{
					alert("删除失败");
				}
			}
		})
	}
	
	
	
</script>
</html>
