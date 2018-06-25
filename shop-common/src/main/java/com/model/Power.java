package com.model;

public class Power {
    private Integer id;

    private String powerName;

    private String powerUrl;

    private String isOn;

    private Integer powerOrder;

    private Integer parentId;

    private String powerIcon;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPowerName() {
        return powerName;
    }

    public void setPowerName(String powerName) {
        this.powerName = powerName == null ? null : powerName.trim();
    }

    public String getPowerUrl() {
        return powerUrl;
    }

    public void setPowerUrl(String powerUrl) {
        this.powerUrl = powerUrl == null ? null : powerUrl.trim();
    }

    public String getIsOn() {
        return isOn;
    }

    public void setIsOn(String isOn) {
        this.isOn = isOn == null ? null : isOn.trim();
    }

    public Integer getPowerOrder() {
        return powerOrder;
    }

    public void setPowerOrder(Integer powerOrder) {
        this.powerOrder = powerOrder;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getPowerIcon() {
        return powerIcon;
    }

    public void setPowerIcon(String powerIcon) {
        this.powerIcon = powerIcon == null ? null : powerIcon.trim();
    }
}