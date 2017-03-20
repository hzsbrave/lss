package cn.it.entity.vo;

public class MyCourseVO {
	private int studentId;
	private String teacherName;
	private int courseId;
	private String courseName;
	private String courseIntroduce;
	private String credit;
	private int weekId;
	private String weekName;
	private int dayId;
	private String dayName;
	private int sectionId;
	private String sectionName;
	private int likeNum;
	private int selectNum;
	private String type;
	private String buildingName;
	private String roomName;
	private int peopleNum;
	
	public int getSectionId() {
		return sectionId;
	}
	public void setSectionId(int sectionId) {
		this.sectionId = sectionId;
	}
	public int getWeekId() {
		return weekId;
	}
	public void setWeekId(int weekId) {
		this.weekId = weekId;
	}
	public int getDayId() {
		return dayId;
	}
	public void setDayId(int dayId) {
		this.dayId = dayId;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getCourseIntroduce() {
		return courseIntroduce;
	}
	public void setCourseIntroduce(String courseIntroduce) {
		this.courseIntroduce = courseIntroduce;
	}
	public String getCredit() {
		return credit;
	}
	public void setCredit(String credit) {
		this.credit = credit;
	}
	public String getWeekName() {
		return weekName;
	}
	public void setWeekName(String weekName) {
		this.weekName = weekName;
	}
	public String getDayName() {
		return dayName;
	}
	public void setDayName(String dayName) {
		this.dayName = dayName;
	}
	public String getSectionName() {
		return sectionName;
	}
	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}
	public int getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}
	public int getSelectNum() {
		return selectNum;
	}
	public void setSelectNum(int selectNum) {
		this.selectNum = selectNum;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	@Override
	public String toString() {
		return "MyCourseVO [studentId=" + studentId + ", teacherName=" + teacherName + ", courseId=" + courseId
				+ ", courseName=" + courseName + ", courseIntroduce=" + courseIntroduce + ", credit=" + credit
				+ ", weekId=" + weekId + ", weekName=" + weekName + ", dayId=" + dayId + ", dayName=" + dayName
				+ ", sectionId=" + sectionId + ", sectionName=" + sectionName + ", likeNum=" + likeNum + ", selectNum="
				+ selectNum + ", type=" + type + ", buildingName=" + buildingName + ", roomName=" + roomName
				+ ", peopleNum=" + peopleNum + "]";
	}
	
}
