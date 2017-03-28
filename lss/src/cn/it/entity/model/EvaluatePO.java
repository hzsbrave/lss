package cn.it.entity.model;

import java.util.ArrayList;
import java.util.List;

import cn.it.entity.vo.EvaluateVO;

public class EvaluatePO {
	List<EvaluateVO> list = new ArrayList<EvaluateVO>();
	private Integer teacherId;
	private Integer courseId;
	
	public Integer getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(Integer teacherId) {
		this.teacherId = teacherId;
	}

	public Integer getCourseId() {
		return courseId;
	}

	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}

	public List<EvaluateVO> getList() {
		return list;
	}

	public void setList(List<EvaluateVO> list) {
		this.list = list;
	}
	
}
