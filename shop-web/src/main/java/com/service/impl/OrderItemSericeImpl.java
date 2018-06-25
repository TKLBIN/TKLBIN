package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.OrderItemMapper;

import com.service.OrderItemService;

@Service
public class OrderItemSericeImpl implements OrderItemService{
    
	@Autowired
	private OrderItemMapper orderItemMapper;
	@Override
	public boolean deleteByPrimaryKey(Integer id) {
		boolean flag=false ;
		if(orderItemMapper.deleteByPrimaryKey(id)>0){
			return true;
		}
		return false;
	}
	@Override
	public boolean deleteByOrderId(Integer id) {
		boolean flag=false ;
		if((orderItemMapper.deleteByOrderId(id))>0){
			return true;
		}
		return false;
	}

}
