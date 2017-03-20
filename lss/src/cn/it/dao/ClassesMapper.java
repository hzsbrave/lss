package cn.it.dao;

import java.util.List;

import cn.it.entity.Classes;



public interface ClassesMapper extends BaseMapper<Classes>  {
	public Classes selectClasses(Classes classes);
	public List<Classes> selectListPage(Classes classes);
	public List<Classes> selectListByMajorId(int major_id);
}