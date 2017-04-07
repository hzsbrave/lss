package cn.it.action;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.it.entity.*;
import cn.it.service.*;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.it.entity.vo.ClassesVO;
import cn.it.entity.vo.StudentVO;

@Controller
@RequestMapping(value="/class")
public class ClassAction extends BaseAction {
	
	@Resource
	private ClassesService classesService;
	@Resource
	private MajorService majorService;
	@Resource
	private ClassesCourseService classesCourseService;
	@Resource
	private AcademyService academyService;
	@RequestMapping("/list")
	public String list(HttpServletRequest request){
		/*List<Major> majormyList = (List<Major>) majorService.selectList(new Major());
		request.setAttribute("majormyList", majormyList);*/
		List<Academy> academyList =  (List<Academy>)  academyService.selectList(new Academy());
		request.setAttribute("academyList", academyList);
		return "forward:/WEB-INF/jsp/grade.jsp";
	}
	
	@RequestMapping("/get")
	@ResponseBody 
	public ClassesVO get(HttpServletResponse response,HttpServletRequest request,@RequestBody Params params) throws Exception{
		response.setCharacterEncoding("utf-8");
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

		Classes classes = new Classes();
		classes.setPagedIndex((params.getPagedIndex()-1)*params.getPagedSize());
		classes.setPagedSize(params.getPagedSize());
		classes.setAcademyId(academyId);
		classes.setKey(key);
		List<Classes> list = (List<Classes>) classesService.selectListPage(classes);
		for (int i = 0; i < list.size(); i++) {
			Major major = majorService.select(list.get(i).getMajorId());
			list.get(i).setMajorName(major.getMajorName());
		}
		int total = 0;
		if(list.size()==0 || list==null){

		}else{
			total = list.get(0).getTotal();
		}
		ClassesVO clavo = new ClassesVO();
		clavo.setRows(list);
		clavo.setTotal(total);
		clavo.setPage((total  +  params.getPagedSize()  - 1) / params.getPagedSize());
		return clavo;
	}
	
	@RequestMapping("/getClasses")
	@ResponseBody 
	public void getClasses(HttpServletResponse response) throws Exception{
		response.setCharacterEncoding("utf-8");
		Classes classes = new Classes();
		List<Classes> list = (List<Classes>) classesService.selectList(classes);
		Map<String, Object> map2 = new HashMap<String, Object>();
		for (int i = 0; i < list.size(); i++) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("id", list.get(i).getId());
			map.put("text", list.get(i).getClassName());
			String a = ""+i+"";
			map2.put(a, map);
		}
		//JSONArray jsonArray = new JSONArray().fromObject(map2);
		JSONObject jsonObject = JSONObject.fromObject(map2); 
		System.out.println(list.toString());
		PrintWriter writer = response.getWriter();
		writer.print(jsonObject);
	}

	@RequestMapping("/add")
	public String add(HttpServletRequest request){
		List<Major> majorList = (List<Major>) majorService.selectList(new Major());
		request.setAttribute("majorList", majorList);
		return "forward:/WEB-INF/jsp/appendClass.jsp";
	}
	
	@RequestMapping("/add2")
	@ResponseBody
	public List<Major> add2(HttpServletRequest request){
		List<Major> majorList = (List<Major>) majorService.selectList(new Major());
		return majorList;
	}

	@RequestMapping("/insert")
	@ResponseBody
	public Map insert(HttpServletResponse response,HttpServletRequest request,Classes classes) throws Exception{
		String className = request.getParameter("className");
		String grade = request.getParameter("grade");
		String majorId = request.getParameter("majorId");
		String stuCount = request.getParameter("stuCount");
		response.setHeader("Access-Control-Allow-Origin", "*");
		
		String is_exist;
		Classes c = new Classes();
		c.setGrade(grade);
		c.setClassName(className);
		c.setMajorId(Integer.parseInt(majorId));
		Classes cla = classesService.selectClasses(c);
		if(cla==null){
			classes.setClassName(className);
			classes.setGrade(grade);
			classes.setMajorId(Integer.parseInt(majorId));
			classes.setStuCount(Integer.parseInt(stuCount));
			int i=classesService.insert(classes);
			is_exist = "0";
		}else{
			is_exist = "1";
		}
		Map map = new HashMap();
		map.put("isExist", is_exist);
		return map;
	}
	
	@RequestMapping(value="/update")
	@ResponseBody
	public int update(HttpServletResponse response,HttpServletRequest request,Classes classes) throws Exception{
		response.setHeader("Access-Control-Allow-Origin", "*");
		String id = request.getParameter("id");
		String className = request.getParameter("className");
		String grade = request.getParameter("grade");
		String majorId = request.getParameter("majorId");
		String stuCount = request.getParameter("stuCount");
		classes.setId(Integer.parseInt(id));
		classes.setClassName(className);
		classes.setGrade(grade);
		classes.setMajorId(Integer.parseInt(majorId));
		classes.setStuCount(Integer.parseInt(stuCount));
		System.out.println("---action.classes:"+classes);
		int i = classesService.update(classes);
		return i;
	}
	
	@RequestMapping("/deleteList")
	@ResponseBody
	public int deleteList(HttpServletResponse response, String[] stuIds){
		response.setHeader("Access-Control-Allow-Origin", "*");
		String[] array = new String[stuIds.length];
		int k = 0;
		for(int j=0;j<stuIds.length;j++){
			//List<Classes> list = classesService.selectListByMajorId(Integer.parseInt(stuIds[j]));
			ClassesCourse cc = new ClassesCourse();
			cc.setClassesId(Integer.parseInt(stuIds[j]));
			List<ClassesCourse> list = (List<ClassesCourse>) classesCourseService.selectList(cc);
			if(list==null||list.size()==0){
				array[k] = stuIds[j];
				k++;
			}
		}
		int i=0;
		try {
			i=classesService.deleteList(array);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

}
