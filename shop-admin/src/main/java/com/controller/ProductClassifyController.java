package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.model.ProductClassify;
import com.service.impl.ProductClassifyService;
import com.service.impl.ProductSubClassifyService;

@Controller
public class ProductClassifyController {
	
	@Autowired
	private ProductClassifyService productClassifyService;
	@Autowired
	private ProductSubClassifyService productSubClassifyService;
	
	//登录时查找错所有
	@RequestMapping("/toProductClassify")
	public String toProductClassify(ModelMap modelMap , ProductClassify productClassify){
		List<ProductClassify> ClassifyList = productClassifyService.select(productClassify);
		modelMap.addAttribute("ClassifyList", ClassifyList);
		return "classify/list-classify";
	}
	//跳转到插入页面
	@RequestMapping("/toInsert")
	public String toInsert(){
		return"classify/edit-classify";
	}
	
	//插入分类
	@RequestMapping("/insert")
	public String insert(ProductClassify productClassify){
		int i =productClassifyService.insert(productClassify);
		if(i==1){
			return "redirect:/toProductClassify";
		}
		return "";
	}
	
	//跳转到更改页面
	@RequestMapping("/update")
	public String update(ModelMap modelMap,ProductClassify productClassify){
		List<ProductClassify> ClassifyList = productClassifyService.select(productClassify);
		modelMap.addAttribute("ClassifyList", ClassifyList);
		modelMap.addAttribute("productClassify", productClassify);
		return"classify/update-classify";
	}
	//处理修改
	@RequestMapping("/doUpdate")
	public String doUpdate(ProductClassify productClassify){
		int i = productClassifyService.updateByPrimaryKey(productClassify);
		if(i>0){
			return"redirect:/toProductClassify";
		}
		return "";
	}
	//删除
	@ResponseBody
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") Integer id){
		ProductClassify productClassify = new ProductClassify();
		productClassify.setId(id);
		int i = productClassifyService.selectDelete(productClassify);
		System.out.println("----->"+i);
		if(i==0){
			int j = productClassifyService.deleteByPrimaryKey(productClassify.getId());
			if(j>0){
				return"success";
			}
		}
		return "";
		
	}
	
	//加号 显示子分类
	@ResponseBody
	@RequestMapping("/sub/{id}")
	public ProductClassify sub(@PathVariable("id") Integer id){
		ProductClassify productClassify =  productClassifyService.selectSub(id);
		return productClassify;
	}
	
	
	//删除子分类
		@ResponseBody
		@RequestMapping("/deleteSub/{id}")
		public String deleteSub(@PathVariable("id") Integer id){
			int i = productSubClassifyService.deleteByPrimaryKey(id);
			if(i>0){
				return"success";
			}
			return"";
		}
	
}
