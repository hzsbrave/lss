package cn.it.service;

import cn.it.entity.Score;

import java.util.List;
import java.util.Map;


public interface ScoreService extends BaseService<Score> {

	public int updateExam(Score score);
	public Map listForScore(Integer teacher_id);
	public List<Score> selectListByTeacher(Integer teacherId);
}
