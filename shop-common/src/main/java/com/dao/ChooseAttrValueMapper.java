package com.dao;

import com.model.ChooseAttrValue;

public interface ChooseAttrValueMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ChooseAttrValue record);

    int insertSelective(ChooseAttrValue record);

    ChooseAttrValue selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ChooseAttrValue record);

    int updateByPrimaryKey(ChooseAttrValue record);
}