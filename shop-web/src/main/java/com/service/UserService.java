package com.service;

import java.util.List;

import com.model.CommentContent;
import com.model.Customer;
import com.model.CustomerCoupon;
import com.model.Product;
import com.model.ShopAddress;

public interface UserService {
	//用户登陆
	Customer tologin(Customer customer);
	//修改用户密码
	boolean pwdModifyById(Customer customer);
	//修改支付密码
	boolean modifyPay(Customer customer);
	
	//修改邮箱
	boolean modifyEmail(Customer customer);
	//绑定身份证
	boolean modifyidcard(Customer customer);
	boolean updateCus(Customer customer);
	Customer selectByEmail(Customer customer);
	Customer selectByPhone(Customer customer);
	boolean insert(Customer customer);
	/**获取收货
	 * 
	 * @param customer
	 * @return
	 */
	List<ShopAddress> getAdds(Customer customer);
	
	/**
	 * 新增收货地址
	 */
	boolean insertAdd(ShopAddress shopAddress);
	/**
	 * 修改收货地址
	 */
	boolean upadd(ShopAddress shopAddress);
	/**
	 * 设置默认地址
	 */
	boolean setMo(ShopAddress shopAddress);
	/**
	 * 取消默认地址
	 */
	boolean quMo(ShopAddress shopAddress);
	/**
	 * 删除收货地址
	 */
	boolean deladd(Integer id);
	/**
	 * 获取用户全部优惠券
	 */
	List<CustomerCoupon> getCouponList(Customer customer);
	/**
	 * 删除过期优惠券
	 */
	boolean delPathCou(Integer id);
	
	/**
	 * 足迹功能 批量查询商品信息
	 */
	List<Product> footList(List foot);
	/**
	 * 获取订单信息
	 */
	List<CommentContent> getComments(Customer customer);
}
