package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Customer;
import com.model.CustomerCoupon;
import com.model.ShopAddress;
import com.service.impl.CustomerCouponServiceImpl;
import com.service.impl.UserServiceImpl;

@Controller
@RequestMapping("/pay")
public class PayController {
	
	@Autowired
	private UserServiceImpl userimpl;
	@Autowired
	private CustomerCouponServiceImpl customerCouponServiceImpl;
	/**
	 * 页面加载生成地址
	 * @param customer
	 * @return
	 */
	@RequestMapping("/listPay")
	public String listPay(Customer customer,ModelMap map,HttpSession sesson){
		List<ShopAddress> addresses = userimpl.getAdds(customer);
		map.addAttribute("adds", addresses);
		//优惠券查找
		//int id=Integer.parseInt(sesson.getAttribute("id").toString()) ;
		int id=1;
		List<CustomerCoupon> ccs=customerCouponServiceImpl.selectbyUserId(id);
		map.addAttribute("ccs", ccs);
		return "/pay/pay";
	}
}
