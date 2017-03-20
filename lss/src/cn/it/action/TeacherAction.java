package cn.it.action;


import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.it.entity.Academy;
import cn.it.entity.Classes;
import cn.it.entity.ClassesCourse;
import cn.it.entity.Course;
import cn.it.entity.Major;
import cn.it.entity.Params;
import cn.it.entity.Teacher;
import cn.it.entity.vo.EvaluateVO;
import cn.it.entity.vo.TeacherVO;
import cn.it.service.AcademyService;
import cn.it.service.ClassesCourseService;
import cn.it.service.ClassesService;
import cn.it.service.CourseService;
import cn.it.service.EvaluateService;
import cn.it.service.MajorService;
import cn.it.service.TeacherService;
import net.sf.json.JSONArray;

@Controller
@RequestMapping(value="/teacher")
public class TeacherAction extends BaseAction {
	
	@Resource
	private TeacherService teacherService;
	@Resource
	private ClassesService classesService;
	@Resource
	private CourseService courseService;
	@Resource
	private ClassesCourseService classesCourseService;
	@Resource
	private AcademyService academyService;
	@Resource
	private EvaluateService evaluateService;
	@Resource
	private MajorService majorService;
	@Resource
	private ClassesService claseesService;
	
	
	@RequestMapping("/listAnalysisDetail")
	@ResponseBody
	public void listAnalysisDetail(HttpServletRequest request,HttpServletResponse response) throws IOException{
		response.setCharacterEncoding("utf-8");
		String course_id = request.getParameter("course_id");
		List<EvaluateVO> list = teacherService.selectEvaluateByCourse(Integer.parseInt(course_id));
		JSONArray jsonArray = new JSONArray().fromObject(list);
		PrintWriter writer = response.getWriter();
		writer.print(jsonArray);
	}
	
	@RequestMapping("/analysisDetail")
	public ModelAndView analysisDetail(HttpServletRequest request){
		String teacher_id = request.getParameter("teacher_id");
		List<EvaluateVO> list = teacherService.selectCourseByTeacher(Integer.parseInt(teacher_id));
		ModelAndView mv = new ModelAndView();
		mv.addObject("list",list);
		mv.setViewName("forward:/WEB-INF/jsp/teacher/analysisDetail.jsp");
		return mv;
	}
	
