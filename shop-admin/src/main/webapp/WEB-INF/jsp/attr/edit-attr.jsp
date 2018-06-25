<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>商品属性</title>
    <jsp:include page="../common/include_css.jsp" />
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><small>商品属性</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal" id="editForm" action="/shop-admin/attr/updataAttr">
                        	<div class="form-group">
                                <label class="col-sm-2 control-label">属性名字</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="attrName" value="${pa.attrName}">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" >属性值</label>
                                <div class="col-md-2">
                                	<a href="javascript:void(0);" onclick="addAttrValue();" class="btn btn-primary ">添加属性值</a>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                            	<div id="valueDiv">
	                            	<!-- 属性值 -->
	                            	<!-- 显示现有属性值-->
	                            	<c:forEach items="${pa.productAttrValuelist}" varStatus="status" var="v">
		                            <div class='form-group' >
		                            		<label class='col-sm-2 control-label'></label>
		                            		<div class='col-md-8'>
		                            			<input type="hidden" name="productAttrValuelist[${status.index }].id" value="${v.id }"/>
		                            			<input type="hidden" name="productAttrValuelist[${status.index }].attrId" value="${pa.id}"/>
		                            			<input type="hidden" name="Id" value="${pa.id}"/>
		                            			<input type='text' class='form-control' placeholder='属性值' name="productAttrValuelist[${status.index }].attrValue" value="${v.attrValue}">
		                            		</div>
		                            		<div class='col-md-2'>
		                            			<a href='javascript:void(0);' class='btn btn-primary' onclick="delAjax(this)">删除属性值</a>
		                            		</div>
		                            </div>
		                            </c:forEach>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="submit">保存内容</button>
                                    <button class="btn btn-white" type="reset" onclick="ret()">取消</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
	
	<jsp:include page="../common/include_js.jsp" />
	

</body>
<script type="text/javascript">
	var index = 0;
	$(document).ready(function () {
	    $('.i-checks').iCheck({
	        checkboxClass: 'icheckbox_square-green',
	        radioClass: 'iradio_square-green',
	    });
	    var listSize = $("#listSize").val();
		   if(listSize != null && listSize != ''){
			   index = $("#listSize").val();
		   }

	});
	
	function addAttrValue(){
		var html = "<div class='form-group' id='attrValue"+index+"'><label class='col-sm-2 control-label'></label>"
				 + "<div class='col-md-8'>"
				 + "<input type='text' class='form-control' name='productAttrValuelist["+index+"].attrValue' placeholder='属性值'>"
				 + "</div>"
				 + "<div class='col-md-2'>"
				 + "<a onclick='deleteValue("+index+");' href='javascript:void(0);' class='btn btn-primary '>删除属性值</a>"
				 + "</div></div>";
				 
		index++;
		$("#valueDiv").append(html);
	} 
	
	function deleteValue(index){
		$("#attrValue"+index).remove();
	}
	
	
	function delAjax(obj){
		$(obj).parent().parent().remove();
	}
	function ret(){
		window.location.href="/shop-admin/attr/listAttr";
	}
</script>
</html>
