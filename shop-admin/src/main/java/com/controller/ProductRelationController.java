package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.model.ClassifyRelation;
import com.model.ProductClassify;
import com.service.impl.ProductClassifyRelationService;
import com.service.impl.ProductClassifyService;

@Controller
@RequestMapping("relation")
public class ProductRelationController {
	@Autowired
	private ProductClassifyRelationService productClassifyRelationService;
	@Autowired
	private ProductClassifyService productClassifyService;
	
	//跳转到分类关系页面
	@RequestMapping("/toSelect")
	public String toSelect(ModelMap modelMap ,ClassifyRelation classifyRelation){
		List<ClassifyRelation> relationList = productClassifyRelationService.select(classifyRelation);
		modelMap.addAttribute("relationList", relationList);
		return "relation/list-relation";
	}
	
	//到新增关系页面
	@RequestMapping("/toAdd")
	public String toAdd(ModelMap modelMap,ProductClassify productClassify){
		List<ProductClassify> classifyList = productClassifyService.select(productClassify);
		modelMap.addAttribute("classifyList", classifyList);
		return"relation/edit-relation";
	}
	//处理新增
	@RequestMapping("/doAdd")
	public String doAdd(ClassifyRelation classifyRelation){
		int i = productClassifyRelationService.insert(classifyRelation);
		if(i>0){
			return"redirect:toSelect";
		}
		return "";
	}
	//跳转修改页面
	@RequestMapping("/toUpdate")
	public String toUpdate(ModelMap modelMap,ClassifyRelation classifyRelation,ProductClassify productClassify){
		List<ProductClassify> classifyList = productClassifyService.selectAll();
		
		System.out.println(classifyList);
		classifyRelation = productClassifyRelationService.selectByPrimaryKey(classifyRelation.getId());
		modelMap.addAttribute("classifyRelation", classifyRelation);
		modelMap.addAttribute("classifyList", classifyList);
		return "relation/update-relation";
	}
	//处理修改
	@RequestMapping("/doUpdate")
	public String doUpdate(ClassifyRelation classifyRelation){
		int i = productClassifyRelationService.updateByPrimaryKeySelective(classifyRelation);
		if(i>0){
			return"redirect:toSelect";
		}
		return "";
	}
	//删除
	@ResponseBody
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") Integer id){
		int i = productClassifyRelationService.deleteByPrimaryKey(id);
		if(i>0){
			return"success";
		}
		return "";
	}
	
	
	
	
	
	
}
