<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>快递管理</title>
    <jsp:include page="../common/include_css.jsp" />
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><small>快递管理</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                    	<div  class="dataTables_wrapper form-inline" role="grid">
                    		<!-- 查询条件 -->
                    		<select>
                    		  <c:forEach items="${expresses}" var="e">
                    		<option>${e.expressName}</option>
                    		</c:forEach>
                    		</select>
                    		<button>查询</button>
	                    	<form id="searchForm" method="post">
		                    	<div class="row">
		                    		<div class="col-sm-6">
		                    			<div class="dataTables_length">
		                    				<a href="/shop-admin/express/updateexpress?id=-1" class="btn btn-primary ">添加快递</a>
		                    			</div>
		                    		</div>
		                    	</div>
	                    	</form>
                    		<!-- 查询条件结束 -->
	                        <table class="table table-striped table-bordered table-hover dataTables-example">
	                            <thead>
	                                <tr>
	                                    <th>ID</th>
	                                    <th>快递名字</th>
	                                    <th>快递金额</th>
	                                    <th>操作</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            <c:forEach items="${expresses}" var="e">
	                            		<tr class="gradeA">
		                            		 <td>${e.id}</td>
		                            		 <td>${e.expressName}</td>
		                            		 <td>${e.expressPrice}</td>
			                                 <td>
			                                 	<a href="/shop-admin/express/updateexpress?id=${e.id}"><i style="margin-left:5px;" class="fa fa-edit"></i></a>
			                                 	<a href="javascript:;" onclick="delect(${e.id})"><i style="margin-left:5px;" class="fa fa-trash"></i></a>
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
function delect(id) {
	if(confirm("是否确定删除？")){
		window.location="/shop-admin/express/deleteById?id="+id;
	}else{}

}

</script>
</html>
