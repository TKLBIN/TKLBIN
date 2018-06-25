package com.model;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class OrderItem {
    private Integer id;

    private Integer orderId;

    private Integer productId;

    private BigDecimal productPrice;

    private Integer buyCount;

    private String isAssess;
    
    private Product product;
    
    private OrderItmeAttr orderItmeAttr;
    
    
    
    public Product getProduct() {
		return product;
	}


    private CommentContent commentContent;
    private List<MultipartFile> pictures;

	
    public List<MultipartFile> getPictures() {
		return pictures;
	}

	public void setPictures(List<MultipartFile> pictures) {
		this.pictures = pictures;
	}

	public CommentContent getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(CommentContent commentContent) {
		this.commentContent = commentContent;
	}


	public void setProduct(Product product) {
		this.product = product;
	}

	public OrderItmeAttr getOrderItmeAttr() {
		return orderItmeAttr;
	}

	public void setOrderItmeAttr(OrderItmeAttr orderItmeAttr) {
		this.orderItmeAttr = orderItmeAttr;
	}

	public Integer getId() {

        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public BigDecimal getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(BigDecimal productPrice) {
        this.productPrice = productPrice;
    }

    public Integer getBuyCount() {
        return buyCount;
    }

    public void setBuyCount(Integer buyCount) {
        this.buyCount = buyCount;
    }

    public String getIsAssess() {
        return isAssess;
    }

    public void setIsAssess(String isAssess) {
        this.isAssess = isAssess == null ? null : isAssess.trim();
    }


	

	@Override
	public String toString() {
		return "OrderItem [id=" + id + ", orderId=" + orderId + ", productId=" + productId + ", productPrice="
				+ productPrice + ", buyCount=" + buyCount + ", isAssess=" + isAssess + ", product=" + product
				+ ", orderItmeAttr=" + orderItmeAttr + "]";
	}

	
    
    
}