package com.model;

import java.util.List;

public class ProductClassify {
    private Integer id;

    private String classifyName;

    private Integer cOrder;

    private String isOn;
    
    private List<ProductClassifySub> listProClassifySub;
    
    
    

    public List<ProductClassifySub> getListProClassifySub() {
		return listProClassifySub;
	}

	public void setListProClassifySub(List<ProductClassifySub> listProClassifySub) {
		this.listProClassifySub = listProClassifySub;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getClassifyName() {
        return classifyName;
    }

    public void setClassifyName(String classifyName) {
        this.classifyName = classifyName == null ? null : classifyName.trim();
    }

    public Integer getcOrder() {
        return cOrder;
    }

    public void setcOrder(Integer cOrder) {
        this.cOrder = cOrder;
    }

    public String getIsOn() {
        return isOn;
    }

    public void setIsOn(String isOn) {
        this.isOn = isOn == null ? null : isOn.trim();
    }

	@Override
	public String toString() {
		return "ProductClassify [id=" + id + ", classifyName=" + classifyName + ", cOrder=" + cOrder + ", isOn=" + isOn
				+ ", listProClassifySub=" + listProClassifySub + "]";
	}

	
}