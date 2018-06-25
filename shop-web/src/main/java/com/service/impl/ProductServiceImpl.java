package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CommentContentMapper;
import com.dao.ProductMapper;
import com.dao.ProductSkuMapper;
import com.model.CommentContent;
import com.model.Product;
import com.model.ProductSku;
import com.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductMapper proMapper;
	@Autowired
	private CommentContentMapper cmmentMapper;
	@Autowired
	private ProductSkuMapper pskMapper;
	@Override
	public Product selectByPrimaryKey(Integer id) {
		
		return proMapper.selectByPrimaryKey(id);
	}


	@Override
	public Product getProDetail(Integer id) {
		return proMapper.getDetail(id);
	}

	@Override
	public Integer getCount(Integer id) {
		return cmmentMapper.getCountOfProduct(id);
	}


	@Override
	public List<Product> selectByProName(Product product) {
		// TODO Auto-generated method stub
		return proMapper.selectByProName(product);
	}
	

	@Override
	public List<CommentContent> getCms(Integer id) {
		return cmmentMapper.getCommentsOfOneProject(id);
	}


	@Override
	public ProductSku getpsk(ProductSku productSku) {
		return pskMapper.getpsk(productSku);
	}

}
