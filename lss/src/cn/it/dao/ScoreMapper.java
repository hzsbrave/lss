package cn.it.dao;

import cn.it.entity.Score;

import java.util.List;

public interface ScoreMapper extends BaseMapper<Score> {

	public int updateExam(Score score);
	public List<Score> selectListByTeacher(Integer teacherId);
}