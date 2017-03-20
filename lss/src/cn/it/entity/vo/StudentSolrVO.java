package cn.it.entity.vo;

import java.util.List;

import cn.it.entity.StudentSolr;

public class StudentSolrVO {

	private List<StudentSolr> studentList;
	private Long recordCount;
	private int pageCount;
	private int curPage;
	public List<StudentSolr> getStudentList() {
		return studentList;
	}
	public void setStudentList(List<StudentSolr> studentList) {
		this.studentList = studentList;
	}
	public Long getRecordCount() {
		return recordCount;
	}
	public void setRecordCount(Long recordCount) {
		this.recordCount = recordCount;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	@Override
	public String toString() {
		return "StudentSolrVO [studentList=" + studentList + ", recordCount=" + recordCount + ", pageCount=" + pageCount
				+ ", curPage=" + curPage + "]";
	}
}
