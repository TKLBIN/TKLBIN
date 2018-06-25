package com.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
/**
 * wub
 */
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.model.Coupon;
import com.service.impl.impl.CouponServiceImpl;

@Controller
@RequestMapping("/coupon")
public class CouponController {
	/**
	 * 显示所有优惠券信息
	 * wub
	 */
	@Autowired
	private CouponServiceImpl couponServiceImpl;
	@RequestMapping("/listCoupon")
public String listCoupon(HttpServletRequest requet,Coupon coupon){
		
		List<Coupon>coupons= couponServiceImpl.selAllCoupon(coupon);
		
		requet.setAttribute("coupons", coupons);
	return "coupon/list-coupon";
}
	/**
	 *判断新增和修改，回显
	 * @param coupon
	 * @param request
	 * @return
	 */
	@RequestMapping("/updatecoupon")
	public String updatecoupon(Coupon coupon,HttpServletRequest request){
		Coupon cou=couponServiceImpl.updatecoupon(coupon);
		request.setAttribute("cou", cou);
		return "coupon/edit-coupon";
	}
	/**
	 * 通过coupon有没有id来判断新增修改
	 * @param coupon
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/upcoupon")
	public String upcoupon(Coupon coupon){
		if(couponServiceImpl.upcoupon(coupon)){
			return "seccess";
		}
			return "e";  
}
	/**
	 * 通过id删除
	 * @param coupon
	 * @return
	 */
	@RequestMapping("/deleteById")
	public String deleteById(Coupon coupon){
		couponServiceImpl.deleteById(coupon);
		return "redirect:listCoupon";
	}
	                                                                            
}	