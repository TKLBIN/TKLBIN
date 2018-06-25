package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.OrdersMapper;
import com.dao.ShopAddressMapper;
import com.github.miemiedev.mybatis.paginator.domain.Order;
import com.model.Customer;
import com.model.Orders;
import com.model.ShopAddress;
import com.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{

	 @Autowired
	 private OrdersMapper orderMapper;
	 @Autowired
	 private ShopAddressMapper shopAddressMapper;
	@Override
	public List<Orders> selectByCusId(Orders orders) {
		
		return orderMapper.selectByCusId(orders);
	}
	@Override
	public boolean updateOrderStatusById(Integer id) {
		
		return orderMapper.updateOrderStatusById(id);
	}
	@Override
	public boolean deleteByPrimaryKey(Integer id) {
		boolean flag=false;
		if(orderMapper.deleteByPrimaryKey(id)>0){
			flag=true;
		}
		return flag;
	}
	@Override
	public ShopAddress selectByCusIdAndDau(Customer customer) {
		
		return shopAddressMapper.selectByCusIdAndDau(customer);
	}
	@Override
	public boolean confirmOrder(Integer id) {
		
		return orderMapper.confirmOrder(id);
	}

}
