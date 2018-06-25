package com.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductClassifyMapper;
import com.model.ProductClassify;
import com.service.ProductClassifyService;
@Service
public class ProductClassifyServiceImpl implements ProductClassifyService{
    
	@Autowired
	private ProductClassifyMapper proClaMapper;
	@Override
	public ProductClassify selectById(ProductClassify productClassify) {
	
		return proClaMapper.selectById(productClassify);
		
	}
	@Override
	public List<ProductClassify> selectAll1(ProductClassify productClassify) {
		
		return proClaMapper.selectAll1(productClassify);
	}
	@Override
	public List<ProductClassify> selectClassify(ProductClassify productClassify) {
		
		return proClaMapper.selectClassify(productClassify);
	}
	

}
