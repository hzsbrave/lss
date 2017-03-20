package cn.it.entity.vo;

import java.util.List;

public class MyCourseDetailVO  implements Comparable{
	private int studentId;
	private String teacherName;
	private int courseId;
	private String courseName;
	private String courseIntroduce;
	private String credit;
	private int likeNum;
	private int selectNum;
	private String type;
	private List<WeekVO> weekList;
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
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
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
	public List<WeekVO> getWeekList() {
		return weekList;
	}
	public void setWeekList(List<WeekVO> weekList) {
		this.weekList = weekList;
	}
	@Override
	public String toString() {
		return "MyCourseDetailVO [studentId=" + studentId + ", teacherName=" + teacherName + ", courseId=" + courseId
				+ ", courseName=" + courseName + ", courseIntroduce=" + courseIntroduce + ", credit=" + credit
				+ ", likeNum=" + likeNum + ", selectNum=" + selectNum + ", type=" + type + ", weekList=" + weekList
				+ "]";
	}
	@Override
	public int compareTo(Object o) {
		// TODO Auto-generated method stub
		MyCourseDetailVO b = (MyCourseDetailVO) o;  
	    return this.getWeekList().get(0).getWeekId() - b.getWeekList().get(0).getWeekId();
	}
	
}
