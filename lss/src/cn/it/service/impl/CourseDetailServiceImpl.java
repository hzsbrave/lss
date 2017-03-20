package cn.it.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.it.dao.CourseDetailMapper;
import cn.it.entity.CourseDetail;
import cn.it.service.CourseDetailService;
@Service
public class CourseDetailServiceImpl implements CourseDetailService{
	@Autowired
	private CourseDetailMapper courseDetailMapper;
	@Override
	public long addCourseDetailList(List<CourseDetail> list) {
		// TODO Auto-generated method stub
		return courseDetailMapper.addCourseDetailList(list);
	}
	@Override
	public int deleteList(String[] array) {
		// TODO Auto-generated method stub
		return courseDetailMapper.deleteList(array);
	}
	@Override
	public List<CourseDetail> selectByCourseId(int courseId) {
		// TODO Auto-generated method stub
		return courseDetailMapper.selectByCourseId(courseId);
	}

}
