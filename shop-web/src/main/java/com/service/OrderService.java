package com.service;

import java.util.List;

import com.model.Customer;
import com.model.Orders;
import com.model.ShopAddress;

public interface OrderService {
	
	List<Orders> selectByCusId(Orders orders);
    boolean updateOrderStatusById(Integer id);
    boolean confirmOrder(Integer id);
    boolean deleteByPrimaryKey(Integer id);
    ShopAddress selectByCusIdAndDau(Customer customer);
}
