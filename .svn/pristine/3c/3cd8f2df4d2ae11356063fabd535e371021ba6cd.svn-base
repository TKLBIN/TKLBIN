package com.model;


import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class Orders {
    private Integer id;

    private String orderNo;

    private String orderStatus;

    private BigDecimal orderPrcie;

    private BigDecimal payPrice;
    
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createTime;
    
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date payTime;

    private Integer customerId;

    private String expressName;

    private BigDecimal expressPrice;
    
    private List<OrderItem> listOrderItem;
   
    private List<OrderItem> orderItems;

    public List<OrderItem> getOrderItems() {
		return orderItems;
	}

	public void setOrderItems(List<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}

		
	public List<OrderItem> getListOrderItem() {
		return listOrderItem;
	}

	public void setListOrderItem(List<OrderItem> listOrderItem) {
		this.listOrderItem = listOrderItem;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo == null ? null : orderNo.trim();
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus == null ? null : orderStatus.trim();
    }

    public BigDecimal getOrderPrcie() {
        return orderPrcie;
    }

    public void setOrderPrcie(BigDecimal orderPrcie) {
        this.orderPrcie = orderPrcie;
    }

    public BigDecimal getPayPrice() {
        return payPrice;
    }

    public void setPayPrice(BigDecimal payPrice) {
        this.payPrice = payPrice;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getPayTime() {
        return payTime;
    }

    public void setPayTime(Date payTime) {
        this.payTime = payTime;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public String getExpressName() {
        return expressName;
    }

    public void setExpressName(String expressName) {
        this.expressName = expressName == null ? null : expressName.trim();
    }

    public BigDecimal getExpressPrice() {
        return expressPrice;
    }

    public void setExpressPrice(BigDecimal expressPrice) {
        this.expressPrice = expressPrice;
    }


	
    
    
}