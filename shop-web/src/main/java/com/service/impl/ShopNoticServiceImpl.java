package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ShopNoticMapper;
import com.model.ShopNotic;
import com.service.ShopNoticService;
@Service 
public class ShopNoticServiceImpl implements ShopNoticService{
   
	
	@Autowired
	private ShopNoticMapper shopNoticMapper;
	@Override
	public List<ShopNotic> selectAll() {
		
		return shopNoticMapper.selectAll();
	}

}
