package cn.it.service.impl;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;



import cn.it.dao.CourseMapper;
import cn.it.dao.StudentMapper;
import cn.it.entity.Student;
import cn.it.entity.model.CoursePO;
import cn.it.entity.vo.MyCourseVO;
import cn.it.push.PushAPI;
import cn.it.service.TimingLoadDateService;
import cn.it.utils.TimeUtil;
import net.sf.json.JSONObject;
@Service
public class TimingLoadDateServiceImpl implements TimingLoadDateService {
	@Autowired
	private StudentMapper studentMapper;
	@Autowired
	private CourseMapper courseMapper;
	private int[] timeArray = {800,855,1000,1055,1430,1525,1630,1725,1930,2025};
	private int[] sectionArray = {1,2,3,4,5,6,7,8,9,10};
	// getToken:
	// {"code":200,"token":"CZHC5mn22U+21OwkLSFos/IzUqcJUQEC/W1Juz5Te4FTfqbJKghSwYpQIxpIloll9fzvYmnlS2+qmLJVARRRDiKF5Pe7+8Dm","userId":"classschedule"}
	@Scheduled(cron = "0 25 7,8,9,10 * * ? ")
	@Override
	public void sendScheduleMessageForAM() {
		// TODO Auto-generated method stub
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		int week = 0;
		int day = 0;
		int section = 0;
		try {
			Date d1 = df.parse("2017-02-20 00:00:00");
			Date d2 = df.parse(df.format(new Date()));
			long diff = d2.getTime() - d1.getTime();
			long days = diff / (1000 * 60 * 60 * 24);
			week = (int) (days / 7) + 1;
			day = (int) (days % 7) + 1;
			System.out.println(days + " " + week + " " + day);
		} catch (Exception e) {
		}

		List<Student> studentList = (List<Student>) studentMapper.selectAllStudent();
		if (studentList.size() > 0) {
			for (int i = 0; i < studentList.size(); i++) {
				if (studentList.get(i).getToken() == null) {
					System.out.println("此用户无融云账号");
				} else {
					Date currentdate = new Date();
					int n = currentdate.getHours() * 100 + currentdate.getMinutes();
					for (int j = 0; j < timeArray.length; j++) {
						if (n < timeArray[j]) {
							section = sectionArray[j];
							break;
						}
					}
					CoursePO coursePO = new CoursePO();
					coursePO.setStudentId(studentList.get(i).getId());
					coursePO.setWeekId(week);
					coursePO.setDayId(day);
					coursePO.setSectionId(section);
					List<MyCourseVO> list = courseMapper.appSelectAllMyCourse(coursePO);
					if (list.size() > 0) {
						String[] str = null;
						str = new String[1];
						str[0] = studentList.get(i).getId().toString();
						PushAPI t = new PushAPI();
						try {
							MyCourseVO myCourseVO = new  MyCourseVO();
							JSONObject json = JSONObject.fromObject(myCourseVO);
							System.out.print(t.publishSystemMessage("classschedule", str, "你接下来要上《"+myCourseVO.getCourseName()+"》",
									json.toString(), "你收到一个上课提醒消息", ""));
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
			}
		}
	}
	
	//@Scheduled(cron = "0 0 14,15,16,17,18,19,20 * * ? ")
	@Scheduled(cron = "* * 0/1 * * ? ")
	@Override
	public void sendScheduleMessageForPM() {
		// TODO Auto-generated method stub
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		int week = 0;
		int day = 0;
		int section = 0;
		try {
			Date d1 = df.parse("2017-02-20 00:00:00");
			Date d2 = df.parse(df.format(new Date()));
			long diff = d2.getTime() - d1.getTime();
			long days = diff / (1000 * 60 * 60 * 24);
			week = (int) (days / 7) + 1;
			day = (int) (days % 7) + 1;
			System.out.println(days + " " + week + " " + day);
		} catch (Exception e) {
		}

		List<Student> studentList = (List<Student>) studentMapper.selectAllStudent();
		if (studentList.size() > 0) {
			for (int i = 0; i < studentList.size(); i++) {
				if (studentList.get(i).getToken() == null) {
					System.out.println("此用户无融云账号");
				} else {
					System.out.println("推送融云消息");
					Date currentdate = new Date();
					int n = currentdate.getHours() * 100 + currentdate.getMinutes();
					for (int j = 0; j < timeArray.length; j++) {
						if (n < timeArray[j]) {
							section = sectionArray[j];
							break;
						}
					}
					CoursePO coursePO = new CoursePO();
					coursePO.setStudentId(studentList.get(i).getId());
				/*	coursePO.setWeekId(week);
					coursePO.setDayId(day);
					coursePO.setSectionId(section);*/
					coursePO.setWeekId(1);
					coursePO.setDayId(1);
					coursePO.setSectionId(1);
					List<MyCourseVO> list = courseMapper.appSelectAllMyCourse(coursePO);
					if (list.size() > 0) {
						String[] str = null;
						str = new String[1];
						str[0] = studentList.get(i).getId().toString();
						PushAPI t = new PushAPI();
						try {
							MyCourseVO myCourseVO = new  MyCourseVO();
							myCourseVO = list.get(0);
							JSONObject json = JSONObject.fromObject(myCourseVO);
							System.out.print(t.publishSystemMessage("classschedule", str, "你接下来要上《"+myCourseVO.getCourseName()+"》",
									json.toString(), "你收到一个上课提醒消息", ""));
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
			}
		}
	}
	
/*
	@Scheduled(cron = "0 0/1 * * * ? ")
	@Override
	public void sendMessageTest() {
		// TODO Auto-generated method stub
		System.out.println("测试：定时任务。。。。"+new Date());
		new Thread(new Runnable() {

			@Override
			public void run() {
				System.out.println("进入run方法啦！！！！");
				List<Student> studentList = (List<Student>) studentMapper.selectAllStudent();
				System.out.println(studentList);
				for (int i = 0; i < studentList.size(); i++) {
					if (studentList.get(i).getToken()==null) {
						System.out.println("此用户无融云账号");
					} else {
						String[] str = null;
						str = new String[1];
						str[0] = studentList.get(i).getId().toString();
						System.out.println("id:"+str[0]);
						JSONObject obj = new JSONObject();
						obj.put("courseId", "1000001");
						obj.put("courseName", "计算机组成原理");

						PushAPI t = new PushAPI();
						try {
							System.out.print(
									t.publishSystemMessage("classschedule", str, "你接下来要上这门课", obj.toJSONString(), "你收到一个上课提醒消息", ""));

						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
			}

		}).start();
	}
*/

}
