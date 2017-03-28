package cn.it.service;

import java.util.List;

import cn.it.entity.Course;
import cn.it.entity.CourseRelation;

public interface CourseRelationService {
    public long addCourseRelationList(List<CourseRelation> list);
    public List<Course> selectCourseByTeacherId(Integer teacher_id);
}
