package cn.it.action;

import java.io.PrintWriter;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.it.entity.User;
import cn.it.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserAction extends BaseAction {
	
	@Resource
	private UserService userService;
	
	@RequestMapping("/list")
	public String list(){
		//return "forward:/WEB-INF/jsp/user.jsp";
		return null;
	}
	
	@RequestMapping("/get")
	@ResponseBody 
	public void get(HttpServletResponse response) throws Exception{
		response.setCharacterEncoding("utf-8");
		User user = new User();
		Object list = userService.selectList(user);
		JSONArray jsonArray = new JSONArray().fromObject(list);
		System.out.println(list.toString());
		PrintWriter writer = response.getWriter();
		writer.print(jsonArray);
	}

	@RequestMapping("/add")
	public String add(){
		return "forward:/WEB-INF/jsp/appendUser.jsp";
	}

	@RequestMapping("/insert")
	public String insert(HttpServletResponse response,HttpServletRequest request,User user) throws Exception{
		String name = request.getParameter("userName");
		System.out.println(name);
		response.setHeader("Access-Control-Allow-Origin", "*");
		int i=userService.insert(user);
		return "redirect:/user/list.action";
	}
	
	@RequestMapping(value="/update")
	@ResponseBody
	public int update(HttpServletResponse response,HttpServletRequest request,User user) throws Exception{
		response.setHeader("Access-Control-Allow-Origin", "*");
		String id = request.getParameter("id");
		String userName = request.getParameter("userName");
		user.setId(Integer.parseInt(id));
		System.out.println("---action.user:"+user);
		int i = userService.update(user);
		return i;
	}
	
	@RequestMapping("/deleteList")
	@ResponseBody
	public int deleteList(HttpServletResponse response, String[] stuIds){
		response.setHeader("Access-Control-Allow-Origin", "*");
		int i=0;
		try {
			i=userService.deleteList(stuIds);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

}
