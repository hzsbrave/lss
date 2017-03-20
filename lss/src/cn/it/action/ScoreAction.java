package cn.it.action;

import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.it.entity.Classes;
import cn.it.entity.ClassesCourse;
import cn.it.entity.Course;
import cn.it.entity.Score;
import cn.it.entity.Student;
import cn.it.entity.Teacher;
import cn.it.service.ClassesCourseService;
import cn.it.service.ClassesService;
import cn.it.service.CourseService;
import cn.it.service.ScoreService;
import cn.it.service.StudentService;
/**
 * 
 * modify by yezhiqiang
 * 
 * @Description:成绩
 * 
 * @time:2017年1月11日 下午4:56:56
 *
 */
@Controller
@RequestMapping(value="/score")
public class ScoreAction extends BaseAction {
	
	@Resource
	private ScoreService scoreService;
	@Resource
	private CourseService courseService;
	@Resource
	private StudentService studentService;
	@Resource
	private ClassesService classesService;
	@Resource
	private ClassesCourseService classesCourseService;
	
	@RequestMapping("/changeScore")
	@ResponseBody
	public Map changeScore(HttpServletRequest request){
		String id = request.getParameter("id");
		String score = request.getParameter("score");
		//System.out.println("id:"+id+" score:"+score);
		Score s = new Score();
		s.setId(Integer.parseInt(id));
		s.setScore(Float.parseFloat(score));
		int i = scoreService.updateExam(s);
		//System.out.println("*"+i);
		Map map = new HashMap();
		map.put("flag", i);
		return map;
	}
	
	@RequestMapping("/list")
	public String list(HttpServletRequest request){
		Course course = new Course();
		List<Course> courseList = (List<Course>) courseService.selectList(course);
		request.setAttribute("courseList", courseList);
		Classes classes = new Classes();
		List<Classes> classesList = (List<Classes>) classesService.selectList(classes);
		request.setAttribute("classesList", classesList);
		return "forward:/WEB-INF/jsp/score.jsp";
	}
	
	@RequestMapping("/get")
	@ResponseBody 
	public void get(HttpServletResponse response) throws Exception{
		response.setCharacterEncoding("utf-8");
		Score score = new Score();
		List<Score> list = (List<Score>) scoreService.selectList(score);
		for (int i = 0; i < list.size(); i++) {
			Student student = studentService.select(list.get(i).getStudentId());
			list.get(i).setStudentNo(student.getStudentNo());
			list.get(i).setStudentName(student.getStudentName());
			Classes classes = classesService.select(student.getClassId());
			list.get(i).setClassesName(classes.getClassName());
			Course course = courseService.select(list.get(i).getCourseId());
			list.get(i).setCourseName(course.getCourseName());
		}
		JSONArray jsonArray = new JSONArray().fromObject(list);
		System.out.println(list.toString());
		PrintWriter writer = response.getWriter();
		writer.print(jsonArray);
	}

	@RequestMapping("/add")
	public String add(){
		return "forward:/WEB-INF/jsp/appendScore.jsp";
	}

	@RequestMapping("/insert")
	public String insert(HttpServletResponse response,HttpServletRequest request,Score score) throws Exception{
		String name = request.getParameter("scoreName");
		System.out.println(name);
		response.setHeader("Access-Control-Allow-Origin", "*");
		int i=scoreService.insert(score);
		return "redirect:/score/list.action";
	}
	
	@RequestMapping(value="/update")
	@ResponseBody
	public int update(HttpServletResponse response,HttpServletRequest request,Score score) throws Exception{
		response.setHeader("Access-Control-Allow-Origin", "*");
		String id = request.getParameter("id");
		String scoreName = request.getParameter("scoreName");
		score.setId(Integer.parseInt(id));
		System.out.println("---action.score:"+score);
		int i = scoreService.update(score);
		return i;
	}
	
