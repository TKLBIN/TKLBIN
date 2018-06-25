package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CustomerCouponMapper;
import com.model.Customer;
import com.model.CustomerCoupon;
import com.service.CustomerCouponService;

@Service
public class CustomerCouponServiceImpl implements CustomerCouponService{

	@Autowired
	private CustomerCouponMapper customerCouponMapper;
	@Autowired
	private Customer customer;

	@Override
	public List<CustomerCoupon> selectbyUserId(int id) {
		customer.setId(id);
		List<CustomerCoupon> CustomerCoupons=customerCouponMapper.selectAllCoupon(customer);
		return CustomerCoupons;
	}

}
