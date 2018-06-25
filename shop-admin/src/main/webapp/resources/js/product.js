//弹出窗口的索引
var layer_index;
//属性名字参数下标
var attrNameIndex = 0;
//初始化数组（已选中属性值数组）二维数组
var attrValue_arr = [];
//拼接后的SKU最终结果,以数组形式保存
var skuArr = [];
//sku属性下标
var skuIndex = 0;

/**
 * 切换父分类，查询对应子分类，并显示到子分类下拉框
 * 调用时传递了一个参数， this
 * this代表了 这个元素自身
 * @param obj
 */
function searchSub(obj){
	//触发ajax
	postAjax
	("/admin/classify/getByClassifyId?classifyId="+$(obj).val(),
			"","json",function(data){
		//1.将子分类下拉框清空
		$("#subSelect").empty();
		//2.循环拼接html
		var shtml = "";
		$.each(data,function(key,i){
			shtml += "<option value='"+i.id+"'>"
			      +i.classifySubName
				  +"</option>";
		})
		//3.将拼接的结果，绑定到元素上
		$("#subSelect").html(shtml);
	})
}

/**
 * 查询所有属性，显示到弹出层
 */
function addAttr(){
	postAjax("/admin/pro/selectAttrJson","","json",
			function(data){
		var shtml = "";
		//data中 保存了所有属性 List
		$.each(data,function(key,i){
			shtml += "<tr>"
				  +  "<td>"+i.id+"</td>"
				  +  "<td>"+i.attrName+"</td>"
				  +  "<td>"
				  +  "<button class='btn btn-primary btn-sm' type='button' onclick='chooseAttr("+i.id+")'>选择</button>"
				  +  "</td>"
				  +  "</tr>"
		})
		$("#tbody").empty();
		$("#tbody").html(shtml);
		
		//显示弹出层
		layer_index = layer.open({
			type : 1,
			skin : 'layui-layer-rim', //加上边框
			area : [ '880px', '540px' ], //宽高
			content : $("#diaLogDiv").html() //内容
		});
	})
}

/**
 * 选择属性
 * id 代表了属性的id
 */
function chooseAttr(id){
	postAjax("/admin/attr/getAttrValueById?id="+id,
			"","json",function(data){
		//定义一个属性值下标
		var attrValueIndex = 0;
		var shtml = "";
		//data 拿到的是一个ProductAttrBean
		//循环生成属性值的复选框
		$.each(data.attrValueList,function(key,i){
			shtml += "<label class='checkbox-inline i-checks'>"
				  +  "<input type='checkbox' class='attrName"+id
				  +	 "' value='"+i.attrValue+"' data-id='"
				  +  i.id+"' data-value='"+i.attrValue+"' name='attrList["+attrNameIndex+"].attrValueList["+attrValueIndex+"].attrValue'/>"+i.attrValue
				  
				  +  "<input type='hidden' name='attrList["+attrNameIndex+"].attrValueList["+attrValueIndex+"].oldAttrValueId' value='"+i.id+"' />"
				  
				  +  "</label>";
			attrValueIndex++;
		})
		//为每一组属性值拼接删除按钮
		shtml += "<button class='btn btn-primary btn-sm' type='button' onclick='deleteAttr(this)'>删除属性</button>";
		//拼接属性名字
		var vhtml = "";
		vhtml += "<label class='col-sm-2 control-label'>"
			  +  "</label>"
			  +  "<div class='col-sm-10'>"
			  +  "<div>"+data.attrName+"</div>"
			  //拼接好的属性值放到这
			  +  "<div>"+shtml+"</div>"
			  //使用隐藏域拼接参数
			  //属性名字
			  +  "<input type='hidden' name='attrList["+attrNameIndex+"].attrName' value='"+data.attrName+"'/>"
			  +  "<input type='hidden' name='attrList["+attrNameIndex+"].attrId' value='"+data.id+"'/>"
			  //拼接一个隐藏域  作用是为了获取当前页面选择了多少个属性
			  +  "<input type='hidden' class='attrName' value='"+data.id+"' />"
			  +  "</div>"
			 
			  
		//属性的参数值下标+1
		attrNameIndex++;
		
		//将拼接好的HTML赋值到DIV
		$("#attrDiv").append(vhtml);
		//重新加载复选框查询进行美化
		$('.i-checks').iCheck({
	        checkboxClass: 'icheckbox_square-green',
	        radioClass: 'iradio_square-green',
	    });
		//关闭弹出层
		layer.close(layer_index);
	})
}

