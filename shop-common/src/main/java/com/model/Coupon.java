package com.model;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Coupon {
    private Integer id;

    private String couponType;

    private BigDecimal couponPrice;
    
    private BigDecimal couponMaxPrice;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date useStartTime;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date useEndTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCouponType() {
        return couponType;
    }

    public void setCouponType(String couponType) {
        this.couponType = couponType == null ? null : couponType.trim();
    }

    public BigDecimal getCouponPrice() {
        return couponPrice;
    }

    public void setCouponPrice(BigDecimal couponPrice) {
        this.couponPrice = couponPrice;
    }

    public BigDecimal getCouponMaxPrice() {
        return couponMaxPrice;
    }

    public void setCouponMaxPrice(BigDecimal couponMaxPrice) {
        this.couponMaxPrice = couponMaxPrice;
    }

    public Date getUseStartTime() {
        return useStartTime;
    }

    public void setUseStartTime(Date useStartTime) {
        this.useStartTime = useStartTime;
    }

    public Date getUseEndTime() {
        return useEndTime;
    }

    public void setUseEndTime(Date useEndTime) {
        this.useEndTime = useEndTime;
    }

	@Override
	public String toString() {
		return "Coupon [id=" + id + ", couponType=" + couponType + ", couponPrice=" + couponPrice + ", couponMaxPrice="
				+ couponMaxPrice + ", useStartTime=" + useStartTime + ", useEndTime=" + useEndTime + ", getId()="
				+ getId() + ", getCouponType()=" + getCouponType() + ", getCouponPrice()=" + getCouponPrice()
				+ ", getCouponMaxPrice()=" + getCouponMaxPrice() + ", getUseStartTime()=" + getUseStartTime()
				+ ", getUseEndTime()=" + getUseEndTime() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
}