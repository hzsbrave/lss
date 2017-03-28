package cn.it.service.impl;


import java.util.List;

import org.springframework.stereotype.Service;


import cn.it.entity.Evaluate;
import cn.it.entity.model.EvaluatePO;
import cn.it.entity.vo.EvaluateVO;
import cn.it.service.EvaluateService;


@Service("evaluateService")
public class EvaluateServiceImpl extends BaseServiceImpl<Evaluate> implements EvaluateService {

	@Override
	public int insertSelective(Evaluate record) {
		// TODO Auto-generated method stub
		return evaluateMapper.insertSelective(record);
	}

	@Override
	public List<EvaluateVO> selectEvaluateToTeacher(EvaluatePO evaluatePO) {
		// TODO Auto-generated method stub
		return evaluateMapper.selectEvaluateToTeacher(evaluatePO);
	}

	
	
}
