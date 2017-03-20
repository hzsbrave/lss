package cn.it.service;

import java.util.List;

import cn.it.entity.Teacher;
import cn.it.entity.vo.EvaluateVO;


public interface TeacherService extends BaseService<Teacher> {

	public Teacher selectTeacher(Teacher teacher);
	
	public Teacher selectTeacherByNo(String teache_no);
	
	public List<Teacher> selectListPage(Teacher teacher);
	
	public int updateExam(Teacher teacher);
	
	public List<Teacher> selectListByAcademy(int major_id);
	
	public List<EvaluateVO> selectCourseByTeacher(int teacher_id);
	
	public List<EvaluateVO> selectEvaluateByCourse(int course_id);
	
	public List<Teacher> selectTeacherByAcademyId(int academyId);
}
