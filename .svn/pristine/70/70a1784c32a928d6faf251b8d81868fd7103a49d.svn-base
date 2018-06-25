package com.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.model.Coupon;
import com.model.ProductAttr;
import com.model.ProductAttrValue;
import com.model.ShopNotic;
import com.service.impl.impl.AttrServiceImpl;




@Controller
@RequestMapping("/attr")
public class AttrController {
	@Autowired
	private AttrServiceImpl attrServiceImpl;
	@Autowired
	private ProductAttrValue productAttrValue;
	/**
	 * 載入頁面
	 * @param productAttr
	 * @param request
	 * @return
	 */
@RequestMapping("/listAttr")
public String listAttr(ProductAttr productAttr,HttpServletRequest request){
	System.out.println("productAttr"+productAttr);
	List<ProductAttr>productAttrlist = attrServiceImpl.selAllAttr(productAttr);
	request.setAttribute("productAttrlist", productAttrlist);
	return "attr/list-attr";
}
/**
 * 加号跳转
 * @param request
 * @return
 */
@ResponseBody
@RequestMapping("/listAttrvalue")
public List<ProductAttrValue> listAttrvalue(HttpServletRequest request){
	int id=Integer.parseInt(request.getParameter("id")) ;
	List<ProductAttrValue> values= attrServiceImpl.selAllAttrValue(id);
	
	return values;

}
/**
 * 属性值修改
 * @param id
 * @param v
 * @return
 */
@ResponseBody
@RequestMapping("/upAttrvalue")
public String upAttrvalue(@RequestParam("val") String id,@RequestParam("inputValue") String v){
	
	
	productAttrValue.setId(Integer.parseInt(id));
	productAttrValue.setAttrValue(v);
   if( attrServiceImpl.upProductAttrValue(productAttrValue)){
	   return "success";
   }
	return "e";

}
   /**
    * 属性值删除
    */
@RequestMapping("/deleteById")
public String deleteById(ProductAttrValue productAttrValue){
	attrServiceImpl.deleteById(productAttrValue);
	return "redirect:listAttr";
}
@ResponseBody
@RequestMapping("/addAttrvalue")
public String addAttrvalue(@RequestParam("val") String id,@RequestParam("inputValue") String v){
	productAttrValue.setAttrId(Integer.parseInt(id));
	productAttrValue.setAttrValue(v);
	if(attrServiceImpl.insertAttrValue(productAttrValue)){
		return "success";
	}
	return "e";
}
@RequestMapping("/deleteAttrById")
public String deleteAttrById(ProductAttr productAttr){
	attrServiceImpl.deleteAttrById(productAttr);
	
	return "redirect:listAttr";
}
/**
 * 新增和修改
 * @param productAttr
 * @param request
 * @return
 */
@RequestMapping("/addAttr")
public String addAttr(ProductAttr productAttr,HttpServletRequest request){
	if(productAttr.getId()!=-1){
	ProductAttr pa=attrServiceImpl.updateProductAttr(productAttr);
	
	request.setAttribute("pa", pa);
	}
	return "attr/edit-attr";
}
/**
 * 新增数据储存
 * @param productAttr
 * @param request
 * @return
 */
@RequestMapping("/updataAttr")
public String updataAttr(ProductAttr productAttr,HttpServletRequest request){
	attrServiceImpl.upProductAttr(productAttr);
	return "redirect:listAttr";
}


}