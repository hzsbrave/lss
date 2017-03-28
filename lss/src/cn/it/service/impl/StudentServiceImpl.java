package cn.it.service.impl;

import java.util.List;

import org.apache.solr.client.solrj.SolrQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.it.dao.CourseRelationMapper;
import cn.it.entity.Course;
import cn.it.entity.Evaluate;
import cn.it.entity.Student;
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
	public long addStudentList(List<Student> studentList) {
		// TODO Auto-generated method stub
		return studentMapper.addStudentList(studentList);
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
	public List<Student> selectStudentByTeacherId(Integer teacher_id) {
		// TODO Auto-generated method stub
		return courseRelationMapper.selectStudentByTeacherId(teacher_id);
	}

	@Override
	public List<Course> selectCourseByTeacherId(Integer teacher_id) {
		// TODO Auto-generated method stub
		return courseRelationMapper.selectCourseByTeacherId(teacher_id);
	}

}