/**
 * 删除属性
 */
function deleteAttr(obj){
	//删除label
	$(obj).parent().parent().prev().remove();
	//删除div
	$(obj).parent().parent().remove();
	//修改属性下标
	attrNameIndex = $(".attrName").length;
}

/**
 * 清空属性
 */
function emptyAttr(){
	$("#attrDiv").empty();
	attrNameIndex = 0;
}

//根据选择的属性值生成SKU
function createSku(){
	attrNameIndex = 0;
	attrValue_arr = [];
	skuArr = [];
	skuIndex = 0;
	//首先获取添加了几个属性
	var attrName_arr = $(".attrName");
	
	for(var i = 0;i<attrName_arr.length;i++){
		//获取所有选中的属性值，返回一个数组，并将数组push进外层数组
		attrValue_arr.push($("input[class='attrName"+$(attrName_arr[i]).val()+"']:checked"));
	}
	
	//递归方式生成已选中的所有属性的组合（笛卡尔积）
	//思路为 已第一个组选中的属性值为根，与其他所有已选中的属性值进行拼接
	//因为属性值会出现多组，所以采用递归方式进行拼接
	//将每一次循环的结果作为参数传递至下一次循环里
	for(var i= 0;i<attrValue_arr[0].length;i++){
		//只选择了一个属性
		if(attrValue_arr.length == 1){
			for(var i=0;i<attrValue_arr[0].length;i++){
				skuArr.push({'attrValue':$(attrValue_arr[0][i]).attr("data-value"),'attrId':$(attrValue_arr[0][i]).attr("data-id")});
			}
		}else{
			var forArray = [attrValue_arr[0][i]];
			concatSku(forArray,1);
		}
	}
	
	//将拼接好的SKU属性显示
	var skuHtml = "";
	for(var i = 0;i<skuArr.length;i++){
		skuHtml += "<tr>"
				+  "<td>"+skuArr[i].attrValue+"</td>"
				+  "<input type='hidden' name='skuList["+skuIndex+"].skuName' value='"+skuArr[i].attrValue+"' />"
				+  "<input type='hidden' name='skuList["+skuIndex+"].skuId' value='"+skuArr[i].attrId+"' />"
				+  "<td><input name='skuList["+skuIndex+"].productStock' type='text' /></td>"
				+  "<td><input name='skuList["+skuIndex+"].productPrice' type='text' /></td>"
				+  "</tr>";
		skuIndex++;
	}
	$("#sku_body").html(skuHtml);
	
}


//拼接属性值
//forArray 上一次循环的结果数组（已拼接好的）
//计数变量，记录本次要循环外层数组中的哪一个数组
function concatSku(forArray,forIndex){
	var forResult = [];
	//如果计数变量+1没有超出外层数组长度，则证明没有循环完毕
	if(forIndex+1 <= attrValue_arr.length){
		for(var i = 0;i<forArray.length;i++){
			var attrValue = $(forArray[i]).attr("data-value");
			var attrId = $(forArray[i]).attr("data-id");
			if(forIndex == 1 || attrValue_arr.length == 1){
				attrValue += "-";
				attrId += ",";
			}
			if(attrValue == undefined){
				attrValue = forArray[i].attrValue;
				attrId = forArray[i].attrId;
			}
			for(var j = 0;j<attrValue_arr[forIndex].length;j++){
				var nextAttrValue = $(attrValue_arr[forIndex][j]).attr("data-value");
				var nextAttrId = $(attrValue_arr[forIndex][j]).attr("data-id");
				var ary;
				//将拼接属性值的结果push到结果集数组中
				if(forIndex + 1 == attrValue_arr.length){
					ary = {'attrValue':attrValue + nextAttrValue,'attrId':attrId + nextAttrId}
					//forResult.push(attrValue + "-" + nextAttrValue);
					forResult.push(ary);
				}else{
					ary = {'attrValue':attrValue + nextAttrValue+"-",'attrId':attrId +nextAttrId +","}
					//forResult.push(attrValue + "-" + nextAttrValue+"-");
					forResult.push(ary);
				}
				
			}
		}
		//本次循环完毕后将计数变量+1，以便下次使用
		forIndex++;
		//递归调用
		concatSku(forResult,forIndex);
	}else{
		skuArr = skuArr.concat(forArray);
	}
}

//提交
function saveQ(){
	postAjax("/admin/pro/doUpdate","editForm","text"
			,function(data){
		
	})
}
