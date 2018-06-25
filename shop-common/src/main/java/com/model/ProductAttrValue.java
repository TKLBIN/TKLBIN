package com.model;

import org.springframework.stereotype.Service;

@Service
public class ProductAttrValue {
    private Integer id;

    private String attrValue;

	private Integer attrId;
    
    private ProductAttr productAttr;

    public ProductAttr getProductAttr() {
		return productAttr;
	}

	public void setProductAttr(ProductAttr productAttr) {
		this.productAttr = productAttr;
	}

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

    public Integer getAttrId() {
        return attrId;
    }

    public void setAttrId(Integer attrId) {
        this.attrId = attrId;
    }
    
}