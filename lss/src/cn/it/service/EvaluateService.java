package cn.it.service;



import java.util.List;

import cn.it.entity.Evaluate;
import cn.it.entity.vo.EvaluateVO;

public interface EvaluateService extends BaseService<Evaluate> {
	 int insertSelective(Evaluate record);
	 List<EvaluateVO> selectEvaluateToTeacher(int teacher_id);
}
