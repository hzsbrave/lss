package cn.it.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import cn.it.entity.Major;
import cn.it.entity.Teacher;


public interface MajorService extends BaseService<Major> {

	 public List<Major> selectListPage(Major major);
	 public Major selectMajor(String major_name);
	 public List<Major> selectMajorByAcademy(Integer academy_id);
	 
	 public int deleteMyList(String[] stuIds);
}
