/**
 * @param url 请求路径
 * @param formId form表单id
 * @param dataType 返回值类型
 * @param callback 回调函数
 * 示例：
 * postAjax("/xxxHandler","loginForm","json",function(data){
 * 		//这里可以拿到handler返回值，在data里
 * 		可以进行一些操作，相当于success
 * })
 */
function postAjax(url,formId,dataType,callback){
	$.ajax({
		url:url,
		data:$("#"+formId).serialize(),
		dataType:dataType,
		type:"post",
		async:false,
		success:function(data){
			if(typeof callback == "function"){
				callback(data);
			} 
		}
	})
}

/**
 * 示例用法
 * 给出提示 
 * 		swalAlert("测试","error");
 * 给出提示并跳转
 *      swalAlert("测试","error",function(){
	    	window.location = "https://www.baidu.com";
	    });
 * @param mes 提示语
 * @param type  提示类型  success成功，error错误
 * @param callback 回调函数
 */

function swalAlert(mes,type,callback){
	swal({
		title:"提示信息",
        text: mes,
        type: type
    },function(){
    	if(typeof callback == "function"){
			callback();
		} 
    });
}

/**
 * 确认提示框
 * 示例：
 * 		type参数: success 成功提示
 * 				  warning 警告提示
 * 				  error 错误提示
 * 		swalConfirm("要提示的话","success",function(){
 * 			//如果点击了确定，会执行这里的方法
 * 		})
 */
function swalConfirm(mes,type,callback){
	swal({
        title: "提示信息",
        text: mes,
        type: type,
        showCancelButton: true,
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        closeOnConfirm: false,
        closeOnCancel: true
      },
      function (isConfirm) {
         if (isConfirm) {
        	 if(typeof callback == "function"){
     			callback();
     		}
         } 
      });
}
