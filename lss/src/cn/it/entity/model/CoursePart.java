package cn.it.entity.model;

import java.util.List;

public class CoursePart {
	private String week;
	private String building;
	private String room;
	private List<String> section;
	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
	public String getBuilding() {
		return building;
	}
	public void setBuilding(String building) {
		this.building = building;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public List<String> getSection() {
		return section;
	}
	public void setSection(List<String> section) {
		this.section = section;
	}
	@Override
	public String toString() {
		return "CoursePart [week=" + week + ", building=" + building + ", room=" + room + ", section=" + section + "]";
	}
}
