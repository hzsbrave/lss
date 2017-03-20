package cn.it.entity.model;

import java.util.ArrayList;
import java.util.List;

import cn.it.entity.vo.EvaluateVO;

public class EvaluatePO {
	List<EvaluateVO> list = new ArrayList<EvaluateVO>();

	public List<EvaluateVO> getList() {
		return list;
	}

	public void setList(List<EvaluateVO> list) {
		this.list = list;
	}
	
}
