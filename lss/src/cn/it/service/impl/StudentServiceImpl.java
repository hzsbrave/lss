package cn.it.service.impl;

import java.util.*;

import cn.it.dao.CourseDetailMapper;
import cn.it.entity.*;
import cn.it.entity.model.CoursePO;
import cn.it.entity.model.TeacherPO;
import cn.it.entity.vo.CourseDetailVO;
import cn.it.push.PushAPI;
import cn.it.push.models.TokenReslut;
import cn.it.push.util.GsonUtil;
import org.apache.solr.client.solrj.SolrQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.it.dao.CourseRelationMapper;
import cn.it.entity.vo.EvaluateVO;
import cn.it.entity.vo.StudentSolrVO;
import cn.it.service.StudentService;
import cn.it.solrdao.StudentDao;


@Service("studentService")
public class StudentServiceImpl extends BaseServiceImpl<Student> implements StudentService {
	@Autowired
	private StudentDao studentDao;
	@Autowired
	private CourseRelationMapper courseRelationMapper;
	@Autowired
	private CourseDetailMapper courseDetailMapper;
	@Override
	public Student selectStudent(Student student) {
		return studentMapper.selectStudent(student);
	}

	@Override
	public Student selectStudentByNo(String student_no) {
		// TODO Auto-generated method stub
		return studentMapper.selectStudentByNo(student_no);
	}

	@Override
	public List<Student> selectListPage(Student student) {
		// TODO Auto-generated method stub
		return studentMapper.selectListPage(student);
	}

	@Override
	public int updateExam(Student student) {
		// TODO Auto-generated method stub
		return studentMapper.updateExam(student);
	}

	@Override
	public Map insertStudentList(List<Student> studentList) {
		// TODO Auto-generated method stub
		for(int q=0;q<studentList.size();q++){
			studentMapper.insert(studentList.get(q));
			int id = studentList.get(q).getId();

			// 融云token---接口
			PushAPI apiPush=new PushAPI();
			String tokenStr = null;
			try {
				tokenStr = apiPush.getTokenByUserid(id+"", studentList.get(q).getStudentName(), "");
			} catch (Exception e) {
				e.printStackTrace();
			}
			TokenReslut userGetTokenResult=(TokenReslut) GsonUtil.fromJson(tokenStr, TokenReslut.class);
			String tokens = userGetTokenResult.getToken();
			Student s = new Student();
			s.setId(id);
			s.setToken(tokens);
			int k = studentMapper.updateExam(s);
			//给该新增学生增加课程信息(班级已设置的必修课)
			//查询该学生所属班级下绑定的所有课程
			List<CourseRelation> crList = new ArrayList<CourseRelation>();
			CoursePO coursePO = new CoursePO();
			coursePO.setClassesId(studentList.get(q).getClassId());
			List<Course> courseList = courseMapper.selectCourse(coursePO);
			if(courseList!=null&&courseList.size()>0){
				for(int l=0;l<courseList.size();l++){
					List<CourseDetail> cdList = courseDetailMapper.selectByCourseId(courseList.get(l).getId());
					if(cdList!=null&&cdList.size()>0){
						for(int t=0;t<cdList.size();t++){
							Date date = new Date();
							CourseRelation cr = new CourseRelation();
							cr.setStudentId(id);
							cr.setCourseDetailId(cdList.get(t).getTcdId());
							cr.setCreateTime(date);
							cr.setLastUpdateTime(date);
							crList.add(cr);
						}
					}
				}
			}
			if(crList.size()>0) {
				courseRelationMapper.addCourseRelationList(crList);
			}
		}
		return null;
	}

	@Override
	public List<EvaluateVO> selectEvaluate(int id) {
		// TODO Auto-generated method stub
		return studentMapper.selectEvaluate(id);
	}

	@Override
	public int updateEvaluate(EvaluateVO evaluateVO) {
		// TODO Auto-generated method stub
		return studentMapper.updateEvaluate(evaluateVO);
	}