	@RequestMapping("/deleteList")
	@ResponseBody
	public int deleteList(HttpServletResponse response, String[] stuIds){
		response.setHeader("Access-Control-Allow-Origin", "*");
		int i=0;
		try {
			i=scoreService.deleteList(stuIds);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	
	/**
	 * 教师角色
	 */
	@RequestMapping("/addScore")
	public String addScore(HttpServletRequest request){
		Teacher teacher = (Teacher) request.getSession().getAttribute("loginUser");
		ClassesCourse classesCourse = new ClassesCourse();
		classesCourse.setTeacherId(teacher.getId());
		List<ClassesCourse> classesCourseList = (List<ClassesCourse>) classesCourseService.selectList(classesCourse);
		
		Course course = new Course();
		List<Course> courselList = (List<Course>) courseService.selectList(course);
		
		if(classesCourseList.size()>0&&courselList.size()>0){
			for (int j = 0; j < courselList.size(); j++) {
				for (int i = 0; i < classesCourseList.size(); i++) {
					if(classesCourseList.get(i).getCourseId().equals(courselList.get(j).getId())){
						break;
					}else{
						if(i==classesCourseList.size()-1){
							courselList.remove(j);
							j--;
							//if(j<0)j=0;
						}
					}
				}
			}
		}
		request.setAttribute("courselList", courselList);
		Student student = new Student();
		List<Student> studentList = (List<Student>) studentService.selectList(student);
		if(classesCourseList.size()>0&&studentList.size()>0){
			for (int j = 0; j < studentList.size(); j++) {
				for (int i = 0; i < classesCourseList.size(); i++) {
					if(classesCourseList.get(i).getClassesId().equals(studentList.get(j).getClassId())){
						break;
					}else{
						if(i==classesCourseList.size()-1){
							studentList.remove(j);
							j--;
						}
					}
				}
			}
		}
		request.setAttribute("studentList", studentList);
		return "forward:/WEB-INF/jsp/teacher/appendScore.jsp";
	}

	@RequestMapping("/insertScore")
	@ResponseBody
	public Map insertScore(HttpServletResponse response,HttpServletRequest request) throws Exception{
		String studentId = request.getParameter("studentId");
		String courseId = request.getParameter("courseId");
		String score = request.getParameter("score");
		response.setHeader("Access-Control-Allow-Origin", "*");
		
		String is_exist;
		
		Score s = new Score();
		s.setStudentId(Integer.parseInt(studentId));
		s.setCourseId(Integer.parseInt(courseId));
		
		List<Score> list = (List<Score>) scoreService.selectList(s);
		if(list!=null && list.size()>0){
			is_exist = "0";
		}else{
			Score score2 = new Score();
			score2.setCourseId(Integer.parseInt(courseId));
			score2.setStudentId(Integer.parseInt(studentId));
			score2.setScore(Float.parseFloat(score));
			score2.setExamDate(new Date());
			score2.setTerm("1");
			int i=scoreService.insert(score2);
			is_exist = "1";
		}
		Map map = new HashMap();
		map.put("is_exist", is_exist);
		return map;
	}
	
	@RequestMapping("/getByTeacher")
	@ResponseBody 
	public void getByTeacher(HttpServletRequest request,HttpServletResponse response) throws Exception{
		response.setCharacterEncoding("utf-8");
		
		Teacher teacher = (Teacher) request.getSession().getAttribute("loginUser");
		ClassesCourse classesCourse = new ClassesCourse();
		classesCourse.setTeacherId(teacher.getId());
		List<ClassesCourse> classesCourseList = (List<ClassesCourse>) classesCourseService.selectList(classesCourse);
		
		Score score = new Score();
		List<Score> list = (List<Score>) scoreService.selectList(score);
		if(classesCourseList.size()>0&&list.size()>0){
			for (int j = 0; j < list.size(); j++) {
				for (int i = 0; i < classesCourseList.size(); i++) {
					if(classesCourseList.get(i).getCourseId().equals(list.get(j).getCourseId())){
						break;
					}else{
						if(i==classesCourseList.size()-1){
							list.remove(j);
							j--;
							//if(j<0)j=0;
						}
					}
				}
			}
		}
		for (int i = 0; i < list.size(); i++) {
			Student student = studentService.select(list.get(i).getStudentId());
			list.get(i).setStudentNo(student.getStudentNo());
			list.get(i).setStudentName(student.getStudentName());
			Classes classes = classesService.select(student.getClassId());
			list.get(i).setClassesName(classes.getClassName());
			Course course = courseService.select(list.get(i).getCourseId());
			list.get(i).setCourseName(course.getCourseName());
		}
		JSONArray jsonArray = new JSONArray().fromObject(list);
		System.out.println(list.toString());
		PrintWriter writer = response.getWriter();
		writer.print(jsonArray);
	}

	
	@RequestMapping("/getScore")
	@ResponseBody 
	public void getScore(HttpServletResponse response,@RequestParam(value="ids") Integer[] classes,@RequestParam Integer course) throws Exception{
		response.setCharacterEncoding("utf-8");
		System.out.println(classes.toString()+course);
		Score score = new Score();
		score.setCourseId(course);
		
		
		
		List<Score> list = (List<Score>) scoreService.selectList(score);
		for (int i = 0; i < list.size(); i++) {
			Student student = studentService.select(list.get(i).getStudentId());
			list.get(i).setStudentNo(student.getStudentNo());
			list.get(i).setStudentName(student.getStudentName());
		}
		JSONArray jsonArray = new JSONArray().fromObject(list);
		System.out.println(list.toString());
		PrintWriter writer = response.getWriter();
		writer.print(jsonArray);
	}

	
	/**
	 * 学生
	 */
	
	@RequestMapping("/studentScore")
	@ResponseBody 
	public void studentScore(HttpServletResponse response,HttpServletRequest request) throws Exception{
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setCharacterEncoding("utf-8");
		Student user = (Student) request.getSession().getAttribute("loginUser");
		Score score = new Score();
		score.setStudentId(user.getId());
		List<Score> list = (List<Score>) scoreService.selectList(score);
		for (int i = 0; i < list.size(); i++) {
			Student student = studentService.select(list.get(i).getStudentId());
			list.get(i).setStudentNo(student.getStudentNo());
			list.get(i).setStudentName(student.getStudentName());
			Course course = courseService.select(list.get(i).getCourseId());
			list.get(i).setCourseName(course.getCourseName());
		}
		JSONArray jsonArray = new JSONArray().fromObject(list);
		System.out.println(list.toString());
		PrintWriter writer = response.getWriter();
		writer.print(jsonArray);
	}

}
