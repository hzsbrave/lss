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
import org.springframework.web.bind.annotation.ResponseBody;

import cn.it.entity.Academy;
import cn.it.entity.Major;
import cn.it.entity.Params;
import cn.it.entity.Student;
import cn.it.entity.vo.AcademyVO;
import cn.it.entity.vo.StudentVO;
import cn.it.service.AcademyService;
import cn.it.service.MajorService;
/**
 * 
 * modify by yezhiqiang
 * 
 * @Description:学院
 * 
 * @time:2017年1月11日 下午5:01:15
 *
 */
@Controller
@RequestMapping(value="/academy")
public class AcademyAction extends BaseAction {
	
	@Resource
	private AcademyService academyService;
	
	@Resource
	private MajorService majorService;
	
	@RequestMapping("/list")
	public String list(){
		return "forward:/WEB-INF/jsp/academy.jsp";
	}
	
	@RequestMapping("/get")
	@ResponseBody 
	public AcademyVO get(HttpServletResponse response,@RequestBody Params params) throws Exception{
		response.setCharacterEncoding("utf-8");
		Academy academy = new Academy();
		academy.setPagedIndex((params.getPagedIndex()-1)*params.getPagedSize());
		academy.setPagedSize(params.getPagedSize());
		List<Academy> list = academyService.selectListPage(academy);
		int total = list.get(0).getTotal();
		AcademyVO acavo = new AcademyVO();
		acavo.setRows(list);
		acavo.setTotal(total);
		acavo.setPage((total  +  params.getPagedSize()  - 1) / params.getPagedSize());
		return acavo;
	}

	@RequestMapping("/add")
	public String add(){
		return "forward:/WEB-INF/jsp/appendAcademy.jsp";
	}

	@RequestMapping("/insert")
	@ResponseBody
	public Map insert(HttpServletResponse response,HttpServletRequest request,Academy academy) throws Exception{
		String name = request.getParameter("academyName");
		response.setHeader("Access-Control-Allow-Origin", "*");
		String is_exist;
		Academy aca = academyService.selectByName(name);
		if(aca==null){
			academy.setAcademyName(name);
			academy.setCreateDate(new Date());
			int i=academyService.insert(academy);
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
	public int update(HttpServletResponse response,HttpServletRequest request,Academy academy) throws Exception{
		response.setHeader("Access-Control-Allow-Origin", "*");
		String id = request.getParameter("id");
		String academyName = request.getParameter("academyName");
		academy.setId(Integer.parseInt(id));
		academy.setAcademyName(academyName);
		System.out.println("---action.academy:"+academy);
		int i = academyService.update(academy);
		return i;
	}
	
	@RequestMapping("/deleteList")
	@ResponseBody
	public int deleteList(HttpServletResponse response, String[] stuIds){
		response.setHeader("Access-Control-Allow-Origin", "*");
		String[] array = new String[stuIds.length];
		int k = 0;
		for(int j=0;j<stuIds.length;j++){
			List<Major> list = majorService.selectMajorByAcademy(Integer.parseInt(stuIds[j]));
			if(list==null||list.size()==0){
				array[k] = stuIds[j];
				k++;
			}
		}
		int i=0;
		try {
			i=academyService.deleteList(array);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	

}
