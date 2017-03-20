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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.it.entity.Academy;
import cn.it.entity.Classes;
import cn.it.entity.Course;
import cn.it.entity.Major;
import cn.it.entity.Params;
import cn.it.entity.vo.MajorVO;
import cn.it.entity.vo.StudentVO;
import cn.it.service.AcademyService;
import cn.it.service.ClassesService;
import cn.it.service.CourseService;
import cn.it.service.MajorService;
/**
 * 
 * modify by yezhiqiang
 * 
 * @Description:专业
 * 
 * @time:2017年1月11日 下午4:58:49
 *
 */
@Controller
@RequestMapping(value="/major")
public class MajorAction extends BaseAction {
	
	@Resource
	private MajorService majorService;
	@Resource
	private AcademyService academyService;
	@Resource
	private ClassesService classesService;
	@Resource
	private CourseService courseService;
	
	@RequestMapping("/list")
	public String list(HttpServletRequest request){
		List<Academy> academyList = (List<Academy>) academyService.selectList(new Academy());
		request.setAttribute("academyList", academyList);
		return "forward:/WEB-INF/jsp/major.jsp";
	}
	
	@RequestMapping("/get")
	@ResponseBody 
	public MajorVO get(HttpServletResponse response,@RequestBody Params params) throws Exception{
		response.setCharacterEncoding("utf-8");
		Major major = new Major();
		major.setPagedIndex((params.getPagedIndex()-1)*params.getPagedSize());
		major.setPagedSize(params.getPagedSize());
		List<Major> list = (List<Major>) majorService.selectListPage(major);
		for (int i = 0; i < list.size(); i++) {
			Academy academy = academyService.select(list.get(i).getAcademyId());
			list.get(i).setAcademyName(academy.getAcademyName());
		}
		int total = list.get(0).getTotal();
		MajorVO majvo = new MajorVO();
		majvo.setRows(list);
		majvo.setTotal(total);
		majvo.setPage((total  +  params.getPagedSize()  - 1) / params.getPagedSize());
		return majvo;
	}

	@RequestMapping("/add")
	public String add(HttpServletRequest request){
		List<Academy> academyList = (List<Academy>) academyService.selectList(new Academy());
		request.setAttribute("academyList", academyList);
		return "forward:/WEB-INF/jsp/appendMajor.jsp";
	}
	
	@RequestMapping("/add2")
	@ResponseBody
	public List<Academy> add2(HttpServletRequest request){
		List<Academy> academyList = (List<Academy>) academyService.selectList(new Academy());
		return academyList;
	}

	@RequestMapping("/insert")
	@ResponseBody
	public String insert(HttpServletResponse response,HttpServletRequest request,Major major) throws Exception{
	//	response.setHeader("Access-Control-Allow-Origin", "*");
	//	response.setContentType("json");
		String majorName = request.getParameter("majorName");
		String academyId = request.getParameter("academyId");
		String system = request.getParameter("system");
		String is_exist = "1";
		String str = "";
		Major ma = new Major();
		ma = majorService.selectMajor(majorName);
		if(ma == null){
			major.setMajorName(majorName);
			major.setAcademyId(Integer.parseInt(academyId));
			major.setSystem(Byte.parseByte(system));
			major.setCreateDate(new Date());
			int i=majorService.insert(major);
			is_exist = "0";
			str = "{\"isExist\":\"0\"}";
		}else{
			is_exist = "1";
			str = "{\"isExist\":\"1\"}";
		}
		return str;
	}
	
	@RequestMapping(value="/update")
	@ResponseBody
	public int update(HttpServletResponse response,HttpServletRequest request,Major major) throws Exception{
		response.setHeader("Access-Control-Allow-Origin", "*");
		String id = request.getParameter("id");
		String majorName = request.getParameter("majorName");
		String academyId = request.getParameter("academyId");
		String system = request.getParameter("system");
		major.setId(Integer.parseInt(id));
		major.setMajorName(majorName);
		major.setAcademyId(Integer.parseInt(academyId));
		major.setSystem(Byte.parseByte(system));
		System.out.println("---action.major:"+major);
		int i = majorService.update(major);
		return i;
	}
	
	@RequestMapping("/deleteList")
	@ResponseBody
	public int deleteList(HttpServletResponse response, String[] stuIds){
		response.setHeader("Access-Control-Allow-Origin", "*");
		return majorService.deleteMyList(stuIds);
	}
	

}
