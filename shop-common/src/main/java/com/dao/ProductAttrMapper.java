package com.dao;

import java.util.List;

import com.model.ProductAttr;

public interface ProductAttrMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ProductAttr record);

    int insertSelective(ProductAttr record);

    ProductAttr selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProductAttr record);

    int updateByPrimaryKey(ProductAttr record);

	List<ProductAttr> selectAll(ProductAttr productAttr);
	int    selMaxId();
}