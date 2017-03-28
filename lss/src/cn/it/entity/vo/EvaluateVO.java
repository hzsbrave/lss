package cn.it.entity.vo;

import cn.it.entity.Evaluate;

public class EvaluateVO extends Evaluate{
	private String courseName;
	private String teacherName;
	private Integer courseId;
    private Integer evaluateScore;
    private String evaluateText;
    private Integer studentId;
	
	public Integer getCourseId() {
		return courseId;
	}
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	public Integer getEvaluateScore() {
		return evaluateScore;
	}
	public void setEvaluateScore(Integer evaluateScore) {
		this.evaluateScore = evaluateScore;
	}
	public String getEvaluateText() {
		return evaluateText;
	}
	public void setEvaluateText(String evaluateText) {
		this.evaluateText = evaluateText;
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
	
	public Integer getStudentId() {
		return studentId;
	}
	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}
	@Override
	public String toString() {
		return "EvaluateVO [courseName=" + courseName + ", teacherName=" + teacherName + ", courseId=" + courseId
				+ ", evaluateScore=" + evaluateScore + ", evaluateText=" + evaluateText + ", studentId=" + studentId
				+ "]";
	}
}
