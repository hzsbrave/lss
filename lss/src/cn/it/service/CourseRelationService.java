package cn.it.service;

import java.util.List;

import cn.it.entity.Course;
import cn.it.entity.CourseRelation;
import cn.it.entity.vo.CourseDetailVO;

public interface CourseRelationService {
    public long addCourseRelationList(List<CourseRelation> list);
    public List<CourseDetailVO> selectCourseByTeacherId(Integer teacher_id);
}
