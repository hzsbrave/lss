package cn.it.entity.vo;

import java.util.ArrayList;
import java.util.List;

import cn.it.entity.Teacher;

public class TeacherVO {
	private List<Teacher> rows = new ArrayList<Teacher>();//数据集合
	private int total ;//数据总条数
	private int page;//页数
	public List<Teacher> getRows() {
		return rows;
	}
	public void setRows(List<Teacher> rows) {
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
		return "TeacherPO [rows=" + rows + ", total=" + total + ", page=" + page + "]";
	}
}
