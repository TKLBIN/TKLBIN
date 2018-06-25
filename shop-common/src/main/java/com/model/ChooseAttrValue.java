package com.model;

public class ChooseAttrValue {
    private Integer id;

    private String attrValue;

    private Integer chooseAttrId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAttrValue() {
        return attrValue;
    }

    public void setAttrValue(String attrValue) {
        this.attrValue = attrValue == null ? null : attrValue.trim();
    }

    public Integer getChooseAttrId() {
        return chooseAttrId;
    }

    public void setChooseAttrId(Integer chooseAttrId) {
        this.chooseAttrId = chooseAttrId;
    }
}