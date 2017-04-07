package cn.it.service;

import java.util.List;
import java.util.Map;

import cn.it.entity.Course;
import cn.it.entity.Evaluate;
import cn.it.entity.Student;
import cn.it.entity.model.TeacherPO;
import cn.it.entity.vo.CourseDetailVO;
import cn.it.entity.vo.EvaluateVO;
import cn.it.entity.vo.StudentSolrVO;



public interface StudentService extends BaseService<Student> {

	public Student selectStudent(Student student);
	
	public Student selectStudentByNo(String student_no);
	
	public List<Student> selectListPage(Student student);
	
	public int updateExam(Student student);
	
	public Map insertStudentList(List<Student> studentList);
	
	public List<EvaluateVO> selectEvaluate(int id);
	
	public int updateEvaluate(EvaluateVO evaluateVO);
	
	public Evaluate selectEvaluateBySidAndCid(Evaluate evaluate);
	
	public StudentSolrVO queryStudent(String queryString, String sort, Integer page) throws Exception;
	
    public List<Student> selectStudentByTeacherId(TeacherPO teacherPO);
    
    public List<CourseDetailVO> selectCourseByTeacherId(Integer teacher_id);

	public Map insertStudentInfo(Student student) throws Exception;
}
