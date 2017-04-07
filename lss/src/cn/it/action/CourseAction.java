package cn.it.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
import cn.it.service.AcademyService;
import cn.it.service.BuildingRoomService;
import cn.it.service.ClassesCourseService;
import cn.it.service.ClassesService;
import cn.it.service.CourseDetailService;
import cn.it.service.CourseRelationService;
import cn.it.service.CourseService;
import cn.it.service.MajorService;
import cn.it.service.TeacherService;

@Controller
@RequestMapping(value = "/course")
public class CourseAction extends BaseAction {

	@Resource
	private CourseService courseService;

	@RequestMapping("/list")
	public String list(HttpServletRequest request) {
		return "forward:/WEB-INF/jsp/course.jsp";
	}

	@RequestMapping("/classCourse")
	@ResponseBody
	public Object classCourse(HttpServletRequest request) {
		if(request.getParameter("academyId")!=null){
			Map map = courseService.selectMajorAndClassesList(Integer.parseInt(request.getParameter("academyId")));
			return map;
		}else if(request.getParameter("majorId")!=null){
			Map map = courseService.selectOnlyClassesList(Integer.parseInt(request.getParameter("majorId")));
			return map;
		}else{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("forward:/WEB-INF/jsp/classCurriculum.jsp");
			Map map = courseService.selectClassesList();
			mv.addObject("academyList", map.get("academyList"));
			mv.addObject("majorList", map.get("majorList"));
			mv.addObject("classesList", map.get("classesList"));
			return mv;
		}
	}

	@RequestMapping("/get")
	@ResponseBody
	public CourseVO get(HttpServletResponse response, @RequestBody Params params) throws Exception {
		response.setCharacterEncoding("utf-8");
		return courseService.get(params);
	}

	@RequestMapping("/add")
	@ResponseBody
	public Object add(HttpServletRequest request) {
		String academyId = request.getParameter("academyId");
		String majorId = request.getParameter("majorId");
		Map map = courseService.add(academyId, majorId);
		ModelAndView mv = new ModelAndView();
		if(academyId == null && majorId == null){
			mv.addObject("majorList", map.get("majorList"));
			mv.addObject("academyList", map.get("academyList"));
			mv.addObject("teacherList", map.get("teacherList"));
			mv.addObject("classesList",map.get("classesList"));
			mv.addObject("buildingList",  map.get("buildingList"));
			mv.addObject("roomList",  map.get("roomList"));
			mv.setViewName("forward:/WEB-INF/jsp/appendCourse.jsp");
			return mv;
		}else{
			return map;
		}
	}

	@RequestMapping("/onchangeBuilding")
	@ResponseBody
	public Map onchangeBuilding(HttpServletRequest request) {
		String buildingId = request.getParameter("buildingId");
		List<Room> roomList = courseService.onchangeBuilding(buildingId);
		Map map = new HashMap();
		map.put("roomList", roomList);
		return map;
	}

