<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>商品属性管理</title>
<jsp:include page="../common/include_css.jsp" />
</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>
							<small>商品属性管理</small>
						</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
							</a>
						</div>
					</div>
					<div class="ibox-content">
						<div class="dataTables_wrapper form-inline" role="grid">
							<!-- 查询条件 -->
							<form id="searchForm" method="post"  action="/shop-admin/attr/listAttr">
								<div class="row">
									<div class="col-sm-2">
										<div class="dataTables_length">
											<a href="/shop-admin/attr/addAttr?id=-1" class="btn btn-primary ">新增属性</a>
										</div>
									</div>
									<div class="col-sm-10">
										<div class="input-group" style="float: right;">
											<input type="text" class="form-control" name="attrName" placeholder="属性名称">
											<div class="input-group-btn">
												<button type="submit" class="btn btn-primary">搜索</button>
											</div>
										</div>
									</div>
								</div>
							</form>
							<!-- 查询条件结束 -->
							<table
								class="table table-striped table-bordered table-hover dataTables-example">
								<thead>
									<tr>
										<th>ID</th>
										<th>属性名字</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${productAttrlist}" var="p">
										<tr class="gradeA">
											<td>${p.id}</td>
											<td>
											${p.attrName}
												<a href="javascript:;"
												onclick="dialogShow(${p.id})"> <i class="fa fa-plus"></i>
											</a>
											</td>
											<td><a href="javascript:;"
												onclick="addAttrValue(this);"><i
													style="margin-left: 5px;" class="fa fa-diamond"></i></a> 
												<a href="/shop-admin/attr/addAttr?id=${p.id}"><i
													style="margin-left: 5px;" class="fa fa-edit"></i></a> 
												<a href="/shop-admin/attr/deleteAttrById?id=${p.id}"><i style="margin-left: 5px;" class="fa fa-trash"></i></a></td>
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
	<div id="diaLogDiv" style="display: none;">
		<div class="ibox-content">
			<div class="dataTables_wrapper form-inline" role="grid">
				<table
					class="table table-striped table-bordered table-hover dataTables-example">
					<thead>
						<tr>
							<th>ID</th>
							<th>属性值</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody id="tbody">
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	
	
		function dialogShow(id){
			$("#tbody").empty();
			//触发ajax，拿id去查询，拿到一个属性值的LIST集合，返回json,循环json，拼接html，显示到tbody里
			$.ajax({
				url:"/shop-admin/attr/listAttrvalue",
	    	    type:"POST",
	    	    async:false,
	    	    data: {"id":id},
	    	    success:function(data){
	    	    	for (var i = 0; i < data.length; i++) {
	    	    		$("#tbody").append("<tr><td>"+data[i].id+"</td><td>"+data[i].attrValue+"</td><td><a title='"+data[i].id+"' onclick='editAttrValue(this)' href='#'><i style='margin-left:5px;' class='fa fa-edit'></i></a>"+
	                         	"<a title='"+data[i].id+"' onclick='delAttrVal(this)' href='javascript:;'><i style='margin-left:5px;' class='fa fa-trash'></i></a></td></tr>");
					}
	    	    	
	    	    }
			})
		
			layer.open({
				type : 1,
				skin : 'layui-layer-rim', //加上边框
				area : [ '880px', '540px' ], //宽高
				content : $("#diaLogDiv").html()//内容
			});
		}
		
		function addAttrValue(obj){
			var val=$(obj).parent().prev().prev().text();
			swal({   
				title: "新增属性值",   
				text: "",   
				type: "input",   
				showCancelButton: true,   
				closeOnConfirm: false,   
				animation: "slide-from-top",   
				inputPlaceholder: "属性值",
				confirmButtonText: "确定",
                cancelButtonText: "取消",
				//inputValue:"123"  //回显时使用该属性
			}, 
			function(inputValue){   
				if (inputValue === false) 
					return false;      
				if (inputValue === "") {     
					swal.showInputError("属性值不能为空!");     
					return false   
				}else{
					//在这里触发ajax进行新增
					$.ajax({
						url:"/shop-admin/attr/addAttrvalue",
			    	    type:"POST",
			    	    
						data:"val="+val+"&inputValue="+inputValue,
			    	    success:function(data){
			    	    	if(data=="e"){
				    			   alert("操作失败");
				    		   }else{
				    			   location.reload();
				    		   }
			    		   }
						
					});	
					
					
				}
				
			});
		}
		
		function editAttrValue(obj){
			var val = $(obj).parent().prev().prev().text();
					//在ajax的success方法中将查询到的属性值绑定到inputValue属性上
					swal({   
						title: "修改属性值",   
						text: "",   
						type: "input",   
						showCancelButton: true,   
						closeOnConfirm: false,   
						animation: "slide-from-top",   
						inputPlaceholder: "属性值",
						confirmButtonText: "确定",
		                cancelButtonText: "取消",
		                inputValue:$(obj).parent().prev().text()   //回显时使用该属性
					}, 
					function(inputValue,event){   
						if (inputValue === false) 
							return false;      
						if (inputValue === "") {     
							swal.showInputError("属性值不能为空!");     
							return false   
						}else{
							//在这里触发ajax进行修改
							
						$.ajax({
							url:"/shop-admin/attr/upAttrvalue",
				    	    type:"POST",
// 				    	    data:{"val":val,"inputValue":inputValue},
							data:"val="+val+"&inputValue="+inputValue,
				    	    success:function(data){
				    	    	if(data=="e"){
					    			   alert("操作失败");
					    		   }else{
					    			   location.reload();
					    		   }
				    		   }
							
						});	
						
						
						}
					})
		}
		function delAttrVal(obj) {
			var val = $(obj).parent().prev().prev().text();
			window.location.href="/shop-admin/attr/deleteById?id="+val;
		}
	</script>
</body>
</html>
