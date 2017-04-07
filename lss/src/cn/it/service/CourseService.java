package cn.it.service;

import java.util.List;
import java.util.Map;

import cn.it.entity.Course;
import cn.it.entity.CourseRelation;
import cn.it.entity.Major;
import cn.it.entity.Params;
import cn.it.entity.Room;
import cn.it.entity.vo.ClassesCourseVO;
import cn.it.entity.vo.CourseVO;
import cn.it.entity.vo.MyCourseDetailVO;
import cn.it.entity.vo.MyCourseVO;


public interface CourseService extends BaseService<Course> {
	public Map selectClassesList();
	public Map selectMajorAndClassesList(Integer academyId);
	public Map selectOnlyClassesList(Integer majorId);
	public CourseVO get(Params params);
	public Map add(String academyId, String majorId);
	public List<Room> onchangeBuilding(String buildingId);
	public Map addClassCourse();
	public Map addClassCourseChange(String major_id);
	public Map addClassCourse2();
	//public int insertClassesCourse(String classes,String course,String major,String teacher);
	public ClassesCourseVO getClassesCourse(Params params,String classesId);
	public int updateClassesCourse(String id,String hours,String courseId,String classesId,String majorId,String teacherId);
	public Map insert(String courseName,String needHours,String majorId,String credit,String type,String startWeek,String endWeek,String text,String teacherId,String all_sectionArray,String single_sectionArray,Course course,Integer classesId);
	public int update(String id,String courseName,String needHours,String majorId,Course course);
	public Map deleteTheList(String[] stuIds);
	public int deleteClassesList(String[] stuIds) ;
	public List<MyCourseDetailVO> appGetMyCourse(String student_id,String course_id,String flag);
	public List<MyCourseVO> appGetMyCourseSimple(String id);
	public Long appSelectMyCourse(String student_id,String course_id);
	public List<MyCourseVO> appGetMyCourseByTime(String student_id,String flag,String week_id,String day_id);
	public List<MyCourseVO> appGetAllCourse(String type);
	public boolean appCheckMySelectCourse(String student_id,String course_id);
	public int insertCourseRelationAndClassesCourse(Integer course_id,Integer class_id,Integer major_id,Integer teacher_id);
}
