package cn.it.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.it.entity.Teacher;
import cn.it.entity.vo.EvaluateVO;
import cn.it.service.TeacherService;

@Service("teacherService")
public class TeacherServiceImpl extends BaseServiceImpl<Teacher> implements TeacherService {

	@Override
	public Teacher selectTeacher(Teacher teacher) {
		return teacherMapper.selectTeacher(teacher);
	}

	@Override
	public Teacher selectTeacherByNo(String teache_no) {
		// TODO Auto-generated method stub
		return teacherMapper.selectTeacherByNo(teache_no);
	}

	@Override
	public List<Teacher> selectListPage(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherMapper.selectListPage(teacher);
	}

	@Override
	public int updateExam(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherMapper.updateExam(teacher);
	}

	@Override
	public List<Teacher> selectListByAcademy(int major_id) {
		// TODO Auto-generated method stub
		return teacherMapper.selectListByAcademy(major_id);
	}

	@Override
	public List<EvaluateVO> selectCourseByTeacher(int teacher_id) {
		// TODO Auto-generated method stub
		return teacherMapper.selectCourseByTeacher(teacher_id);
	}

	@Override
	public List<EvaluateVO> selectEvaluateByCourse(int course_id) {
		// TODO Auto-generated method stub
		return teacherMapper.selectEvaluateByCourse(course_id);
	}

	@Override
	public List<Teacher> selectTeacherByAcademyId(int academyId) {
		// TODO Auto-generated method stub
		return teacherMapper.selectTeacherByAcademyId(academyId);
	}

}
