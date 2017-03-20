package cn.it.dao;

import java.util.List;

import cn.it.entity.Evaluate;
import cn.it.entity.Student;
import cn.it.entity.vo.EvaluateVO;

public interface StudentMapper extends BaseMapper<Student> {
    
	public Student selectStudent(Student student);
	
	public Student selectStudentByNo(String student_no);
	
	public List<Student> selectListPage(Student student);
	
	public int updateExam(Student student);
	
	public long addStudentList(List<Student> studentList);
	
	public List<EvaluateVO> selectEvaluate(int id);
	
	public int updateEvaluate(EvaluateVO evaluateVO);
	
	public Evaluate selectEvaluateBySidAndCid(Evaluate evaluate);
}