package cn.it.action;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.it.entity.Student;
import cn.it.entity.Teacher;
import cn.it.entity.User;
import cn.it.service.StudentService;
import cn.it.service.TeacherService;
import cn.it.service.UserService;

/**
 * 
 * modify by yezhiqiang
 * 
 * @Description:登录
 * 
 * @time:2017年1月11日 上午9:21:47
 *
 */
@Controller
@RequestMapping(value = "/login")
public class LoginAction extends BaseAction {

	@Resource
	private UserService userService;
	@Resource
	private StudentService studentService;
	@Resource
	private TeacherService teacherService;

	@RequestMapping(value = "/login")
	public String login(HttpServletRequest request, HttpSession session) {
		// 接收页面传来的登录参数：登录账号、登录密码、登录权限
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String role = request.getParameter("role");
		// 学生登录判断
		if ("student".equals(role)) {
			Student student = new Student();
			student.setStudentNo(name);
			student.setPassword(pwd);
			Student user = studentService.selectStudent(student);
			if (user != null) {
				session.setAttribute("loginUser", user);
				System.out.println("------登录成功------");
				return "forward:/WEB-INF/jsp/student/profile.jsp";
			} else {
				request.setAttribute("errMsg", "密码或用户名错误！");
				System.out.println("------登录失败------");
				return "forward:/login.jsp";
			}
		} else if ("teacher".equals(role)) {// 教师登录判断
			Teacher teacher = new Teacher();
			teacher.setTeacheNo(name);
			teacher.setPassword(pwd);
			Teacher user = teacherService.selectTeacher(teacher);
			if (user != null) {
				session.setAttribute("loginUser", user);
				System.out.println("------登录成功------");
				return "forward:/WEB-INF/jsp/teacher/teacherProfile.jsp";
			} else {
				request.setAttribute("errMsg", "密码或用户名错误！");
				System.out.println("------登录失败------");
				return "forward:/login.jsp";
			}
		} else if ("manager".equals(role)) {// 管理员登录判断
			User paramUser = new User();
			paramUser.setAccount(name);
			paramUser.setPassword(pwd);
			User user = userService.selectUser(paramUser);
			if (user != null) {
				session.setAttribute("loginUser", user);
				System.out.println("------登录成功------");
				return "forward:/WEB-INF/jsp/index.jsp";
			} else {
				request.setAttribute("errMsg", "密码或用户名错误！");
				System.out.println("------登录失败------");
				return "forward:/login.jsp";
			}
		} else {
			System.out.println("请选择登录角色");
			request.setAttribute("errMsg", "请选择登录角色！");
			return "forward:/login.jsp";
		}
	}

	@RequestMapping(value = "/applogin")
	@ResponseBody
	public Map applogin(HttpServletRequest request, HttpSession session) {
		// 接收页面传来的登录参数：登录账号、登录密码、登录权限
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String role = request.getParameter("role");
		Map map = new HashMap();
		// 学生登录判断
		if ("student".equals(role)) {
			Student student = new Student();
			student.setStudentNo(name);
			student.setPassword(pwd);
			Student user = studentService.selectStudent(student);
			if (user != null) {
				session.setAttribute("loginUser", user);
				System.out.println("------登录成功------");
				map.put("success", 1);
				map.put("student", user);
				return map;
			} else {
				request.setAttribute("errMsg", "密码或用户名错误！");
				System.out.println("------登录失败------");
				map = new HashMap();
				map.put("success", 0);
				return map;
			}
		}
		return map;
	}

	@RequestMapping(value = "/loginOut")
	public String loginOut(HttpServletRequest request, HttpSession session) {
		session.setAttribute("loginUser", null);
		return "forward:/login.jsp";
	}

	@RequestMapping(value = "/index")
	public String index() {
		return "forward:/WEB-INF/jsp/index.jsp";
	}

	@RequestMapping(value = "/student")
	public String studnet() {
		return "forward:/WEB-INF/jsp/student/profile.jsp";
	}

	@RequestMapping(value = "/teacher")
	public String teacher() {
		return "forward:/WEB-INF/jsp/teacher/teacherProfile.jsp";
	}

	@RequestMapping(value = "/forgetpwd")
	public String forgetpwd() {
		return "forward:/WEB-INF/jsp/forgetPwd.jsp";
	}

	@RequestMapping(value = "/setpwd")
	public ModelAndView setpwd(HttpServletRequest request) {// ,@RequestParam
															// String type
		String type = request.getParameter("type");
		String id = request.getParameter("id");
		ModelAndView mv = new ModelAndView();
		mv.addObject("type", type);
		mv.addObject("id", id);
		mv.setViewName("/WEB-INF/jsp/setPwd.jsp");
		return mv;
	}

	@RequestMapping(value = "/findPwd")
	@ResponseBody
	public Map findPwd(HttpServletRequest request) {
		String type = request.getParameter("type");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String idcard = request.getParameter("idcard");
		String phone = request.getParameter("phone");

		// System.out.println(type+"*"+id+"*"+name+"*"+idcard+"*"+phone);
		String flag = null;

		// 学生
		if (type.equals("1")) {
			Student stu = studentService.selectStudentByNo(id);
			if (stu != null) {
				String stuname = stu.getStudentName();
				String stuidcard = stu.getIdcard();
				String stuphone = stu.getPhone();
				if (stuname.equals(name) && stuidcard.equals(idcard) && stuphone.equals(phone)) {
					flag = "1";
				} else {
					flag = "0";
				}
			}
		} else {// 教师
			Teacher tea = teacherService.selectTeacherByNo(id);
			if (tea != null) {
				String teaname = tea.getTeacherName();
				String teaidcard = tea.getIdcard();
				String teaphone = tea.getPhone();
				if (teaname.equals(name) && teaidcard.equals(idcard) && teaphone.equals(phone)) {
					flag = "1";
				} else {
					flag = "0";
				}
			}
		}
		Map map = new HashMap();
		map.put("type", type);
		map.put("flag", flag);
		return map;
	}

	@RequestMapping(value = "/setnewpwd")
	@ResponseBody
	public Map setPwd(HttpServletRequest request) {
		String pwd = request.getParameter("pwd");
		String type = request.getParameter("type");
		String id = request.getParameter("id");
		String message = "";
		if (type.equals("1")) {
			Student stu = studentService.selectStudentByNo(id);
			if ((stu.getPassword()).equals(pwd)) {
				message = "新密码与原密码不能相同";
			} else {
				Student s = new Student();
				s.setPassword(pwd);
				s.setId(stu.getId());
				int i = studentService.updateExam(s);
				if (i == 1) {
					message = "密码重设成功";
				} else {
					message = "密码重设失败";
				}
			}
		} else {
			Teacher tea = teacherService.selectTeacherByNo(id);
			if ((tea.getPassword().equals(pwd))) {
				message = "新密码与原密码不能相同";
			} else {
				Teacher t = new Teacher();
				t.setPassword(pwd);
				t.setId(tea.getId());
				int j = teacherService.updateExam(t);
				if (j == 1) {
					message = "密码重设成功";
				} else {
					message = "密码重设失败";
				}
			}
		}
		Map map = new HashMap();
		map.put("message", message);
		return map;
	}
}
