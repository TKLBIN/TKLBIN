package com.dao;

import com.model.Customer;

public interface CustomerMapper {
	int deleteByPrimaryKey(Integer id);

	int insert(Customer record);

	int insertSelective(Customer record);

	Customer selectByPrimaryKey(Integer id);

	Customer selectByEmail(Customer customer);

	Customer selectByPhone(Customer customer);

	int updateByPrimaryKeySelective(Customer record);

	int updateByPrimaryKey(Customer record);
	boolean updateByCus(Customer customer);

	// 登陆
	Customer selectByCustomer(Customer customer);
	//修改密码
	boolean modifyPwd(Customer customer);
	//修改支付密码
	boolean modifypay(Customer customer);
	//修改邮箱
	boolean modifyEma(Customer customer);
	//绑定身份证
	boolean modifyidcard(Customer customer);
}