package cn.it.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.it.entity.Academy;
import cn.it.service.AcademyService;

@Service("academyService")
public class AcademyServiceImpl extends BaseServiceImpl<Academy> implements AcademyService {

	@Override
	public List<Academy> selectListPage(Academy academy) {
		// TODO Auto-generated method stub
		return academyMapper.selectListPage(academy);
	}

	@Override
	public Academy selectByName(String academy_name) {
		// TODO Auto-generated method stub
		return academyMapper.selectByName(academy_name);
	}
	
	
	
	
}
