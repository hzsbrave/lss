package cn.it.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.it.entity.Classes;
import cn.it.service.ClassesService;

@Service("classesService")
public class ClassesServiceImpl extends BaseServiceImpl<Classes> implements ClassesService {

	@Override
	public Classes selectClasses(Classes classes) {
		// TODO Auto-generated method stub
		return classesMapper.selectClasses(classes);
	}

	@Override
	public List<Classes> selectListPage(Classes classes) {
		// TODO Auto-generated method stub
		return classesMapper.selectListPage(classes);
	}

	@Override
	public List<Classes> selectListByMajorId(int major_id) {
		// TODO Auto-generated method stub
		return classesMapper.selectListByMajorId(major_id);
	}

	
	
}
