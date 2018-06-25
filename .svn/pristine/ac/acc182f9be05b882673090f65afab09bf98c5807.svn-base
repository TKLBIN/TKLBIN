package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductClassifySubMapper;
import com.model.ProductClassifySub;
import com.service.ProductClassifySubService;

@Service
public class ProductClassifySubServiceImpl implements ProductClassifySubService{
	
	@Autowired
	private ProductClassifySubMapper proClaSubMapper;

	@Override
	public ProductClassifySub selectById(ProductClassifySub productClassifySub) {
		// TODO Auto-generated method stub
		return proClaSubMapper.selectById(productClassifySub);
	}

	@Override
	public List<ProductClassifySub> select(ProductClassifySub productClassifySub) {
		// TODO Auto-generated method stub
		return proClaSubMapper.select(productClassifySub);
	}

	

}
