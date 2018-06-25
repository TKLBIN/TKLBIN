<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>修改分类关系</title>
    <jsp:include page="../common/include_css.jsp" />
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><small>新增分类关系</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form class="form-horizontal" id="editForm" action="/shop-admin/relation/doUpdate">
                        <input type="hidden" value="${classifyRelation.id}" name="id"/>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">分类1</label>
                                <div class="col-sm-10">
                                    <select class="form-control m-b" name="classifyId">
                                    <c:forEach var="i" items="${classifyList}">
                                    	<option value="${i.id}" ${classifyRelation.classifyId==i.id ? 'selected' : ''}>${i.classifyName}</option>
                                    	</c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">分类2</label>
                                <div class="col-sm-10">
                                   <select class="form-control m-b" name="classifyIdTwo">
                                    	<c:forEach var="i" items="${classifyList}">
                                    	<option value="${i.id}" ${classifyRelation.classifyIdTwo==i.id ? 'selected' : ''}>${i.classifyName}</option>
                                    	</c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">排序</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="relationOrder" value="${classifyRelation.relationOrder}">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="submit">保存内容</button>
                                    <button class="btn btn-white" type="reset" onclick="cancal()">取消</button>
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
	function cancal(){
		window.location="/shop-admin/relation/toSelect";
	}
</script>
</html>
