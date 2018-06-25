package com.service.impl.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CouponMapper;
import com.model.Coupon;
import com.service.impl.CouponService;
@Service
public class CouponServiceImpl implements CouponService{
@Autowired
private CouponMapper couponMapper;
	@Override
	public List<Coupon> selAllCoupon(Coupon coupon) {
		
		List<Coupon> Coupons=couponMapper.selectAll(coupon);
		
		return Coupons;
	}
	@Override
	public Coupon updatecoupon(Coupon coupon) {
			if(coupon.getId()==-1){
				return coupon;
				
			}else{ 
				
				Coupon cou=couponMapper.selectByPrimaryKey(coupon.getId());
				return cou;
			}
	}
	public boolean upcoupon(Coupon coupon) {
		if (coupon.getId()!=null) {
			//修改
			if(couponMapper.updateByPrimaryKeySelective(coupon)>0){
				return true;
			}
			return false;
		}else{
			//新增
		if(couponMapper.insertSelective(coupon)>0){
			return true;
		}
		return false;
		}
		
		
	}
	@Override
	public boolean deleteById(Coupon coupon) {
		if(couponMapper.deleteByPrimaryKey(coupon.getId())>0){
			return true;
		}
		return false;
	}

}
