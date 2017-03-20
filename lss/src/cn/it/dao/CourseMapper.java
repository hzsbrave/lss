package cn.it.dao;

import java.util.List;
import java.util.Map;

import cn.it.entity.Course;
import cn.it.entity.model.CoursePO;
import cn.it.entity.vo.MyCourseVO;

public interface CourseMapper extends BaseMapper<Course> {
    public List<Course> selectListPage(Course course);
    public Course selectCourse(Course course);
    public List<Course> selectListByMajorId(int major_id);
    public List<MyCourseVO> appSelectMyCourse(CoursePO coursePO);
    public List<MyCourseVO> appSelectMyCourseSimple(int student_id);
    public List<MyCourseVO> selectAllCourse(String type);
    public List<MyCourseVO> appSelectAllMyCourse(int student_id);
}