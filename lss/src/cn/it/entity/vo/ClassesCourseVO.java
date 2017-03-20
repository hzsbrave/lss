package cn.it.entity.vo;

import java.util.ArrayList;
import java.util.List;
import cn.it.entity.ClassesCourse;

public class ClassesCourseVO extends ClassesCourse{
	private List<ClassesCourse> rows = new ArrayList<ClassesCourse>();//数据集合
	private int total ;//数据总条数
	private int page;//页数
	public List<ClassesCourse> getRows() {
		return rows;
	}
	public void setRows(List<ClassesCourse> rows) {
		this.rows = rows;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	@Override
	public String toString() {
		return "ClassesCourseVO [rows=" + rows + ", total=" + total + ", page=" + page + "]";
	}
}
