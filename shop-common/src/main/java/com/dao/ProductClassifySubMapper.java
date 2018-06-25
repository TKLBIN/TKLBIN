package com.dao;

import java.util.List;

import com.model.ProductClassifySub;

public interface ProductClassifySubMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ProductClassifySub record);

    int insertSelective(ProductClassifySub record);

    ProductClassifySub selectByPrimaryKey(Integer id);
    
    ProductClassifySub selectById(ProductClassifySub productClassifySub);

    int updateByPrimaryKeySelective(ProductClassifySub record);

    int updateByPrimaryKey(ProductClassifySub record);
    
    List<ProductClassifySub> select(ProductClassifySub productClassifySub);
   
}