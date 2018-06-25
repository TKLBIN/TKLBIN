package com.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.ShopNotic;
import com.service.impl.impl.ShopNoticServiceImpl;

@Controller
@RequestMapping("/shopNoti")
public class ShopNoticController {
	
	/**
	 * 列表显示
	 * 时间区间查询
	 */
	@Autowired
	private ShopNoticServiceImpl shopNoticServiceImpl;
	@RequestMapping("/listShopNotic")
public String listShopNotic(HttpServletRequest requet,ShopNotic shopNotic){
		
		List<ShopNotic>shopNotics= shopNoticServiceImpl.selAllShopNotic(shopNotic);
		
		requet.setAttribute("shopNotics", shopNotics);
	return "notic/list-notic";
}
	
	/**
	 * 新增和修改页面跳转，
	 * @param shopNotic
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateshopNotic")
	public String updateshopNotic(ShopNotic shopNotic,HttpServletRequest request){
		ShopNotic sn=shopNoticServiceImpl.updateShopNotic(shopNotic);
		request.setAttribute("sn", sn);
		return "notic/edit-notic";
	}
	
	/**
	 * 未完成，需要登录人id
	 * @param shopNotic
	 * @return
	 */
	@RequestMapping("/upshopNotic")
	public String upshopNotic(ShopNotic shopNotic){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		shopNotic.setCreateTime( new java.sql.Date(new Date().getTime()));
		shopNoticServiceImpl.upShopNotic(shopNotic);
		return "redirect:listShopNotic";
}
	
	/**
	 * 通过id删除
	 * @param 
	 * @return
	 */
	@RequestMapping("/deleteById")
	public String deleteById(ShopNotic shopNotic){
		shopNoticServiceImpl.deleteById(shopNotic);
		return "redirect:listShopNotic";
	}
	                       
}
