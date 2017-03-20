package cn.it.entity.vo;

import java.util.ArrayList;
import java.util.List;

import cn.it.entity.Student;

public class StudentVO extends Student{
	private List<Student> rows = new ArrayList<Student>();//数据集合
	private int total ;//数据总条数
	private int page;//页数
	public List<Student> getRows() {
		return rows;
	}
	public void setRows(List<Student> rows) {
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
}
