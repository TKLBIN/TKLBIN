package com.dao;


import java.util.List;

import com.model.ClassifyRelation;
import com.model.ProductClassify;

public interface ClassifyRelationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ClassifyRelation record);

    int insertSelective(ClassifyRelation record);

    ClassifyRelation selectByPrimaryKey(Integer id);
     
    List<ClassifyRelation> select(ClassifyRelation classifyRelation);
    int updateByPrimaryKeySelective(ClassifyRelation record);

    int updateByPrimaryKey(ClassifyRelation record);
    
    List<ProductClassify> selectClassify();
}