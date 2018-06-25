package com.service.impl;

import java.util.List;

import com.model.Coupon;

public interface CouponService {
public List<Coupon> selAllCoupon(Coupon coupon);
public Coupon updatecoupon(Coupon coupon);
public boolean upcoupon(Coupon coupon);
public boolean deleteById(Coupon coupon);
}
