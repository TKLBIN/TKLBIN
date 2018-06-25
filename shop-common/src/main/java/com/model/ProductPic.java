package com.model;

public class ProductPic {
    private Integer id;

    private String picPath;

    private String picRealPath;

    private Integer productId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPicPath() {
        return picPath;
    }

    public void setPicPath(String picPath) {
        this.picPath = picPath == null ? null : picPath.trim();
    }

    public String getPicRealPath() {
        return picRealPath;
    }

    public void setPicRealPath(String picRealPath) {
        this.picRealPath = picRealPath == null ? null : picRealPath.trim();
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }
}