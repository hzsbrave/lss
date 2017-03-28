package cn.it.action;

import java.io.InputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.SynthSpinnerUI;

import net.sf.json.JSONArray;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import cn.it.push.PushAPI;
import cn.it.push.models.TokenReslut;
import cn.it.push.util.GsonUtil;

import cn.it.entity.Academy;
import cn.it.entity.Classes;
import cn.it.entity.Major;
import cn.it.entity.Params;
import cn.it.entity.Student;
import cn.it.entity.Teacher;
import cn.it.entity.model.EvaluatePO;
import cn.it.entity.vo.EvaluateVO;
import cn.it.entity.vo.StudentSolrVO;
import cn.it.entity.vo.StudentVO;
import cn.it.service.AcademyService;
import cn.it.service.ClassesCourseService;
import cn.it.service.ClassesService;
import cn.it.service.EvaluateService;
import cn.it.service.MajorService;
import cn.it.service.StudentService;
import cn.it.utils.ReadExcel;
import cn.it.utils.WDWUtil;


@Controller
@RequestMapping(value="/student")
public class StudentAction extends BaseAction {
	
	private Student student;
	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	@Resource
	private StudentService studentService;
	@Resource
	private ClassesService classesService;
	@Resource
	private ClassesCourseService classesCourseService;
	@Resource
	private EvaluateService evaluateService;
	@Resource
	private AcademyService academyService;
	@Resource
	private MajorService majorService;
	@Resource
	private ClassesService claseesService;
	
	@RequestMapping("/solrSearchStudent")
	@ResponseBody
	public StudentSolrVO solrSearchStudent(HttpServletResponse response,HttpServletRequest request)throws Exception{
		response.setCharacterEncoding("utf-8");
		String queryString = request.getParameter("queryString");
		String sort = request.getParameter("sort");
		String page = request.getParameter("page");
		StudentSolrVO result = studentService.queryStudent(queryString, sort, Integer.parseInt(page));
		return result;
	}
	
	@RequestMapping("/updateevaluate")
	@ResponseBody
	public Map insertevaluate(@RequestBody EvaluatePO evaluatePO)throws Exception{
		List<EvaluateVO> list = evaluatePO.getList();
		String success = "0";
		int sum = 0;
		for(int i=0;i<list.size();i++){
			if(studentService.selectEvaluateBySidAndCid(list.get(i))!=null){
				sum += studentService.updateEvaluate(list.get(i));
			}else{
				sum += evaluateService.insertSelective(list.get(i));
			}	
		}
		if(sum==list.size()){
			success = "1";
		}
		Map map = new HashMap();
		map.put("success", success);
		return map;
	}
	
	@RequestMapping("/listevaluate")
	@ResponseBody
	public void listevaluate(HttpServletResponse response,HttpServletRequest request)throws Exception{
		response.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		List<EvaluateVO> list = studentService.selectEvaluate(Integer.parseInt(id));
		JSONArray jsonArray = new JSONArray().fromObject(list);
		System.out.println(list.toString());
		PrintWriter writer = response.getWriter();
		writer.print(jsonArray);
	}
	
	@RequestMapping("/evaluate")
	public ModelAndView evaluate(){
		return new ModelAndView("forward:/WEB-INF/jsp/student/evaluate.jsp");
	}
	
	@RequestMapping("/changePwd")
	public ModelAndView changePwd(){
		return new ModelAndView("forward:/WEB-INF/jsp/student/changepwd.jsp");
	}
	
