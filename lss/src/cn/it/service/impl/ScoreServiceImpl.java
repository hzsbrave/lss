package cn.it.service.impl;

import org.springframework.stereotype.Service;

import cn.it.entity.Score;
import cn.it.service.ScoreService;

@Service("scoreService")
public class ScoreServiceImpl extends BaseServiceImpl<Score> implements ScoreService {

	@Override
	public int updateExam(Score score) {
		// TODO Auto-generated method stub
		return scoreMapper.updateExam(score);
	}
	
	
	
	
}
