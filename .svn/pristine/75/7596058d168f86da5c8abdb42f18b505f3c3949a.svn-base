package com.dao;

import java.util.List;

import com.model.CommentContent;
import com.model.Customer;

public interface CommentContentMapper {
	int deleteByPrimaryKey(Integer id);

	int insert(CommentContent record);

	int insertSelective(CommentContent record);

	CommentContent selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(CommentContent record);

	int updateByPrimaryKeyWithBLOBs(CommentContent record);

	int updateByPrimaryKey(CommentContent record);

	/*
	 * 获取当前登陆者的所有评价信息
	 */
	List<CommentContent> getComments(Customer customer);

	/**
	 * 获取具体某条商品的评价条数getCountOfProduct
	 */
	Integer getCountOfProduct(Integer id);
	/**
	 * 获取关于某件商品的评价
	 */
	List<CommentContent> getCommentsOfOneProject(Integer id);
}