	@RequestMapping("/changePwdDetail")
	@ResponseBody
	public Map changePwdDetail(HttpServletResponse response,HttpServletRequest request)throws Exception{
		
		String oldpwd = request.getParameter("oldPwd");
		String newpwd = request.getParameter("newPwd");
		String userid = request.getParameter("userId");
		//System.out.println(oldpwd+"*"+newpwd+"*"+userid);
		String success;
		
		Student stu = new Student();
		stu = studentService.select(Integer.parseInt(userid));
		if( stu == null){
			success = "0";
		}else{
			if((stu.getPassword()).equals(oldpwd)){
				Student s = new Student();
				s.setPassword(newpwd);
				s.setId(Integer.parseInt(userid));
				int i = studentService.updateExam(s);
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
	@ResponseBody
	public Object list(HttpServletResponse reponse,HttpServletRequest request){
		reponse.setCharacterEncoding("utf-8");	
		String academyId = request.getParameter("academyId");
		String flag = request.getParameter("flag");
		List<Classes> classesList = null;
		List<Major> majorList = null;
		List<Academy> academyList = null;
		if(flag == null){
			academyList = (List<Academy>) academyService.selectList(new Academy());
			majorList = majorService.selectMajorByAcademy(academyList.get(0).getId());
			classesList = claseesService.selectListByMajorId(majorList.get(0).getId());
			ModelAndView mv = new ModelAndView();
			mv.setViewName("forward:/WEB-INF/jsp/student.jsp");
			mv.addObject("academyList",academyList);
			mv.addObject("majorList",majorList);
			mv.addObject("classesList",classesList);
			return mv;
		}else{
			majorList = majorService.selectMajorByAcademy(Integer.parseInt(academyId));
			if(majorList.size()>0 && majorList != null){
				classesList = claseesService.selectListByMajorId(majorList.get(0).getId());
			}
			Map map = new HashMap();
			map.put("majorList",majorList);
			map.put("classesList",classesList);
			return map;
		}
		
	}

	@RequestMapping("/get")
	@ResponseBody 
	public StudentVO get(HttpServletResponse reponse,HttpServletRequest request ,Params params) throws Exception{
		reponse.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		Integer academyId = null;
		if(("undefined").equals(request.getParameter("academyId"))|| request.getParameter("academyId") == null){
			
		}else{
			academyId= Integer.parseInt(request.getParameter("academyId"));
		}
		
		Integer majorId = null;
		if(("undefined").equals(request.getParameter("majorId")) || request.getParameter("majorId") == null){
			
		}else{
			majorId= Integer.parseInt(request.getParameter("majorId"));
		}
		
		Integer classId = null;
		if(("undefined").equals(request.getParameter("classId"))|| request.getParameter("classId") == null){
			
		}else{
			classId= Integer.parseInt(request.getParameter("classId"));
		}
		
		String key = null;
		if(("").equals(request.getParameter("key"))|| request.getParameter("key") == null){
			
		}else{
			key = request.getParameter("key");
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Student student = new Student();
		student.setPagedIndex((params.getPagedIndex()-1)*params.getPagedSize());
		student.setPagedSize(params.getPagedSize());
		List<Student> list = null;

		if(classId!=null){
			student.setClassesId(classId);
		}else{
			if(majorId!=null){
				student.setMajorId(majorId);
			}else{
				if(academyId !=null){
					student.setAcademyId(academyId);
				}else{
					
				}
			}
		}
		
		if(key!=null){
			student.setKey(key);
		}
		
		list = (List<Student>) studentService.selectListPage(student);	
		for (int i = 0; i < list.size(); i++) {
			list.get(i).setEnterTime(sdf.format(list.get(i).getEnterDate()));
			if(list.get(i).getGender()==0){
				list.get(i).setGenderStr("男");
			}else{
				list.get(i).setGenderStr("女");
			}
			Classes classes = classesService.select(list.get(i).getClassId());
			list.get(i).setClassName(classes.getClassName());
		}
		int total = 0;
		if(list.size()==0 || list==null){
			
		}else{
			total = list.get(0).getTotal();
		}

		StudentVO stuvo = new StudentVO();
		stuvo.setRows(list);
		stuvo.setTotal(total);
		stuvo.setPage((total  +  params.getPagedSize()  - 1) / params.getPagedSize());
		return stuvo;

	}
	
	@RequestMapping("/majorOnChange")
	@ResponseBody
	public Object majorOnChange(HttpServletRequest request){
		String majorId = request.getParameter("majorId");
		List<Classes> classesList = null;
		List<Major> majorList = null;
		ModelAndView mv = new ModelAndView();
		if(majorId == null){
			majorList = (List<Major>) majorService.selectList(new Major());
			classesList = claseesService.selectListByMajorId(majorList.get(0).getId());
			Map map = new HashMap();
			map.put("classesList",classesList);
			return map;
		}else{	
			classesList = claseesService.selectListByMajorId(Integer.parseInt(majorId));
			Map map = new HashMap();
			map.put("classesList",classesList);
			return map;
		}
	}
	
	@RequestMapping("/add")
	@ResponseBody
	public Object add(HttpServletRequest request){
		String academyId = request.getParameter("academyId");
		List<Classes> classesList = null;
		List<Major> majorList = null;
		List<Academy> academyList = null;
		ModelAndView mv = new ModelAndView();
		if(academyId == null){
			academyList = (List<Academy>) academyService.selectList(new Academy());
			majorList = majorService.selectMajorByAcademy(academyList.get(0).getId());
			classesList = claseesService.selectListByMajorId(majorList.get(0).getId());
			mv.setViewName("forward:/WEB-INF/jsp/appendStuInfo.jsp");
			mv.addObject("academyList",academyList);
			mv.addObject("majorList",majorList);
			mv.addObject("classesList",classesList);
			return mv;
		}else{
			majorList = majorService.selectMajorByAcademy(Integer.parseInt(academyId));
			if(majorList.size()>0 && majorList != null){
				classesList = claseesService.selectListByMajorId(majorList.get(0).getId());
			}
			Map map = new HashMap();
			map.put("majorList",majorList);
			map.put("classesList",classesList);
			return map;
		}
	}
	
	@RequestMapping("/add2")
	@ResponseBody
	public List<Classes> add2(HttpServletRequest request){
		List<Classes> classesList = (List<Classes>) classesService.selectList(new Classes());
	    return classesList;
	}

	@RequestMapping("/insert")
	@ResponseBody
	public Map insert(HttpServletResponse response,HttpServletRequest request,Student student) throws Exception{//,RedirectAttributes attr
		response.setHeader("Access-Control-Allow-Origin", "*");
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String studentNo = request.getParameter("studentNo");
		String studentName = request.getParameter("studentName");
		String grade = request.getParameter("grade");
		String classId = request.getParameter("classId");
		String gender = request.getParameter("gender");
		String enterDate = request.getParameter("enterDate");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String idcard = request.getParameter("idcard");
		String is_exist = null;
		int id = 0;
		Student stu = studentService.selectStudentByNo(studentNo);
		if(stu==null){
			student = new Student();
			student.setStudentNo(studentNo);
			student.setPassword(studentNo);
			student.setStudentName(studentName);
			student.setGrade(grade);
			student.setClassId(Integer.parseInt(classId));
			student.setGender(Integer.parseInt(gender));
			student.setEnterDate(sdf.parse(enterDate));
			student.setPhone(phone);
			student.setEmail(email);
			student.setIdcard(idcard);
			int i=studentService.insert(student);
			id = student.getId();
			// 融云token---接口
			PushAPI apiPush=new PushAPI();
			String tokenStr=apiPush.getTokenByUserid(id+"", studentName, "");
			TokenReslut userGetTokenResult=(TokenReslut) GsonUtil.fromJson(tokenStr, TokenReslut.class);
			String tokens = userGetTokenResult.getToken();
			Student s = new Student();
			s.setId(id);
			s.setToken(tokens);
			int k = studentService.updateExam(s);
			if(k==1){
				is_exist = "0";//插入成功
			}
		}else{
			is_exist = "1";//账户已存在
		}

		Map map = new HashMap();
		map.put("isExist", is_exist);
		return map;
	}
	
	@RequestMapping("/insertmore")
	public String insertmore(HttpServletResponse response,HttpServletRequest request,MultipartFile file_path) throws Exception{
		response.setHeader("Access-Control-Allow-Origin", "*");
		long flag = 0;
		if (file_path != null && file_path.getOriginalFilename() != null && file_path.getOriginalFilename().length() > 0) {
			InputStream is = file_path.getInputStream();
			 ReadExcel r = new ReadExcel();
				List<Student> list = new ArrayList<Student>();
				if (WDWUtil.isExcel2007(file_path.getOriginalFilename())) {
					list = r.readXls(is);//2007版
					System.out.println("2007");
				}else{
					list = r.readXls2(is);//2003版
					System.out.println("2003");
				}
				System.out.println(list);
				flag = studentService.addStudentList(list);
		}
		return "redirect:/student/list.action"; 
	}
	
	@RequestMapping(value="/update")
	@ResponseBody
	public int update(HttpServletResponse response,HttpServletRequest request) throws Exception{
		if(student==null){
			student = new Student();
		}
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		response.setHeader("Access-Control-Allow-Origin", "*");
		String id = request.getParameter("id");
		String studentNo = request.getParameter("studentNo");
		String studentName = request.getParameter("studentName");
		String gender = request.getParameter("gender");
		String grade = request.getParameter("grade");
		String classId = request.getParameter("classId");
		String enterDate = request.getParameter("enterDate");
		//String phone = request.getParameter("phone");
		//String qq = request.getParameter("qq");
		//String email = request.getParameter("email");
		//String address = request.getParameter("address");
		//String idcard = request.getParameter("idcard");
		//String familyPhone = request.getParameter("familyPhone");
		//String middleSchool = request.getParameter("middleSchool");
		//String political = request.getParameter("political");
		student = studentService.select(Integer.parseInt(id));
		student.setStudentNo(studentNo);
		student.setStudentName(studentName);
		student.setGender(Integer.parseInt(gender));
		student.setGrade(grade);
		student.setClassId(Integer.parseInt(classId));
		student.setEnterDate(sdf.parse(enterDate));
		int i = studentService.update(student);
		return i;
	}
	
	@RequestMapping("/deleteList")
	@ResponseBody
	public int deleteList(HttpServletResponse response, String[] stuIds){
		response.setHeader("Access-Control-Allow-Origin", "*");
		int i=0;
		try {
			i=studentService.deleteList(stuIds);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	
	
	/**
	 * 学生角色
	 */
	//个人信息
	@RequestMapping("/studentInfor")
	public String studentInfor(HttpServletRequest request){
		return "forward:/WEB-INF/jsp/student/profile.jsp";
	}
	
	//修改个人信息
	@RequestMapping("/studentEdit")
	public String studentEdit(HttpServletRequest request){
		return "forward:/WEB-INF/jsp/student/compile.jsp";
	}
	
	@RequestMapping(value="/updateStudent")
	public String updateStudent(HttpServletResponse response,HttpServletRequest request) throws Exception{
		if(student==null){
			student = new Student();
		}
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM");
		response.setHeader("Access-Control-Allow-Origin", "*");
		String id = request.getParameter("id");
		String studentName = request.getParameter("studentName");
		String gender = request.getParameter("gender");
		String natives = request.getParameter("natives");
		String national = request.getParameter("national");
		String birthday = request.getParameter("birthday");
		String phone = request.getParameter("phone");
		String qq = request.getParameter("qq");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String idcard = request.getParameter("idcard");
		String familyPhone = request.getParameter("familyPhone");
		String middleSchool = request.getParameter("middleSchool");
		String political = request.getParameter("political");
		student = studentService.select(Integer.parseInt(id));
		student.setStudentName(studentName);
		student.setGender(Integer.parseInt(gender));
		student.setNatives(natives);
		student.setNational(national);
		if(!birthday.equals("")){
			student.setBirthday(sdf.parse(birthday));
		}
		student.setPhone(phone);
		student.setIdcard(idcard);
		student.setQq(qq);
		student.setEmail(email);
		student.setAddress(address);
		student.setFamilyPhone(familyPhone);
		student.setMiddleSchool(middleSchool);
		student.setPolitical(political);
		//int i = studentService.update(student);
		studentService.updateExam(student);
		request.getSession().setAttribute("loginUser", student);
		return "redirect:/student/studentInfor.action";
	}
	
	//个人成绩
	@RequestMapping("/studentScore")
	public String studentScore(HttpServletRequest request){
		return "forward:/WEB-INF/jsp/student/personalscore.jsp";
	}
	
	/**
	 * 教师角色
	 */
	@RequestMapping("/getStudent")
	@ResponseBody 
	public void getStudent(HttpServletRequest request,HttpServletResponse reponse) throws Exception{
		reponse.setCharacterEncoding("utf-8");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Teacher teacher = (Teacher) request.getSession().getAttribute("loginUser");
		List<Student> list = studentService.selectStudentByTeacherId(teacher.getId());
		for (int i = 0; i < list.size(); i++) {
			list.get(i).setEnterTime(sdf.format(list.get(i).getEnterDate()));
			if(list.get(i).getGender()==0){
				list.get(i).setGenderStr("男");
			}else{
				list.get(i).setGenderStr("女");
			}
			Classes classes = classesService.select(list.get(i).getClassId());
			list.get(i).setClassName(classes.getClassName());
		}
		
		
		JSONArray jsonArray = new JSONArray().fromObject(list);
		System.out.println(list.toString());
		PrintWriter writer = reponse.getWriter();
		writer.print(jsonArray);
	}
	
}
