package com.service.impl.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductClassifySubMapper;
import com.model.ProductClassifySub;
import com.service.impl.ProductSubClassifyService;

@Service
public class ProductSubClassifyServiceImpl implements ProductSubClassifyService{
	@Autowired
	private ProductClassifySubMapper ProductClassifySubMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		int i = ProductClassifySubMapper.deleteByPrimaryKey(id);
		return i;
	}

	@Override
	public int insert(ProductClassifySub record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(ProductClassifySub record) {
		int i = ProductClassifySubMapper.insertSelective(record);
		return i;
	}

	@Override
	public ProductClassifySub selectByPrimaryKey(Integer id) {
		ProductClassifySub productClassifySub =ProductClassifySubMapper.selectByPrimaryKey(id);
		return productClassifySub;
	}

	@Override
	public int updateByPrimaryKeySelective(ProductClassifySub record) {
		int i = ProductClassifySubMapper.updateByPrimaryKeySelective(record);
		return i;
	}

	@Override
	public int updateByPrimaryKey(ProductClassifySub record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ProductClassifySub> select(ProductClassifySub productClassifySub) {
		List<ProductClassifySub> list = ProductClassifySubMapper.select(productClassifySub);
		return list;
	}

}
