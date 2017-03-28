package cn.it.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.it.dao.BuildingRoomMapper;
import cn.it.dao.ClassesCourseMapper;
import cn.it.dao.CourseDetailMapper;
import cn.it.dao.CourseRelationMapper;
import cn.it.entity.Academy;
import cn.it.entity.Building;
import cn.it.entity.BuildingRoom;
import cn.it.entity.Classes;
import cn.it.entity.ClassesCourse;
import cn.it.entity.Course;
import cn.it.entity.CourseDetail;
import cn.it.entity.CourseRelation;
import cn.it.entity.Major;
import cn.it.entity.Params;
import cn.it.entity.Room;
import cn.it.entity.Student;
import cn.it.entity.Teacher;
import cn.it.entity.model.CoursePO;
import cn.it.entity.model.CoursePart;
import cn.it.entity.vo.ClassesCourseVO;
import cn.it.entity.vo.CourseVO;
import cn.it.entity.vo.DayVO;
import cn.it.entity.vo.MyCourseDetailVO;
import cn.it.entity.vo.MyCourseVO;
import cn.it.entity.vo.SectionVO;
import cn.it.entity.vo.WeekVO;
import cn.it.service.CourseService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Service("courseService")
public class CourseServiceImpl extends BaseServiceImpl<Course> implements CourseService {
	@Autowired
	private BuildingRoomMapper buildingRoomMapper;
	@Autowired
	private CourseDetailMapper courseDetailMapper;
	@Autowired
	private CourseRelationMapper courseRelationMapper;
	@Autowired
	private ClassesCourseMapper classesCourseMapper;

	@Override
	public List<Major> selectMajorList(Major major) {
		// TODO Auto-generated method stub
		return majorMapper.selectList(new Major());
	}

