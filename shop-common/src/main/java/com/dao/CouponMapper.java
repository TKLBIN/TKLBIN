package com.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.model.Coupon;
@Service
public interface CouponMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Coupon record);

    int insertSelective(Coupon record);

    Coupon selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Coupon record);

    int updateByPrimaryKey(Coupon record);
    
    /**
     * 查询所有优惠券
     * @wub
     */
    List<Coupon> selectAll(Coupon coupon);


}