package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.model.ProductClassify;
import com.model.ProductClassifySub;
import com.service.impl.ProductClassifyService;
import com.service.impl.ProductSubClassifyService;

@Controller
@RequestMapping("/sub")
public class ProductSubClassifyController {
	@Autowired
	private ProductSubClassifyService productSubClassifyService;
	@Autowired
	private ProductClassifyService productClassifyService;
	
	//跳转到子分类页面
	@RequestMapping("/toselect")
	public String toselect(ModelMap modelMap,ProductClassifySub productClassifySub){
		List<ProductClassifySub> subList = productSubClassifyService.select(productClassifySub);
		modelMap.addAttribute("subList", subList);
		modelMap.addAttribute("productClassifySub", productClassifySub);
		return "classify/list-sub-classify";
	} 
	//跳转到新增页面(查询所有分类)
	@RequestMapping("/toInsert")
	public String toInsert(ModelMap modelMap,ProductClassify productClassify){
		List<ProductClassify> classifyList = productClassifyService.select(productClassify);
		modelMap.addAttribute("classifyList", classifyList);
		
		return"classify/edit-sub-classify";
	}
	
	//新增子分类
	@RequestMapping("/doInsert")
	public String doInsert(ProductClassifySub productClassifySub){
		int i = productSubClassifyService.insertSelective(productClassifySub);
		if(i>0){
			return "redirect:toselect";
		}
		return"";
	}
	//跳转到修改页面
	@RequestMapping("/toUpdate")
	public String toUpdate(ModelMap modelMap,ProductClassifySub productClassifySub){
		ProductClassify productClassify = new ProductClassify();
		List<ProductClassify> List = productClassifyService.select(productClassify);
		productClassifySub = productSubClassifyService.selectByPrimaryKey(productClassifySub.getId());
		modelMap.addAttribute("productClassifySub", productClassifySub);
		modelMap.addAttribute("List", List);
		return "classify/update-sub-classify";
	}
	
	//处理修改
	@RequestMapping("/doUpdate")
	public String doupdate(ProductClassifySub productClassifySub){
		int i =productSubClassifyService.updateByPrimaryKeySelective(productClassifySub);
		if(i>0){
			return"redirect:toselect";
		}
		return "";
	}
	
	
	
	//删除
	@ResponseBody
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") Integer id){
		int i = productSubClassifyService.deleteByPrimaryKey(id);
		if(i>0){
			return"success";
		}
		return"";
	}
	
	
	
}
