package cn.it.entity;

public class Building {
    private Integer buildingId;

    private String buildingName;

    private String buildingAddress;

    private String buildingManager;

    private String buildingPhone;

    public Integer getBuildingId() {
        return buildingId;
    }

    public void setBuildingId(Integer buildingId) {
        this.buildingId = buildingId;
    }

    public String getBuildingName() {
        return buildingName;
    }

    public void setBuildingName(String buildingName) {
        this.buildingName = buildingName == null ? null : buildingName.trim();
    }

    public String getBuildingAddress() {
        return buildingAddress;
    }

    public void setBuildingAddress(String buildingAddress) {
        this.buildingAddress = buildingAddress == null ? null : buildingAddress.trim();
    }

    public String getBuildingManager() {
        return buildingManager;
    }

    public void setBuildingManager(String buildingManager) {
        this.buildingManager = buildingManager == null ? null : buildingManager.trim();
    }

    public String getBuildingPhone() {
        return buildingPhone;
    }

    public void setBuildingPhone(String buildingPhone) {
        this.buildingPhone = buildingPhone == null ? null : buildingPhone.trim();
    }
}