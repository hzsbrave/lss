package cn.it.service;

import java.util.List;

import cn.it.entity.Classes;


public interface ClassesService extends BaseService<Classes> {

	public Classes selectClasses(Classes classes);
	public List<Classes> selectListPage(Classes classes);
	public List<Classes> selectListByMajorId(int major_id);
}
