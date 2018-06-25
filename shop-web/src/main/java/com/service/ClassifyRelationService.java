package com.service;

import java.util.List;

import com.model.ClassifyRelation;

public interface ClassifyRelationService {
	
	
	//查找分类
	List<ClassifyRelation> selectAll(ClassifyRelation classifyRelation);

}