	@Override
	public CourseVO get(Params params) {
		// TODO Auto-generated method stub
		Course course = new Course();
		course.setPagedIndex((params.getPagedIndex() - 1) * params.getPagedSize());
		course.setPagedSize(params.getPagedSize());
		List<Course> list = (List<Course>) courseMapper.selectListPage(course);
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getMajorId() != 0) {
				Major major = majorMapper.select(list.get(i).getMajorId());
				list.get(i).setMajorName(major.getMajorName());
			}
		}
		int total = list.get(0).getTotal();
		CourseVO cvo = new CourseVO();
		cvo.setRows(list);
		cvo.setTotal(total);
		cvo.setPage((total + params.getPagedSize() - 1) / params.getPagedSize());
		return cvo;
	}

	@Override
	public Map add(String academyId, String flag) {
		// TODO Auto-generated method stub
		List<Academy> academyList = null;
		List<Major> majorList = null;
		List<Teacher> teacherList = null;
		List<Building> buildingList = null;
		List<Room> roomList = null;
		if (flag == null) {
			academyList = (List<Academy>) academyMapper.selectList(new Academy());
			System.out.println(academyList.get(0).getId());
			majorList = (List<Major>) majorMapper.selectMajorByAcademy(academyList.get(0).getId());
			teacherList = (List<Teacher>) teacherMapper.selectTeacherByAcademyId(academyList.get(0).getId());
			buildingList = (List<Building>) buildingRoomMapper.selectBuilding(new Building());
			roomList = (List<Room>) buildingRoomMapper.selectRoomByBuilding(buildingList.get(0).getBuildingId());
			Map map = new HashMap();
			map.put("majorList", majorList);
			map.put("academyList", academyList);
			map.put("teacherList", teacherList);
			map.put("buildingList", buildingList);
			map.put("roomList", roomList);
			map.put("flag", 1);
			return map;
		} else {
			majorList = (List<Major>) majorMapper.selectMajorByAcademy(Integer.parseInt(academyId));
			teacherList = (List<Teacher>) teacherMapper.selectTeacherByAcademyId(Integer.parseInt(academyId));
			Map map = new HashMap();
			map.put("majorList", majorList);
			map.put("teacherList", teacherList);
			return map;
		}
	}

	@Override
	public List<Room> onchangeBuilding(String buildingId) {
		// TODO Auto-generated method stub
		return buildingRoomMapper.selectRoomByBuilding(Integer.parseInt(buildingId));
	}

	@Override
	public Map addClassCourse() {
		// TODO Auto-generated method stub
		List<Major> majorList = (List<Major>) majorMapper.selectList(new Major());
		int first_major_id = majorList.get(0).getId();
		List<Teacher> teacherList = (List<Teacher>) teacherMapper.selectListByAcademy(first_major_id);
		List<Course> courseList = (List<Course>) courseMapper.selectListByMajorId(first_major_id);
		List<Classes> classesList = (List<Classes>) classesMapper.selectListByMajorId(first_major_id);
		Map map = new HashMap();
		map.put("majorList", majorList);
		map.put("teacherList", teacherList);
		map.put("courseList", courseList);
		map.put("classesList", classesList);
		return map;
	}

	@Override
	public Map addClassCourseChange(String major_id) {
		// TODO Auto-generated method stub
		List<Course> courseList = (List<Course>) courseMapper.selectListByMajorId(Integer.parseInt(major_id));
		List<Classes> classesList = (List<Classes>) classesMapper.selectListByMajorId(Integer.parseInt(major_id));
		List<Teacher> teacherList = teacherMapper.selectListByAcademy(Integer.parseInt(major_id));
		Map map = new HashMap();
		map.put("courseList", courseList);
		map.put("classesList", classesList);
		map.put("teacherList", teacherList);
		return map;
	}

	@Override
	public Map addClassCourse2() {
		// TODO Auto-generated method stub
		List<Major> majorList = (List<Major>) majorMapper.selectList(new Major());
		List<Teacher> teacherList = (List<Teacher>) teacherMapper.selectList(new Teacher());
		int first_major_id = majorList.get(0).getId();
		List<Course> courseList = (List<Course>) courseMapper.selectListByMajorId(first_major_id);
		List<Classes> classesList = (List<Classes>) classesMapper.selectListByMajorId(first_major_id);

		Map map = new HashMap();
		map.put("majorList", majorList);
		map.put("courseList", courseList);
		map.put("classesList", classesList);
		map.put("teacherList", teacherList);
		return map;
	}

