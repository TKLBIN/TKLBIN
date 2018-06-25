package com.model;

public class ShoppingCarAttr {
    private Integer id;

    private Integer productId;

    private String chooseAttr;

    private String chooseAttrValue;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getChooseAttr() {
        return chooseAttr;
    }

    public void setChooseAttr(String chooseAttr) {
        this.chooseAttr = chooseAttr == null ? null : chooseAttr.trim();
    }

    public String getChooseAttrValue() {
        return chooseAttrValue;
    }

    public void setChooseAttrValue(String chooseAttrValue) {
        this.chooseAttrValue = chooseAttrValue == null ? null : chooseAttrValue.trim();
    }
}