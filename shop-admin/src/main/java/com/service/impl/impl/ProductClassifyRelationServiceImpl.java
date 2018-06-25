package com.service.impl.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ClassifyRelationMapper;
import com.model.ClassifyRelation;
import com.service.impl.ProductClassifyRelationService;

@Service
public class ProductClassifyRelationServiceImpl implements ProductClassifyRelationService{
	
	@Autowired
	private ClassifyRelationMapper classifyRelationMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		int i = classifyRelationMapper.deleteByPrimaryKey(id);
		return i;
	}

	@Override
	public int insert(ClassifyRelation record) {
		int i = classifyRelationMapper.insert(record);
		return i;
	}

	@Override
	public int insertSelective(ClassifyRelation record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ClassifyRelation selectByPrimaryKey(Integer id) {
		ClassifyRelation classifyRelation=classifyRelationMapper.selectByPrimaryKey(id);
		return classifyRelation;
	}

	@Override
	public int updateByPrimaryKeySelective(ClassifyRelation record) {
		int i = classifyRelationMapper.updateByPrimaryKeySelective(record);
		return i;
	}

	@Override
	public int updateByPrimaryKey(ClassifyRelation record) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public List<ClassifyRelation> select(ClassifyRelation classifyRelation) {
		List<ClassifyRelation> list = classifyRelationMapper.select(classifyRelation);
		return list;
	}

}
