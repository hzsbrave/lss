package cn.it.service;

import java.util.List;

import cn.it.entity.ClassesCourse;


public interface ClassesCourseService extends BaseService<ClassesCourse> {
	 public List<ClassesCourse> selectListPage(ClassesCourse classescourse);
	 public ClassesCourse selectClassesCourse(ClassesCourse classescourse);
	 public List<ClassesCourse> selectClassesCourseByCourseId(int course_id);
}
