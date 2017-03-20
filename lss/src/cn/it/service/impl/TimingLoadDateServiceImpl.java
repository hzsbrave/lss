package cn.it.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;

import cn.it.dao.StudentMapper;
import cn.it.entity.Student;
import cn.it.service.TimingLoadDateService;
import cn.it.utils.TimeUtils;

public class TimingLoadDateServiceImpl implements TimingLoadDateService{
	@Autowired
	private StudentMapper studentMapper;
	@Scheduled(cron = "0 0/30 * * * ? ")
	@Override
	public void sendScheduleMessage() {
		// TODO Auto-generated method stub
		Date date = new Date();
		if(TimeUtils.isInDate(date, "07:30:00", "19:55:00")){
			int a = (Integer) null;
			List<Student> studentList = (List<Student>) studentMapper.select(a);
			if(studentList.size()>0){
				for(int i=0;i<studentList.size();i++){
					
				}
			}
		}
	}
	
}
