package cn.it.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.it.entity.ClassesCourse;
import cn.it.service.ClassesCourseService;

@Service("classesCourseService")
public class ClassesCourseServiceImpl extends BaseServiceImpl<ClassesCourse> implements ClassesCourseService {

	@Override
	public List<ClassesCourse> selectListPage(ClassesCourse classescourse) {
		// TODO Auto-generated method stub
		return classesCourseMapper.selectListPage(classescourse);
	}

	@Override
	public ClassesCourse selectClassesCourse(ClassesCourse classescourse) {
		// TODO Auto-generated method stub
		return classesCourseMapper.selectClassesCourse(classescourse);
	}

	@Override
	public List<ClassesCourse> selectClassesCourseByCourseId(int course_id) {
		// TODO Auto-generated method stub
		return classesCourseMapper.selectClassesCourseByCourseId(course_id);
	}
	
	
	
	
}
