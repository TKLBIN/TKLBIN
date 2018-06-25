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
	 * ��ȡ��ǰ��½�ߵ�����������Ϣ
	 */
	List<CommentContent> getComments(Customer customer);

	/**
	 * ��ȡ����ĳ����Ʒ����������getCountOfProduct
	 */
	Integer getCountOfProduct(Integer id);
	/**
	 * ��ȡ����ĳ����Ʒ������
	 */
	List<CommentContent> getCommentsOfOneProject(Integer id);
}