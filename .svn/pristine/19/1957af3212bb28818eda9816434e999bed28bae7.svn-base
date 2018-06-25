package com.service.impl.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductAttrMapper;
import com.dao.ProductAttrValueMapper;
import com.model.ProductAttr;
import com.model.ProductAttrValue;
import com.service.impl.AttrService;
@Service
public class AttrServiceImpl implements AttrService {
	
	@Autowired
	private ProductAttrMapper productAttrMapper;
	@Autowired
	private ProductAttrValueMapper productAttrValueMapper;
	/**
	 * 查询属性名称
	 */
	@Override
	public List<ProductAttr> selAllAttr(ProductAttr productAttr) {
		List<ProductAttr> productAttrlist=productAttrMapper.selectAll(productAttr);
		return productAttrlist;
	}
	/**
	 * 查询属性值
	 */
	@Override
	public List<ProductAttrValue> selAllAttrValue(int id) {
		List<ProductAttrValue> values=	productAttrValueMapper.selectAll(id);
		return values;
	}
	
	@Override
	public ProductAttr updateProductAttr(ProductAttr productAttr) {
		ProductAttr pa=productAttrMapper.selectByPrimaryKey(productAttr.getId());
		List<ProductAttrValue> pavs=productAttrValueMapper.selectByAttrId(pa.getId());
		pa.setProductAttrValuelist(pavs);
		return pa;
	}

	@Override
	public boolean upProductAttr(ProductAttr productAttr) {
		List<ProductAttrValue>values;
		if(productAttr.getId()==null){
			productAttrMapper.insertSelective(productAttr);
			int id=productAttrMapper.selMaxId();
			productAttr.setId(id);
		}else{
			productAttrMapper.updateByPrimaryKeySelective(productAttr);
			
		}
		
		if((values=productAttr.getProductAttrValuelist())!=null){
			
			for (ProductAttrValue productAttrValue : values) {
				productAttrValue.setAttrId(productAttr.getId());
				if(productAttrValue.getId()!=null){
					productAttrValueMapper.updateByPrimaryKeySelective(productAttrValue);
				}
				productAttrValueMapper.insertSelective(productAttrValue);
			}
		}
		
		return false;
	}

	@Override
	public boolean deleteById(ProductAttrValue productAttrValue) {
		if(productAttrValueMapper.deleteByPrimaryKey(productAttrValue.getId())==1){
			return true;
		}
		return false;
	}
	
	
	public boolean upProductAttrValue(ProductAttrValue productAttrValue) {
		if(productAttrValueMapper.updateByPrimaryKeySelective(productAttrValue)==1){
			return true;	
		}
		
	return false;	
	}
	/**
	 * 添加属性值
	 */
	@Override
	public boolean insertAttrValue(ProductAttrValue productAttrValue) {
		if(productAttrValueMapper.insertSelective(productAttrValue)==1){
			return true;

		}
		return false;
	}
	
	/**
	 * 删除属性
	 */
	@Override
	public boolean deleteAttrById(ProductAttr productAttr) {
		if(productAttrMapper.deleteByPrimaryKey(productAttr.getId())==1){
			return true;

		}
		return false;
	}


	
	

}
