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
	                    	<form id="searchForm" method="post" action="toProductClassify">
		                    	<div class="row">
		                    		<div class="col-sm-6">
		                    			<div class="dataTables_length">
		                    				<a href="toInsert" class="btn btn-primary ">添加分类</a>
		                    			</div>
		                    		</div>
		                    		<div class="col-sm-6">
		                    			<div class="input-group" style="float:right;">
				                            <input type="text" class="form-control" name="classifyName" value="${productClassify.classifyName}" placeholder="分类名字">
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
	                                    <th>分类名字</th>
	                                    <th>排序</th>
	                                    <th>是否启用</th>
	                                    <th>操作</th>
	                                </tr>
	                                
	                            </thead>
	                            
	                            <tbody>
	                            <c:forEach var="i" items="${ClassifyList}">
	                            		<tr class="gradeA">
		                            		 <td>${i.id}</td>
		                            		 <td>
		                            		 ${i.classifyName}
		            							<a href="javascript:;" onclick="dialogShow(${i.id})">
		                            		 		<i class="fa fa-plus"></i>
		                            		 	</a>
		                            		 </td>
		                            		 <td>${i.cOrder}</td>
		                            		 <td>${i.isOn}</td>
			                                 <td>
			                                 	<a href="update?id=${i.id}"><i style="margin-left:5px;" class="fa fa-edit"></i></a>
			                                 	<a href="javascript:;" onclick="deleteProduct(${i.id})"><i style="margin-left:5px;" class="fa fa-trash"></i></a>
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

	<!-- 弹窗 -->
	<div id="diaLogDiv" style="display:none;">
		<div class="ibox-content">
            <div  class="dataTables_wrapper form-inline" role="grid">
            	<table class="table table-striped table-bordered table-hover dataTables-example">
	                <thead>
	                   <tr>
	                     <th>ID</th>
	                     <th>分类名字</th>
	                     <th>排序</th>
	                     <th>是否启用</th>
	                     <th>操作</th>
	                    </tr>
	                </thead>
	                <tbody id="tbody">
	                
	                
	                </tbody>
	             </table>
            </div>
        </div>
	</div>
	
    <!-- Page-Level Scripts -->
    <script>
    	var layer_index;
		function dialogShow(id){
			$("#tbody").empty();
			$.ajax({
				url:"/shop-admin/sub/"+id,
				type:"post",
				async:false,
				success:function(data){
					console.log(data.listProClassifySub.length);
						for (var i = 0; i < data.listProClassifySub.length; i++) {
							$("#tbody").append("<tr><td>"+data.listProClassifySub[i].id+"</td><td>"+data.listProClassifySub[i].classifySubName+"</td><td>"+data.listProClassifySub[i].subOrder+"</td><td>"+data.listProClassifySub[i].subIsOn+"</td><td><a title='"+data.listProClassifySub[i].id+"' onclick='toUpdate("+data.listProClassifySub[i].id+")' href='#'><i style='margin-left:5px;' class='fa fa-edit'></i></a>"+
			                     	"<a title='"+data.listProClassifySub[i].id+"' onclick='delSub("+data.listProClassifySub[i].id+")' href='javascript:;'><i style='margin-left:5px;' class='fa fa-trash'></i></a></td></tr>");

						}
						}

					
					
				})
			
			
			
			
			layer_index = layer.open({
				type : 1,
				skin : 'layui-layer-rim', //加上边框
				area : [ '880px', '540px' ], //宽高
				content : $("#diaLogDiv").html() //内容
			});
		}
		
		function deleteProduct(id){
			$.ajax({
				url:"/shop-admin/delete/"+id,
				type:"post",
				success:function(data){
					if(data=='success'){
						alert("删除成功");
						window.location.reload();
					}else{
						alert("您要删除的分类有子分类，不能进行删除");
					}
				}
			})
		}
		
		function toUpdate(id){
			
			window.location="/shop-admin/sub/toUpdate?id="+id;
		}
		
		function delSub(id){
			$.ajax({
				url:"/shop-admin/deleteSub/"+id,
				type:"post",
				success:function(data){
					if(data=='success'){
						alert("删除成功");
						window.location.reload();
					}else{
						alert("删除失败");
					}
				}
			})
		}
		
		
		
		
		
		
    </script>
</body>
</html>
