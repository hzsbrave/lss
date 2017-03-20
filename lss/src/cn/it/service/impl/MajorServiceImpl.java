package cn.it.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.it.entity.Classes;
import cn.it.entity.Course;
import cn.it.entity.Major;
import cn.it.service.MajorService;

@Service("majorService")
public class MajorServiceImpl extends BaseServiceImpl<Major> implements MajorService {

	@Override
	public List<Major> selectListPage(Major major) {
		// TODO Auto-generated method stub
		return majorMapper.selectListPage(major);
	}

	@Override
	public Major selectMajor(String major_name) {
		// TODO Auto-generated method stub
		return majorMapper.selectMajor(major_name);
	}

	@Override
	public List<Major> selectMajorByAcademy(Integer academy_id) {
		// TODO Auto-generated method stub
		return majorMapper.selectMajorByAcademy(academy_id);
	}

	@Override
	public int deleteMyList(String[] stuIds) {
		// TODO Auto-generated method stub
		String[] array = new String[stuIds.length];
		int k = 0;
		for(int j=0;j<stuIds.length;j++){
			List<Classes> list = classesMapper.selectListByMajorId(Integer.parseInt(stuIds[j]));
			List<Course> list2 = courseMapper.selectListByMajorId(Integer.parseInt(stuIds[j]));
			if((list==null||list.size()==0)&&(list2==null||list2.size()==0)){
				array[k] = stuIds[j];
				k++;
			}
		}
		int i=0;
		try {
			i=majorMapper.deleteList(array);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	
	
}
