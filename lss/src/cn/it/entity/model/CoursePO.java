package cn.it.entity.model;

public class CoursePO {
	private Integer studentId;
	private Integer courseId;
	private String flag;
	private Integer weekId;
	private Integer dayId;
	private String type;
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Integer getStudentId() {
		return studentId;
	}
	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}
	public Integer getCourseId() {
		return courseId;
	}
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public Integer getWeekId() {
		return weekId;
	}
	public void setWeekId(Integer weekId) {
		this.weekId = weekId;
	}
	public Integer getDayId() {
		return dayId;
	}
	public void setDayId(Integer dayId) {
		this.dayId = dayId;
	}
	
}
