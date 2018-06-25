package com.dao;

import java.util.List;

import com.model.Customer;
import com.model.CustomerCoupon;

public interface CustomerCouponMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CustomerCoupon record);

    int insertSelective(CustomerCoupon record);

    CustomerCoupon selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CustomerCoupon record);

    int updateByPrimaryKey(CustomerCoupon record);
    
    /**
     * ��ѯ��ȡȫ���ͻ��Żݾ�
     */
    List<CustomerCoupon> selectAllCoupon(Customer customer);


}