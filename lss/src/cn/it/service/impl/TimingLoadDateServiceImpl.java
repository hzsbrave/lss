package cn.it.service.impl;

import java.util.Date;

import org.springframework.scheduling.annotation.Scheduled;

import cn.it.service.TimingLoadDateService;
import cn.it.utils.TimeUtils;

public class TimingLoadDateServiceImpl implements TimingLoadDateService{
	
	@Scheduled(cron = "0 0/30 * * * ? ")
	@Override
	public void sendScheduleMessage() {
		// TODO Auto-generated method stub
		Date date = new Date();
		if(TimeUtils.isInDate(date, "07:30:00", "19:55:00")){
			
		}
	}
	
}
