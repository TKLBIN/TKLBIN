package com.dao;

import com.model.ProductAd;

public interface ProductAdMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ProductAd record);

    int insertSelective(ProductAd record);

    ProductAd selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProductAd record);

    int updateByPrimaryKey(ProductAd record);
}