	@RequestMapping("/analysis")
	public ModelAndView analysis(HttpServletRequest request){
		List<EvaluateVO> list = evaluateService.selectEvaluateToTeacher(Integer.parseInt(request.getParameter("teacher_id")));
		int level1 = 0;
		int level2 = 0;
		int level3 = 0;
		int level4 = 0;
		int level5 = 0;
		if(list!=null&&list.size()>0){
			for(int i=0;i<list.size();i++){
				if(list.get(i).getEvaluateScore()>=90&&list.get(i).getEvaluateScore()<=100){
					level1++;
				}else if(list.get(i).getEvaluateScore()>=80&&list.get(i).getEvaluateScore()<=90){
					level2++;
				}else if(list.get(i).getEvaluateScore()>=70&&list.get(i).getEvaluateScore()<=80){
					level3++;
				}else if(list.get(i).getEvaluateScore()>=60&&list.get(i).getEvaluateScore()<=70){
					level4++;
				}else{
					level5++;
				}
			}
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("forward:/WEB-INF/jsp/teacher/analysis.jsp");
		mv.addObject("list",list);
		mv.addObject("level1",level1);
		mv.addObject("level2",level2);
		mv.addObject("level3",level3);
		mv.addObject("level4",level4);
		mv.addObject("level5",level5);
		return mv;
	}
	
	@RequestMapping("/changePwd")
	public ModelAndView changePwd(){
		return new ModelAndView("forward:/WEB-INF/jsp/teacher/changepwd.jsp");
	}
	
	@RequestMapping("/changePwdDetail")
	@ResponseBody
	public Map changePwdDetail(HttpServletResponse response,HttpServletRequest request)throws Exception{
		
		String oldpwd = request.getParameter("oldPwd");
		String newpwd = request.getParameter("newPwd");
		String userid = request.getParameter("userId");
		//System.out.println(oldpwd+"*"+newpwd+"*"+userid);
		String success;
		
		Teacher tea = new Teacher();
		tea = teacherService.select(Integer.parseInt(userid));
		if( tea == null){
			success = "0";
		}else{
			if((tea.getPassword()).equals(oldpwd)){
				Teacher t = new Teacher();
				t.setPassword(newpwd);
				t.setId(Integer.parseInt(userid));
				int i = teacherService.updateExam(t);
				success = "1";
			}else{
				success = "0";
			}
		}
		Map map = new HashMap();
		map.put("success", success);
		return map;
	}
	
	@RequestMapping("/list")
	public ModelAndView list(HttpServletResponse response,HttpServletRequest request){
		response.setCharacterEncoding("utf-8");	
		String academyId = request.getParameter("academyId");
		List<Academy> academyList = null;
		academyList = (List<Academy>) academyService.selectList(new Academy());
		ModelAndView mv = new ModelAndView();
		mv.setViewName("forward:/WEB-INF/jsp/teacher.jsp");
		mv.addObject("academyList",academyList);
		return mv;
	}
	
	@RequestMapping("/get")
	@ResponseBody 
	public TeacherVO get(HttpServletResponse reponse,HttpServletRequest request,Params params) throws Exception{
		reponse.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		
		Integer academyId = null;
		if(("undefined").equals(request.getParameter("academyId"))|| request.getParameter("academyId") == null){
			
		}else{
			academyId= Integer.parseInt(request.getParameter("academyId"));
		}
		
		String key = null;
		if(("").equals(request.getParameter("key"))|| request.getParameter("key") == null){
			
		}else{
			key = request.getParameter("key");
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Teacher teacher = new Teacher();
		teacher.setPagedIndex((params.getPagedIndex()-1)*params.getPagedSize());
		teacher.setPagedSize(params.getPagedSize());
		teacher.setKey(key);
		teacher.setAcademyId(academyId);
		List<Teacher> list = (List<Teacher>) teacherService.selectListPage(teacher);
		System.out.println(list);
		for (int i = 0; i < list.size(); i++) {
			if(list.get(i).getGender()==0){
				list.get(i).setGenderStr("男");
			}else{
				list.get(i).setGenderStr("女");
			}
			if("0".equals(list.get(i).getXueliId())){
				list.get(i).setXueliId("本科");
			}else if("1".equals(list.get(i).getXueliId())){
				list.get(i).setXueliId("硕士");
			}else if("2".equals(list.get(i).getXueliId())){
				list.get(i).setXueliId("教授");
			}else if("3".equals(list.get(i).getXueliId())){
				list.get(i).setXueliId("博士");
			}
		}

		int total = 0;
		if(list.size()==0 || list==null){
			
		}else{
			total = list.get(0).getTotal();
		}
		TeacherVO teavo = new TeacherVO();
		teavo.setRows(list);
		teavo.setTotal(total);
		teavo.setPage((total  +  params.getPagedSize()  - 1) / params.getPagedSize());
		return teavo;
	}

	@RequestMapping("/add")
	public String add(HttpServletRequest request){
		List<Academy> academyList = (List<Academy>) academyService.selectList(new Academy());
		request.setAttribute("academyList", academyList);
		return "forward:/WEB-INF/jsp/appendTeacher.jsp";
	}
	
	@RequestMapping("/add2")
	@ResponseBody
	public Map add2(HttpServletRequest request){
		List<Academy> academyList = (List<Academy>) academyService.selectList(new Academy());
		Map map = new HashMap();
		map.put("academyList", academyList);
		return map;
	}

	@RequestMapping("/insert")
	@ResponseBody 
	public Map insert(HttpServletResponse response,HttpServletRequest request,Teacher teacher) throws Exception{
		response.setHeader("Access-Control-Allow-Origin", "*");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String teacherNo = request.getParameter("teacherNo");
		String teacherName = request.getParameter("teacherName");
		String gender = request.getParameter("gender");
		String xueliId = request.getParameter("xueliId");
		String acamedyId = request.getParameter("acamedyId");
		String phone = request.getParameter("phone");
		String identity = request.getParameter("identity");
		
		String is_exist;
		Teacher tea = teacherService.selectTeacherByNo(teacherNo);
		if(tea==null){
			teacher.setTeacheNo(teacherNo);
			teacher.setPassword(teacherNo);
			teacher.setTeacherName(teacherName);
			teacher.setGender(Integer.parseInt(gender));
			teacher.setXueliId(xueliId);
			teacher.setEnterDate(new Date());
			teacher.setBelong(Integer.parseInt(acamedyId));
			teacher.setPhone(phone);
			teacher.setIdcard(identity);
			int i=teacherService.insert(teacher);
			is_exist = "0";//插入成功
		}else{
			is_exist = "1";//插入失败
		}
		System.out.println("插入："+is_exist);
		Map map = new HashMap();
		map.put("isExist", is_exist);
		return map;
	}
	
	@RequestMapping(value="/update")
	@ResponseBody
	public int update(HttpServletResponse response,HttpServletRequest request,Teacher teacher) throws Exception{
		response.setHeader("Access-Control-Allow-Origin", "*");
		String id = request.getParameter("id");
		String teacherNo = request.getParameter("teacherNo");
		String teacherName = request.getParameter("teacherName");
		String gender = request.getParameter("gender");
		String xueliId = request.getParameter("xueliId");
		String academyId = request.getParameter("academyId");
		teacher = teacherService.select(Integer.parseInt(id));
		teacher.setTeacheNo(teacherNo);
		teacher.setTeacherName(teacherName);
		teacher.setGender(Integer.parseInt(gender));
		teacher.setXueliId(xueliId);
		teacher.setBelong(Integer.parseInt(academyId));
		int i = teacherService.update(teacher);
		return i;
	}
	
	@RequestMapping("/deleteList")
	@ResponseBody
	public int deleteList(HttpServletResponse response, String[] stuIds){
		response.setHeader("Access-Control-Allow-Origin", "*");
		int i=0;
		try {
			i=teacherService.deleteList(stuIds);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	
	/**
	 * 教师角色
	 */
	//个人信息
	@RequestMapping("/teacherInfor")
	public String teacherInfor(HttpServletRequest request){
		return "forward:/WEB-INF/jsp/teacher/teacherProfile.jsp";
	}
	
	//修改个人信息
	@RequestMapping("/teacherEdit")
	public String teacherEdit(HttpServletRequest request){
		return "forward:/WEB-INF/jsp/teacher/compile.jsp";
	}
	
	@RequestMapping(value="/updateTeacher")
	public String updateTeacher(HttpServletResponse response,HttpServletRequest request) throws Exception{
		Teacher	teacher = new Teacher();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM");
		response.setHeader("Access-Control-Allow-Origin", "*");
		String id = request.getParameter("id");
		String teacherName = request.getParameter("teacherName");
		String gender = request.getParameter("gender");
		String natives = request.getParameter("natives");
		String national = request.getParameter("national");
		String birthday = request.getParameter("birthday");
		String phone = request.getParameter("phone");
		String familyAddress = request.getParameter("familyAddress");
		String nowAddress = request.getParameter("nowAddress");
		String idcard = request.getParameter("idcard");
		String political = request.getParameter("political");
		String xueliId = request.getParameter("xueliId");
		teacher = teacherService.select(Integer.parseInt(id));
		teacher.setTeacherName(teacherName);
		teacher.setGender(Integer.parseInt(gender));
		teacher.setNatives(natives);
		teacher.setNational(national);
		if(!birthday.equals("")){
			teacher.setBirthday(sdf.parse(birthday));
		}	
		teacher.setPhone(phone);
		teacher.setFamilyAddress(familyAddress);
		teacher.setNowAddress(nowAddress);
		teacher.setIdcard(idcard);
		teacher.setPolitical(political);
		teacher.setXueliId(xueliId);
		//int i = teacherService.update(teacher);
		teacherService.updateExam(teacher);
		request.getSession().setAttribute("loginUser", teacher);
		return "redirect:/teacher/teacherInfor.action";
	}
	
	//学生信息
	@RequestMapping("/studentInfor")
	public String studentInfor(HttpServletRequest request){
		Classes classes = new Classes();
		List<Classes> classesList = (List<Classes>) classesService.selectList(classes);
		request.setAttribute("classesList", classesList);
		return "forward:/WEB-INF/jsp/teacher/student.jsp";
	}
	
	//学生成绩信息
	@RequestMapping("/scoreInfor")
	public String scoreInfor(HttpServletRequest request,HttpSession session){
		Teacher teacher = (Teacher) session.getAttribute("loginUser");
		ClassesCourse classesCourse = new ClassesCourse();
		classesCourse.setTeacherId(teacher.getId());
		List<ClassesCourse> classesCourseList = (List<ClassesCourse>) classesCourseService.selectList(classesCourse);
		List<Classes> classesList = new ArrayList<Classes>();
		List<Course> courseList = new ArrayList<Course>();
		for (int i = 0; i < classesCourseList.size(); i++) {
			Classes classes = classesService.select(classesCourseList.get(i).getClassesId());
			classesList.add(classes);
			Course course = courseService.select(classesCourseList.get(i).getCourseId());
			courseList.add(course);
		}
		request.setAttribute("classesList", classesList);
		request.setAttribute("courseList", courseList);
		return "forward:/WEB-INF/jsp/teacher/score.jsp";
	}
	
	//成绩查询
	@RequestMapping("/scoreSelect")
	public String scoreSelect(HttpServletRequest request){
		Course course = new Course();
		List<Course> courseList = (List<Course>) courseService.selectList(course);
		request.setAttribute("courseList", courseList);
		return "forward:/WEB-INF/jsp/teacher/compareScore.jsp";
	}
}
