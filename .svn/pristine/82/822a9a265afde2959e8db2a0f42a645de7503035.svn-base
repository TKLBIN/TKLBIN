package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ClassifyRelationMapper;
import com.dao.CustomerMapper;
import com.model.ClassifyRelation;
import com.service.ClassifyRelationService;
@Service
public class ClassifyReLationServiceImpl implements ClassifyRelationService{
	
	@Autowired
	private ClassifyRelationMapper cRelMapper;
	
	@Override
	public List<ClassifyRelation> selectAll(ClassifyRelation classifyRelation) {
	
		return cRelMapper.select(classifyRelation);
	}

}
