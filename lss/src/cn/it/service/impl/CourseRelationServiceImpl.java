package cn.it.service.impl;

import java.util.List;

import cn.it.entity.vo.CourseDetailVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.it.dao.CourseRelationMapper;
import cn.it.entity.Course;
import cn.it.entity.CourseRelation;
import cn.it.service.CourseRelationService;
@Service
public class CourseRelationServiceImpl implements CourseRelationService{
	@Autowired
	private CourseRelationMapper courseRelationMapper;
	@Override
	public long addCourseRelationList(List<CourseRelation> list) {
		// TODO Auto-generated method stub
		return courseRelationMapper.addCourseRelationList(list);
	}
	@Override
	public List<CourseDetailVO> selectCourseByTeacherId(Integer teacher_id) {
		// TODO Auto-generated method stub
		return courseRelationMapper.selectCourseByTeacherId(teacher_id);
	}

}
