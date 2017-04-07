package cn.it.service.impl;

import cn.it.dao.CourseRelationMapper;
import cn.it.entity.Course;
import cn.it.entity.vo.CourseDetailVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.it.entity.Score;
import cn.it.service.ScoreService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("scoreService")
public class ScoreServiceImpl extends BaseServiceImpl<Score> implements ScoreService {
	@Autowired
	private CourseRelationMapper courseRelationMapper;
	@Override
	public int updateExam(Score score) {
		// TODO Auto-generated method stub
		return scoreMapper.updateExam(score);
	}

	@Override
	public Map listForScore(Integer teacher_id) {
		List<CourseDetailVO> courseList = courseRelationMapper.selectCourseByTeacherId(teacher_id);
		Map map = new HashMap();
		map.put("courseList",courseList);
		return map;
	}

	@Override
	public List<Score> selectListByTeacher(Integer teacherId) {
		return scoreMapper.selectListByTeacher(teacherId);
	}


}