/*	@Override
	public int insertClassesCourse(String classes, String course, String major, String teacher) {
		// TODO Auto-generated method stub
		ClassesCourse cc = new ClassesCourse();
		cc.setClassesId(Integer.parseInt(classes));
		cc.setTeacherId(Integer.parseInt(teacher));
		cc.setMajorId(Integer.parseInt(major));
		cc.setCourseId(Integer.parseInt(course));
		ClassesCourse cc2 = classesCourseMapper.selectClassesCourse(cc);
		if (cc2 == null) {
			ClassesCourse classesCourse = new ClassesCourse();
			classesCourse.setClassesId(Integer.parseInt(classes));
			classesCourse.setCourseId(Integer.parseInt(course));
			Course course2 = courseMapper.select(Integer.parseInt(course));
			if (course2 != null) {
				String string = course2.getNeedHours().toString();
				classesCourse.setHours(Integer.parseInt(string));
			}
			classesCourse.setMajorId(Integer.parseInt(major));
			classesCourse.setTeacherId(Integer.parseInt(teacher));
			int i = classesCourseMapper.insert(classesCourse);
			return i;
		} else {
			return 0;
		}
	}*/

	@Override
	public ClassesCourseVO getClassesCourse(Params params) {
		// TODO Auto-generated method stub
		ClassesCourse classesCourse = new ClassesCourse();
		classesCourse.setPagedIndex((params.getPagedIndex() - 1) * params.getPagedSize());
		classesCourse.setPagedSize(params.getPagedSize());
		List<ClassesCourse> list = (List<ClassesCourse>) classesCourseMapper.selectListPage(classesCourse);
		for (int i = 0; i < list.size(); i++) {
			Major major = majorMapper.select(list.get(i).getMajorId());
			list.get(i).setMajorName(major.getMajorName());
			Classes classes = classesMapper.select(list.get(i).getClassesId());
			list.get(i).setClassesName(classes.getClassName());
			Course course = courseMapper.select(list.get(i).getCourseId());
			list.get(i).setCourseName(course.getCourseName());
			Teacher teacher = teacherMapper.select(list.get(i).getTeacherId());
			list.get(i).setTeacherName(teacher.getTeacherName());
		}
		int total = list.get(0).getTotal();
		ClassesCourseVO ccvo = new ClassesCourseVO();
		ccvo.setRows(list);
		ccvo.setTotal(total);
		ccvo.setPage((total + params.getPagedSize() - 1) / params.getPagedSize());
		return ccvo;
	}

	@Override
	public int updateClassesCourse(String id, String hours, String courseId, String classesId, String majorId,
			String teacherId) {
		// TODO Auto-generated method stub
		ClassesCourse classesCourse = new ClassesCourse();
		classesCourse.setId(Integer.parseInt(id));
		classesCourse.setHours(Integer.parseInt(hours));
		classesCourse.setCourseId(Integer.parseInt(courseId));
		classesCourse.setClassesId(Integer.parseInt(classesId));
		classesCourse.setMajorId(Integer.parseInt(majorId));
		classesCourse.setTeacherId(Integer.parseInt(teacherId));
		System.out.println("---action.classesCourse:" + classesCourse);
		int i = classesCourseMapper.update(classesCourse);
		return i;
	}

	@Override
	public Map insert(String courseName, String needHours, String majorId, String credit, String type, String startWeek,
			String endWeek, String text, String teacherId, String all_sectionArray, String single_sectionArray,
			Course course) {
		// TODO Auto-generated method stub
		String is_exist = "";
		JSONArray jsonArray = JSONArray.fromObject(all_sectionArray);
		List<CoursePart> list = new ArrayList<CoursePart>();
		if (jsonArray.size() > 0) {
			for (int i = 0; i < jsonArray.size(); i++) {
				Object o = jsonArray.get(i);
				JSONObject jsonObject = JSONObject.fromObject(o);
				CoursePart cp = (CoursePart) JSONObject.toBean(jsonObject, CoursePart.class);
				System.out.println("1" + cp);
				list.add(cp);
			}
		}

		JSONArray jsonArray2 = JSONArray.fromObject(single_sectionArray);
		List<CoursePart> list2 = new ArrayList<CoursePart>();
		if (jsonArray2.size() > 0) {
			for (int i = 0; i < jsonArray2.size(); i++) {
				Object o2 = jsonArray2.get(i);
				JSONObject jsonObject2 = JSONObject.fromObject(o2);
				CoursePart cp2 = (CoursePart) JSONObject.toBean(jsonObject2, CoursePart.class);
				System.out.println("2" + cp2);
				list2.add(cp2);
			}
		}

		Course c = new Course();
		c.setCourseName(courseName);
		c.setMajorId(Integer.parseInt(majorId));

		BuildingRoom br = new BuildingRoom();
		br.setBuildingId(Integer.parseInt(list.get(0).getBuilding()));
		br.setRoomId(Integer.parseInt(list.get(0).getRoom()));
		BuildingRoom br2 = buildingRoomMapper.selectBuildingRoom(br);
		BuildingRoom _br2 = null;
		if (list2.size() > 0) {
			BuildingRoom _br = new BuildingRoom();
			_br.setBuildingId(Integer.parseInt(list2.get(0).getBuilding()));
			_br.setRoomId(Integer.parseInt(list2.get(0).getRoom()));
			_br2 = buildingRoomMapper.selectBuildingRoom(_br);
		}

		Course cou = courseMapper.selectCourse(c);
		if (cou == null) {
			course.setCourseName(courseName);
			course.setNeedHours(Byte.parseByte(needHours));
			course.setMajorId(Integer.parseInt(majorId));
			course.setCreateDate(new Date());
			int i = courseMapper.insert(course);
			int id = course.getId();
			// 插入course表成功
			if (i == 1) {
				List<CourseDetail> courseDetailList = new ArrayList<CourseDetail>();
				if (list2.size() == 0) {
					// 不区分单双周
					for (int e = Integer.parseInt(startWeek); e <= Integer.parseInt(endWeek); e++) {
						for (int q = 0; q < list.size(); q++) {
							for (int w = 0; w < list.get(q).getSection().size(); w++) {
								CourseDetail cd = new CourseDetail();
								Date date = new Date();
								cd.setCourseIntroduce(text);
								cd.setCreateTime(date);
								cd.setCredit(credit);
								cd.setLastUpdateTime(date);
								cd.setDayId(Integer.parseInt(list.get(q).getWeek()));
								cd.setLikeNum(0);
								cd.setSectionId(Integer.parseInt(list.get(q).getSection().get(w)));
								cd.setSelectNum(0);
								cd.setTeacherId(Integer.parseInt(teacherId));
								cd.setType(type);
								cd.setWeekId(e);
								cd.setCourseId(id);
								cd.setBuildingRoomId(br2.getTbrId());
								courseDetailList.add(cd);
							}
						}
					}
					System.out.println("不区分单双周：" + courseDetailList);
				} else {
					// 区分单双周

					// 计算双周
					for (int e = Integer.parseInt(startWeek) + 1; e <= Integer.parseInt(endWeek); e += 2) {
						for (int q = 0; q < list2.size(); q++) {
							for (int w = 0; w < list2.get(q).getSection().size(); w++) {
								CourseDetail cd = new CourseDetail();
								Date date = new Date();
								cd.setCourseIntroduce(text);
								cd.setCreateTime(date);
								cd.setCredit(credit);
								cd.setLastUpdateTime(date);
								cd.setDayId(Integer.parseInt(list2.get(q).getWeek()));
								cd.setLikeNum(0);
								cd.setSectionId(Integer.parseInt(list2.get(q).getSection().get(w)));
								cd.setSelectNum(0);
								cd.setTeacherId(Integer.parseInt(teacherId));
								cd.setType(type);
								cd.setWeekId(e);
								cd.setCourseId(id);
								cd.setBuildingRoomId(_br2.getTbrId());
								courseDetailList.add(cd);
							}
						}
					}
					// 计算单周
					for (int e = Integer.parseInt(startWeek); e <= Integer.parseInt(endWeek) - 1; e += 2) {
						for (int q = 0; q < list.size(); q++) {
							for (int w = 0; w < list.get(q).getSection().size(); w++) {
								CourseDetail cd = new CourseDetail();
								Date date = new Date();
								cd.setCourseIntroduce(text);
								cd.setCreateTime(date);
								cd.setCredit(credit);
								cd.setLastUpdateTime(date);
								cd.setDayId(Integer.parseInt(list.get(q).getWeek()));
								cd.setLikeNum(0);
								cd.setSectionId(Integer.parseInt(list.get(q).getSection().get(w)));
								cd.setSelectNum(0);
								cd.setTeacherId(Integer.parseInt(teacherId));
								cd.setType(type);
								cd.setWeekId(e);
								cd.setCourseId(id);
								cd.setBuildingRoomId(br2.getTbrId());
								courseDetailList.add(cd);
							}
						}
					}

					System.out.println("区分单双周：" + courseDetailList);
				}
				long p = courseDetailMapper.addCourseDetailList(courseDetailList);
				if (p == courseDetailList.size()) {
					is_exist = "0";
				}

			}
		} else {
			is_exist = "1";
		}
		Map map = new HashMap();
		map.put("isExist", is_exist);
		return map;
	}

	@Override
	public int update(String id, String courseName, String needHours, String majorId, Course course) {
		// TODO Auto-generated method stub
		course.setId(Integer.parseInt(id));
		course.setCourseName(courseName);
		course.setNeedHours(Byte.parseByte(needHours));
		course.setMajorId(Integer.parseInt(majorId));
		course.setCreateDate(new Date());
		System.out.println("---action.course:" + course);
		int i = courseMapper.update(course);
		return i;
	}

	@Override
	public Map deleteTheList(String[] stuIds) {
		// TODO Auto-generated method stub
		String[] array = new String[stuIds.length];
		int k = 0;
		for (int j = 0; j < stuIds.length; j++) {
			List<ClassesCourse> list = classesCourseMapper.selectClassesCourseByCourseId(Integer.parseInt(stuIds[j]));
			if (list == null || list.size() == 0) {
				array[k] = stuIds[j];
				k++;
			}
		}
		int i = 0;
		int l = 0;
		try {
			i = courseMapper.deleteList(array);
			l = courseDetailMapper.deleteList(array);
		} catch (Exception e) {
			e.printStackTrace();
		}
		Map map = new HashMap();
		map.put("deleteCourse", i);
		map.put("deleteCourseDetail", l);
		return map;
	}

	@Override
	public int deleteClassesList(String[] stuIds) {
		// TODO Auto-generated method stub
		int i = 0;
		try {
			i = classesCourseMapper.deleteList(stuIds);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public List<MyCourseVO> appGetMyCourseByTime(String student_id, String flag, String week_id, String day_id) {
		// TODO Auto-generated method stub
		CoursePO c = new CoursePO();
		c.setStudentId(Integer.parseInt(student_id));
		c.setFlag(flag);
		c.setWeekId(Integer.parseInt(week_id));
		c.setDayId(Integer.parseInt(day_id));
		List<MyCourseVO> list = courseMapper.appSelectMyCourse(c);
		return list;
	}

	@Override
	public List<MyCourseDetailVO> appGetMyCourse(String student_id, String course_id, String flag) {
		// TODO Auto-generated method stub
		CoursePO c = new CoursePO();
		c.setCourseId(Integer.parseInt(course_id));
		if (student_id != null) {
			c.setStudentId(Integer.parseInt(student_id));
		}
		List<MyCourseVO> list = courseMapper.appSelectMyCourse(c);
		c.setFlag(flag);
		List<MyCourseVO> list2 = courseMapper.appSelectMyCourse(c);
		List<MyCourseDetailVO> resultList = new ArrayList<MyCourseDetailVO>();
		for (int q = 0; q < list.size(); q++) {
			MyCourseDetailVO vo = new MyCourseDetailVO();
			vo.setCourseId(list.get(q).getCourseId());
			vo.setCourseIntroduce(list.get(q).getCourseIntroduce());
			vo.setCourseName(list.get(q).getCourseName());
			vo.setCredit(list.get(q).getCredit());
			vo.setLikeNum(list.get(q).getLikeNum());
			vo.setSelectNum(list.get(q).getSelectNum());
			vo.setStudentId(list.get(q).getStudentId());
			vo.setTeacherName(list.get(q).getTeacherName());
			vo.setType(list.get(q).getType());
			List<WeekVO> weekList = new ArrayList<WeekVO>();
			for (int i = 0; i < list2.size(); i++) {// all
				if ((list.get(q).getWeekName()).equals(list2.get(i).getWeekName())) {
					if (weekList.size() > 0) {
						for (int l = 0; l < weekList.size(); l++) {
							if ((list2.get(i).getWeekName()).equals(weekList.get(l).getWeekName())) {
								boolean f = true;
								for (int p = 0; p < weekList.get(l).getDayList().size(); p++) {
									if ((list2.get(i).getDayName())
											.equals(weekList.get(l).getDayList().get(p).getDayName())) {

										SectionVO sectionVO = new SectionVO();
										sectionVO.setSectionName(list2.get(i).getSectionName());
										sectionVO.setPeopleNum(list2.get(i).getPeopleNum());
										sectionVO.setRoomName(list2.get(i).getRoomName());
										sectionVO.setBuildingName(list2.get(i).getBuildingName());
										weekList.get(l).getDayList().get(p).getSectionList().add(sectionVO);
										f = false;
									}
								}
								if (f == true) {
									DayVO dayVO = new DayVO();
									dayVO.setDayName(list2.get(i).getDayName());
									List<SectionVO> sectionList = new ArrayList<SectionVO>();
									SectionVO sectionVO = new SectionVO();
									sectionVO.setSectionName(list2.get(i).getSectionName());
									sectionVO.setPeopleNum(list2.get(i).getPeopleNum());
									sectionVO.setRoomName(list2.get(i).getRoomName());
									sectionVO.setBuildingName(list2.get(i).getBuildingName());
									sectionList.add(sectionVO);
									dayVO.setSectionList(sectionList);
									weekList.get(l).getDayList().add(dayVO);
								}
							} else {
								WeekVO weekVO = new WeekVO();
								weekVO.setWeekId(list2.get(i).getWeekId());
								weekVO.setWeekName(list2.get(i).getWeekName());
								List<DayVO> dayList = new ArrayList<DayVO>();
								DayVO dayVO = new DayVO();
								dayVO.setDayName(list2.get(i).getDayName());
								List<SectionVO> sectionList = new ArrayList<SectionVO>();
								SectionVO sectionVO = new SectionVO();
								sectionVO.setSectionName(list2.get(i).getSectionName());
								sectionVO.setPeopleNum(list2.get(i).getPeopleNum());
								sectionVO.setRoomName(list2.get(i).getRoomName());
								sectionVO.setBuildingName(list2.get(i).getBuildingName());
								sectionList.add(sectionVO);
								dayVO.setSectionList(sectionList);
								dayList.add(dayVO);
								weekVO.setDayList(dayList);
								weekList.add(weekVO);
							}
						}
					} else {
						WeekVO weekVO = new WeekVO();
						weekVO.setWeekId(list2.get(i).getWeekId());
						weekVO.setWeekName(list2.get(i).getWeekName());
						List<DayVO> dayList = new ArrayList<DayVO>();
						DayVO dayVO = new DayVO();
						dayVO.setDayName(list2.get(i).getDayName());
						List<SectionVO> sectionList = new ArrayList<SectionVO>();
						SectionVO sectionVO = new SectionVO();
						sectionVO.setSectionName(list2.get(i).getSectionName());
						sectionVO.setPeopleNum(list2.get(i).getPeopleNum());
						sectionVO.setRoomName(list2.get(i).getRoomName());
						sectionVO.setBuildingName(list2.get(i).getBuildingName());
						sectionList.add(sectionVO);
						dayVO.setSectionList(sectionList);
						dayList.add(dayVO);
						weekVO.setDayList(dayList);
						weekList.add(weekVO);
					}
				}
				vo.setWeekList(weekList);
			}
			resultList.add(vo);
		}

		// 按照周次进行排序

		Collections.sort(resultList, new Comparator<MyCourseDetailVO>() {

			@Override
			public int compare(MyCourseDetailVO o1, MyCourseDetailVO o2) {
				// TODO Auto-generated method stub
				if (o1.getWeekList().get(0).getWeekId() > o2.getWeekList().get(0).getWeekId()) {
					return 1;
				}
				if (o1.getWeekList().get(0).getWeekId() == o2.getWeekList().get(0).getWeekId()) {
					return 0;
				}
				return -1;
			}

		});

		return resultList;
	}

	@Override
	public List<MyCourseVO> appGetMyCourseSimple(String id) {
		// TODO Auto-generated method stub
		return courseMapper.appSelectMyCourseSimple(Integer.parseInt(id));
	}

	@Override
	public Long appSelectMyCourse(String student_id, String course_id) {
		// TODO Auto-generated method stub
		List<CourseDetail> cdlist = courseDetailMapper.selectByCourseId(Integer.parseInt(course_id));
		List<CourseRelation> crList = new ArrayList<CourseRelation>();
		for (int i = 0; i < cdlist.size(); i++) {
			CourseRelation cr = new CourseRelation();
			cr.setCourseDetailId(cdlist.get(i).getTcdId());
			cr.setStudentId(Integer.parseInt(student_id));
			Date date = new Date();
			cr.setCreateTime(date);
			cr.setLastUpdateTime(date);
			crList.add(cr);
		}
		long j = courseRelationMapper.addCourseRelationList(crList);
		return j;
	}

	@Override
	public List<MyCourseVO> appGetAllCourse(String type) {
		// TODO Auto-generated method stub
		return courseMapper.selectAllCourse(type);
	}

	@Override
	public boolean appCheckMySelectCourse(String student_id, String course_id) {
		// TODO Auto-generated method stub
		CoursePO coursePO = new CoursePO();
		coursePO.setStudentId(Integer.parseInt(student_id));
		List<MyCourseVO> myList = courseMapper.appSelectAllMyCourse(coursePO);
		CoursePO c = new CoursePO();
		c.setStudentId(null);
		c.setCourseId(Integer.parseInt(course_id));
		c.setFlag("1");
		List<MyCourseVO> courseList = courseMapper.appSelectMyCourse(c);
		System.out.println(myList + "," + courseList);
		boolean f = true;
		outterLoop: for (int i = 0; i < myList.size(); i++) {
			for (int j = 0; j < courseList.size(); j++) {
				if (myList.get(i).getWeekId() == courseList.get(j).getWeekId()
						&& myList.get(i).getDayId() == courseList.get(j).getDayId()
						&& myList.get(i).getSectionId() == courseList.get(j).getSectionId()) {
					f = false;
					System.out.println("i:" + i + " j:" + j);
					break outterLoop;
				}
			}
		}
		return f;
	}

	@Override
	public int insertCourseRelationAndClassesCourse(Integer course_id,Integer class_id,Integer major_id,Integer teacher_id){
		// TODO Auto-generated method stub
		ClassesCourse _classesCourse = new ClassesCourse();
		_classesCourse.setClassesId(class_id);
		_classesCourse.setCourseId(course_id);
		List<ClassesCourse> list = classesCourseMapper.selectClaCourseByCourseAndClass(_classesCourse);
		if(list!=null && list.size()>0){
			return 0;
		}else{
			System.out.println("-----------------------插入ClassesCourse表");
			ClassesCourse cc = new ClassesCourse();
			cc.setClassesId(class_id);
			cc.setTeacherId(teacher_id);
			cc.setMajorId(major_id);
			cc.setCourseId(course_id);
			ClassesCourse cc2 = classesCourseMapper.selectClassesCourse(cc);
			if (cc2 == null) {
				ClassesCourse classesCourse = new ClassesCourse();
				classesCourse.setClassesId(class_id);
				classesCourse.setCourseId(course_id);
				Course course2 = courseMapper.select(course_id);
				if (course2 != null) {
					String string = course2.getNeedHours().toString();
					classesCourse.setHours(Integer.parseInt(string));
				}
				classesCourse.setMajorId(major_id);
				classesCourse.setTeacherId(teacher_id);
				classesCourseMapper.insert(classesCourse);
			} 
			
			System.out.println("-----------------------插入CourseRelationShip表");
			List<CourseDetail> courseDetailList = courseDetailMapper.selectByCourseId(course_id);
			List<Student> studentList = studentMapper.selectStudentByClassId(class_id);
			List<CourseRelation> courseRelationList = new ArrayList<CourseRelation>();
			for(int l=0;l<studentList.size();l++){
				for(int i=0;i<courseDetailList.size();i++){
					CourseRelation cr = new CourseRelation();
					Date date = new Date();
					cr.setCourseDetailId(courseDetailList.get(i).getTcdId());
					cr.setStudentId(studentList.get(l).getId());
					cr.setCreateTime(date);
					cr.setLastUpdateTime(date);
					courseRelationList.add(cr);
				}
			}
			courseRelationMapper.addCourseRelationList(courseRelationList);
			return 1;
		}
	}

}
