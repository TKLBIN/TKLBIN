package com.dao;

import com.model.PowerRoleRelation;

public interface PowerRoleRelationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PowerRoleRelation record);

    int insertSelective(PowerRoleRelation record);

    PowerRoleRelation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PowerRoleRelation record);

    int updateByPrimaryKey(PowerRoleRelation record);
}