	@SuppressWarnings("unchecked")
	@RequestMapping("/addClassCourse")
	public String addClassCourse(HttpServletRequest request) {
		Map map = courseService.addClassCourse();
		request.setAttribute("majorList", map.get("majorList"));
		request.setAttribute("teacherList", map.get("teacherList"));
		request.setAttribute("courseList", map.get("courseList"));
		request.setAttribute("classesList", map.get("classesList"));
		return "forward:/WEB-INF/jsp/settingCourse.jsp";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping("/addClassCourseChange")
	@ResponseBody
	public Map addClassCourseChange(HttpServletRequest request, @RequestParam String major_id) {
		return courseService.addClassCourseChange(major_id);
	}

	@SuppressWarnings("unchecked")
	@RequestMapping("/addClassCourse2")
	@ResponseBody
	public Map addClassCourse2(HttpServletRequest request) {
		return courseService.addClassCourse2();
	}

	@RequestMapping("/insertClassesCourse")
	@ResponseBody
	public Map insertClassesCourse(HttpServletResponse response, HttpServletRequest request) throws Exception {
		String classes = request.getParameter("classes");
		String course = request.getParameter("course");
		// String hours = request.getParameter("hours");
		String major = request.getParameter("major");
		String teacher = request.getParameter("teacher");
		response.setHeader("Access-Control-Allow-Origin", "*");

		String is_exist;
		int i = courseService.insertCourseRelationAndClassesCourse(Integer.parseInt(course), Integer.parseInt(classes),  Integer.parseInt(major),  Integer.parseInt(teacher));
		if(i==1){
			is_exist = "1";
		}else{
			is_exist = "0";
		}
		Map map = new HashMap();
		map.put("isExist", is_exist);
		return map;
	}

	@RequestMapping("/getClassesCourse")
	@ResponseBody
	public ClassesCourseVO getClassesCourse(HttpServletResponse response,HttpServletRequest request, @RequestBody Params params) throws Exception {
		response.setCharacterEncoding("utf-8");
		String classesId = request.getParameter("classId");
		return courseService.getClassesCourse(params,classesId);
	}

	@RequestMapping(value = "/updateClassesCourse")
	@ResponseBody
	public int updateClassesCourse(HttpServletResponse response, HttpServletRequest request) throws Exception {
		response.setHeader("Access-Control-Allow-Origin", "*");
		String id = request.getParameter("id");
		String hours = request.getParameter("hours");
		String courseId = request.getParameter("courseId");
		String classesId = request.getParameter("classesId");
		String majorId = request.getParameter("majorId");
		String teacherId = request.getParameter("teacherId");
		return courseService.updateClassesCourse(id, hours, courseId, classesId, majorId, teacherId);
	}

	@RequestMapping("/insert")
	@ResponseBody
	public Map insert(HttpServletResponse response, HttpServletRequest request, Course course) throws Exception {
		String courseName = request.getParameter("courseName");
		String needHours = request.getParameter("needHours");
		String majorId = request.getParameter("majorId");
		String credit = request.getParameter("credit");
		String type = request.getParameter("type");
		String startWeek = request.getParameter("startWeek");
		String endWeek = request.getParameter("endWeek");
		String text = request.getParameter("text");
		String teacherId = request.getParameter("teacherId");
		String all_sectionArray = request.getParameter("all_sectionArray");
		String single_sectionArray = request.getParameter("single_sectionArray");
		String classesId = request.getParameter("classesId");
		response.setHeader("Access-Control-Allow-Origin", "*");
		int i = 0;
		//插入课程基本信息、课程与班级的关联信息
		Map map = courseService.insert(courseName, needHours, majorId, credit, type, startWeek, endWeek, text, teacherId, all_sectionArray, single_sectionArray, course,Integer.parseInt(classesId));
		return map;
	}

	@RequestMapping(value = "/update")
	@ResponseBody
	public int update(HttpServletResponse response, HttpServletRequest request, Course course) throws Exception {
		response.setHeader("Access-Control-Allow-Origin", "*");
		String id = request.getParameter("id");
		String courseName = request.getParameter("courseName");
		String needHours = request.getParameter("needHours");
		String majorId = request.getParameter("majorId");
		return courseService.update(id, courseName, needHours, majorId, course);
	}

	@RequestMapping("/deleteList")
	@ResponseBody
	public Map deleteList(HttpServletResponse response, String[] stuIds) {
		response.setHeader("Access-Control-Allow-Origin", "*");
		return courseService.deleteTheList(stuIds);
	}

	@RequestMapping("/deleteClassesList")
	@ResponseBody
	public int deleteClassesList(HttpServletResponse response, String[] stuIds) {
		response.setHeader("Access-Control-Allow-Origin", "*");
		return courseService.deleteClassesList(stuIds);
	}
	
	@RequestMapping("/appGetMyCourse")
	@ResponseBody
	public Object appGetMyCourse(HttpServletResponse response,HttpServletRequest request) {
		String student_id = request.getParameter("studentId");
		String course_id = request.getParameter("courseId");
		String flag = request.getParameter("flag");
		return courseService.appGetMyCourse(student_id, course_id, flag);
	}
	
	@RequestMapping("/appGetMyCourseByTime")
	@ResponseBody
	public Object appGetMyCourseByTime(HttpServletResponse response,HttpServletRequest request) {
		String student_id = request.getParameter("studentId");
		String flag = request.getParameter("flag");
		String week_id = request.getParameter("weekId");
		String day_id = request.getParameter("dayId");
		return courseService.appGetMyCourseByTime(student_id,flag,week_id,day_id);
	}
	
	@RequestMapping("/appGetMyCourseSimple")
	@ResponseBody
	public Object appGetMyCourseSimple(HttpServletResponse response,HttpServletRequest request) {
		String id = request.getParameter("id");
		return courseService.appGetMyCourseSimple(id);
	}
	
	@RequestMapping("/appSelectMyCourse")
	@ResponseBody
	public Object appSelectMyCourse(HttpServletResponse response,HttpServletRequest request) {
		String student_id = request.getParameter("studentId");
		String course_id = request.getParameter("courseId");
		return courseService.appSelectMyCourse(student_id, course_id);
	}
	
	@RequestMapping("/appGetAllCourse")
	@ResponseBody
	public Object appGetAllCourse(HttpServletResponse response,HttpServletRequest request) {
		String type = request.getParameter("type");
		return courseService.appGetAllCourse(type);
	}
	
	@RequestMapping("/appCheckMyCourse")
	@ResponseBody
	public Object appCheckMyCourse(HttpServletResponse response,HttpServletRequest request) {
		String student_id = request.getParameter("studentId");
		String course_id = request.getParameter("courseId");
		Map map = new HashMap();
		if(courseService.appCheckMySelectCourse(student_id, course_id)==true){
			map.put("success", 1);
		}else{
			map.put("success", 0);
		}
		return map;
	}

}
