package cn.it.service;

import java.util.List;

import cn.it.entity.Academy;


public interface AcademyService extends BaseService<Academy> {

	  public List<Academy> selectListPage(Academy academy);
	  public Academy selectByName(String academy_name);
}
