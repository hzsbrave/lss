package cn.it.dao;

import cn.it.entity.Score;

public interface ScoreMapper extends BaseMapper<Score> {

	public int updateExam(Score score);
}