	@Override
	public Evaluate selectEvaluateBySidAndCid(Evaluate evaluate) {
		// TODO Auto-generated method stub
		return studentMapper.selectEvaluateBySidAndCid(evaluate);
	}

	@Override
	public StudentSolrVO queryStudent(String queryString, String sort, Integer page) throws Exception {
		// TODO Auto-generated method stub
		// 拼装查询条件
		SolrQuery query = new SolrQuery();
		// 查询条件
		if (null != queryString && !"".equals(queryString)) {
			query.setQuery("student_name:" + queryString + "*");
		} else {
			query.setQuery("*:*");
		}
		// 排序条件
		if ("1".equals(sort)) {
			query.setParam("sort", "student_no desc");
		} else {
			query.setParam("sort", "student_no asc");
		}
		// 分页处理
		if (null == page) {
			page = 1;
		}
		// start
		int start = (page - 1) * 60;
		query.setStart(start);
		query.setRows(60);

		// 高亮设置
	/*	query.setHighlight(true);
		query.addHighlightField("name");
		query.setHighlightSimplePre("<span style=\"color:red\">");
		query.setHighlightSimplePost("</span>");*/

		// 查询商品列表
		StudentSolrVO studentSolrVO = studentDao.queryStudent(query);
		// 计算总页数
		long recordCount = studentSolrVO.getRecordCount();
		int pages = (int) (recordCount / 60);
		if (recordCount % 60 > 0) {
			pages++;
		}
		studentSolrVO.setPageCount(pages);
		studentSolrVO.setCurPage(page);

		return studentSolrVO;
	}

	@Override
	public List<Student> selectStudentByTeacherId(TeacherPO teacherPO) {
		// TODO Auto-generated method stub
		return courseRelationMapper.selectStudentByTeacherId(teacherPO);
	}

	@Override
	public List<CourseDetailVO> selectCourseByTeacherId(Integer teacher_id) {
		// TODO Auto-generated method stub
		return courseRelationMapper.selectCourseByTeacherId(teacher_id);
	}

	@Override
	public Map insertStudentInfo(Student student) throws Exception {
		String is_exist = null;
		int id = 0;
		Student stu = studentMapper.selectStudentByNo(student.getStudentNo());
		if(stu==null){
			student.setPassword(student.getStudentNo());
			int i=studentMapper.insert(student);
			id = student.getId();
			// 融云token---接口
			PushAPI apiPush=new PushAPI();
			String tokenStr=apiPush.getTokenByUserid(id+"", student.getStudentName(), "");
			TokenReslut userGetTokenResult=(TokenReslut) GsonUtil.fromJson(tokenStr, TokenReslut.class);
			String tokens = userGetTokenResult.getToken();
			Student s = new Student();
			s.setId(id);
			s.setToken(tokens);
			int k = studentMapper.updateExam(s);
			if(k==1){
				is_exist = "0";//插入成功
			}
			//给该新增学生增加课程信息(班级已设置的必修课)
			//查询该学生所属班级下绑定的所有课程
			List<CourseRelation> crList = new ArrayList<CourseRelation>();
			CoursePO coursePO = new CoursePO();
			coursePO.setClassesId(student.getClassId());
			List<Course> courseList = courseMapper.selectCourse(coursePO);
			if(courseList!=null&&courseList.size()>0){
				for(int l=0;l<courseList.size();l++){
					List<CourseDetail> cdList = courseDetailMapper.selectByCourseId(courseList.get(l).getId());
					if(cdList!=null&&cdList.size()>0){
						for(int t=0;t<cdList.size();t++){
							Date date = new Date();
							CourseRelation cr = new CourseRelation();
							cr.setStudentId(id);
							cr.setCourseDetailId(cdList.get(t).getTcdId());
							cr.setCreateTime(date);
							cr.setLastUpdateTime(date);
							crList.add(cr);
						}
					}
				}
			}
			if(crList.size()>0){
				courseRelationMapper.addCourseRelationList(crList);
			}
		}else{
			is_exist = "1";//账户已存在
		}
		Map map = new HashMap();
		map.put("isExist", is_exist);
		return map;
	}

}
