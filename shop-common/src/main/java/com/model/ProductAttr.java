package com.model;

import java.util.List;

public class ProductAttr {
    private Integer id;

    private String attrName;
    
    private List<ProductAttrValue> productAttrValuelist;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAttrName() {
		return attrName;
	}

	public void setAttrName(String attrName) {
		this.attrName = attrName;
	}

	public List<ProductAttrValue> getProductAttrValuelist() {
		return productAttrValuelist;
	}

	public void setProductAttrValuelist(List<ProductAttrValue> productAttrValuelist) {
		this.productAttrValuelist = productAttrValuelist;
	}

	@Override
	public String toString() {
		return "ProductAttr [id=" + id + ", attrName=" + attrName + ", productAttrValuelist=" + productAttrValuelist
				+ "]";
	}

   

	
    
}