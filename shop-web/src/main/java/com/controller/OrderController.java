package com.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.model.Customer;
import com.model.OrderItem;
import com.model.Orders;
import com.model.ShoppingCar;
import com.model.ShoppingCarAttr;
import com.service.impl.ShopCarServiceImpl;
import com.model.ShopAddress;
import com.service.impl.OrderItemSericeImpl;
import com.service.impl.OrderServiceImpl;

@Controller
@RequestMapping("/orders")
public class OrderController {
	@Autowired
	private OrderServiceImpl orderSerImpl;
	@Autowired
	private OrderItemSericeImpl orderItemSerImpl;
	@Autowired
	private ShopCarServiceImpl carimpl;

	@RequestMapping("toOrder")
	public String toOrder(ModelMap modelMap, HttpSession session) {
		Customer cus = (Customer) session.getAttribute("user");
		Orders o = new Orders();
		o.setCustomerId(1);
		List<Orders> listOrder = orderSerImpl.selectByCusId(o);
		System.out.println(listOrder);

		modelMap.addAttribute("listOrder", listOrder);

		return "/person/order";
	}

	/**
	 * 查看订单详情
	 * 
	 * @param orders
	 * @param modelMap
	 * @return
	 */
	@RequestMapping("toOrderInfo")
	public String toOrderInfo(Orders orders, ModelMap modelMap) {
		System.out.println(orderSerImpl.selectByCusId(orders).get(0));
		Customer cus1 = new Customer();
		cus1.setId(1);
		ShopAddress shopAddress = orderSerImpl.selectByCusIdAndDau(cus1);
		System.out.println("我是地址" + shopAddress);
		modelMap.addAttribute("shopAddress", shopAddress);
		modelMap.addAttribute("orders", orderSerImpl.selectByCusId(orders).get(0));
		return "/person/orderinfo";

	}

	/**
	 * 携带数据 进入购物结算页面
	 * @param num
	 * @param str
	 * @param id
	 * @param price
	 * @param userid
	 * @return
	 */
	@ResponseBody
	@RequestMapping("car")
	public String goshopcar(@RequestParam("num") Integer num, @RequestParam("d") String str,
			@RequestParam("id") Integer id, @RequestParam("price") Integer price,
			@RequestParam("userid") Integer userid) {
		String strs[] = str.split("/");
		// 将数组转list
		List<String> attr = new ArrayList<>(Arrays.asList(strs));
		for (int i = 0; i < attr.size(); i++) {
			for (int j = i + 1; j < attr.size(); j++) {
				if (attr.get(j).split(",")[1].equals(attr.get(i).split(",")[1])) {
					attr.set(i, attr.get(j));
					attr.remove(j);
				}
			}
		}
		List<ShoppingCarAttr> carAttrs = new ArrayList<>();
		for (int i = 0; i < attr.size(); i++) {
			ShoppingCarAttr carAttr = new ShoppingCarAttr();
			carAttr.setChooseAttr(attr.get(i).split(",")[1]);
			carAttr.setChooseAttrValue(attr.get(i).split(",")[0]);
			carAttr.setProductId(id);
			carAttrs.add(carAttr);
		}

		ShoppingCar car = new ShoppingCar();
		car.setBuyNum(num);
		car.setProductId(id);
		car.setCustomerId(userid);
		car.setProductPrice(BigDecimal.valueOf(price));
		car.setSumPrice(BigDecimal.valueOf(num * price));
		if (carimpl.insertCar(car)) {

			if (carimpl.insertCarShuxing(carAttrs)) {
				//缺向订单表写入数据   获取shoping-car页面数据回显
				List<ShoppingCar> cars= carimpl.selCar(car);
				//进入shoping-car页面
				return "s";
			}
		}
		return null;
	}
	
	/**
	 * 删除订单
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("delOrder")
	public String delOrder(@RequestParam(value = "id") Integer id) {
		if (orderSerImpl.deleteByPrimaryKey(id)) {
			if (orderItemSerImpl.deleteByOrderId(id))
				return "s";
		}
		return "e";
	}

	/**
	 * 更改订单状态
	 * 
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping("toUpdateSta")
	public String toUpdateSta(@RequestParam(value = "id") Integer id) {
		orderSerImpl.updateOrderStatusById(id);
		return "s";
	}

	/**
	 * 确认收货
	 * 
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping("confirmOrder")
	public String confirmOrder(@RequestParam(value = "id") Integer id) {

		if (orderSerImpl.confirmOrder(id)) {
			return "s";
		}
		return "e";
	}

	/**
	 * 用户发布评价
	 */
	@RequestMapping("publishCs")
	public String publishComment(Orders orders) {
		for(OrderItem or :orders.getOrderItems()){
			System.out.println(or.getCommentContent().getCommentContent());
			for (MultipartFile picture : or.getPictures()) {
				System.out.println(picture.getOriginalFilename());
			}
		}
		return null;
	}

	/**
	 * 跳转评价页面
	 * 
	 */
	@RequestMapping("toAssessPro")
	public String toAssessPro(Orders orders, ModelMap modelMap) {
		modelMap.addAttribute("order", orderSerImpl.selectByCusId(orders).get(0));
		return "/person/commentlist";
	}
}
