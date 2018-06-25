package com.model;

public class ProductAd {
    private Integer id;

    private String adPath;

    private String adRealPath;

    private Integer productId;

    private String isShow;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAdPath() {
        return adPath;
    }

    public void setAdPath(String adPath) {
        this.adPath = adPath == null ? null : adPath.trim();
    }

    public String getAdRealPath() {
        return adRealPath;
    }

    public void setAdRealPath(String adRealPath) {
        this.adRealPath = adRealPath == null ? null : adRealPath.trim();
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getIsShow() {
        return isShow;
    }

    public void setIsShow(String isShow) {
        this.isShow = isShow == null ? null : isShow.trim();
    }
}