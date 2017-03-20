package cn.it.service;

import java.util.List;

import cn.it.entity.CourseDetail;

public interface CourseDetailService {
	 public long addCourseDetailList(List<CourseDetail> list);
	 public int deleteList(String[] array);
	 public List<CourseDetail> selectByCourseId(int courseId);
}
