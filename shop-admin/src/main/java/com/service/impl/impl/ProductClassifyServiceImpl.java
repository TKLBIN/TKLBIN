package com.service.impl.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductClassifyMapper;
import com.model.ProductClassify;
import com.service.impl.ProductClassifyService;

@Service
public class ProductClassifyServiceImpl implements ProductClassifyService{
	@Autowired
	private ProductClassifyMapper productClassifyMapper;
	
	public List<ProductClassify> select(ProductClassify productClassify) {
		
		List<ProductClassify> list =  productClassifyMapper.select(productClassify);
		return list;
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		int i = productClassifyMapper.deleteByPrimaryKey(id);
		return i;
	}

	@Override
	public int insert(ProductClassify record) {
		
		int i = productClassifyMapper.insert(record);
		return i;
	}

	@Override
	public int insertSelective(ProductClassify record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ProductClassify selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(ProductClassify record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(ProductClassify record) {
		int i = productClassifyMapper.updateByPrimaryKey(record);
		return i;
	}

	@Override
	public int selectDelete(ProductClassify productClassify) {
		int i  = productClassifyMapper.selectDelete(productClassify);
		System.out.println("=========>"+i);
		return i;
	}

	@Override
	public List<ProductClassify> selectAll() {
		List<ProductClassify> list = productClassifyMapper.selectAll();
		return list;
	}

	@Override
	public ProductClassify selectSub(Integer id) {
		ProductClassify productClassify = productClassifyMapper.selectSub(id);
		return productClassify;
	}

	
	
}
