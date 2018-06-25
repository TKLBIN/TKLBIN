package com.dao;

import com.model.ShoppingCarAttr;

public interface ShoppingCarAttrMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShoppingCarAttr record);

    int insertSelective(ShoppingCarAttr record);

    ShoppingCarAttr selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShoppingCarAttr record);

    int updateByPrimaryKey(ShoppingCarAttr record);
}