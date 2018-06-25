package com.model;

import java.math.BigDecimal;

public class Express {
    private Integer id;

    private String expressName;

    private BigDecimal expressPrice;

    private String expressImg;

    private String expressImgReal;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getExpressImg() {
        return expressImg;
    }

    public void setExpressImg(String expressImg) {
        this.expressImg = expressImg == null ? null : expressImg.trim();
    }

    public String getExpressImgReal() {
        return expressImgReal;
    }

    public void setExpressImgReal(String expressImgReal) {
        this.expressImgReal = expressImgReal == null ? null : expressImgReal.trim();
    }
}