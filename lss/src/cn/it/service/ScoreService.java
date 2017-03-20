package cn.it.service;

import cn.it.entity.Score;


public interface ScoreService extends BaseService<Score> {

	public int updateExam(Score score);
}
