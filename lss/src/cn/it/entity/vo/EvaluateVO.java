package cn.it.entity.vo;

import cn.it.entity.Evaluate;

public class EvaluateVO extends Evaluate{
	Integer courseId;
	String courseName;
	String teacherName;
	Integer classCourseId;
	
	public Integer getCourseId() {
		return courseId;
	}
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public Integer getClassCourseId() {
		return classCourseId;
	}
	public void setClassCourseId(Integer classCourseId) {
		this.classCourseId = classCourseId;
	}
	@Override
	public String toString() {
		return "EvaluateVO [courseId=" + courseId + ", courseName=" + courseName + ", teacherName=" + teacherName
				+ ", classCourseId=" + classCourseId + "]";
	}
}
