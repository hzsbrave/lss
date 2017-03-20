package cn.it.dao;

import java.util.List;

import cn.it.entity.ClassesCourse;
import cn.it.entity.Course;

public interface ClassesCourseMapper extends BaseMapper<ClassesCourse> {
    public List<ClassesCourse> selectListPage(ClassesCourse classescourse);
    public ClassesCourse selectClassesCourse(ClassesCourse classescourse);
    public List<ClassesCourse> selectClassesCourseByCourseId(int course_id);
}