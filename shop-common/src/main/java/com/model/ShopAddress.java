package com.model;

public class ShopAddress {
    private Integer id;

    private String peopleName;

    private String telephone;

    private String place;

    private String addressDetail;

    private Integer isDefault;

    private Integer customerId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPeopleName() {
        return peopleName;
    }

    public void setPeopleName(String peopleName) {
        this.peopleName = peopleName == null ? null : peopleName.trim();
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place == null ? null : place.trim();
    }

    public String getAddressDetail() {
        return addressDetail;
    }

    public void setAddressDetail(String addressDetail) {
        this.addressDetail = addressDetail == null ? null : addressDetail.trim();
    }

    public Integer getIsDefault() {
        return isDefault;
    }

    public void setIsDefault(Integer isDefault) {
        this.isDefault = isDefault;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

	@Override
	public String toString() {
		return "ShopAddress [id=" + id + ", peopleName=" + peopleName + ", telephone=" + telephone + ", place=" + place
				+ ", addressDetail=" + addressDetail + ", isDefault=" + isDefault + ", customerId=" + customerId + "]";
	}
    
}