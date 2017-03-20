package cn.it.entity.vo;

public class SectionVO {
	private String sectionName;
	private String buildingName;
	private String roomName;
	private int peopleNum;
	public String getSectionName() {
		return sectionName;
	}
	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}
	public String getBuildingName() {
		return buildingName;
	}
	public void setBuildingName(String buildingName) {
		this.buildingName = buildingName;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public int getPeopleNum() {
		return peopleNum;
	}
	public void setPeopleNum(int peopleNum) {
		this.peopleNum = peopleNum;
	}
	@Override
	public String toString() {
		return "SectionVO [sectionName=" + sectionName + ", buildingName=" + buildingName + ", roomName=" + roomName
				+ ", peopleNum=" + peopleNum + "]";
	}
}
