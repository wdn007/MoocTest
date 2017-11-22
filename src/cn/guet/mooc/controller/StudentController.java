package cn.guet.mooc.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.guet.mooc.entity.StuInfo;
import cn.guet.mooc.entity.TecInfo;
import cn.guet.mooc.service.StudentService;
import cn.guet.mooc.service.TecService;



//@SessionAttributes({ "id", "identity" })
@Controller // 使用该注解标志它是一个控制器
@RequestMapping(value = "/Student") // 用来处理请求地址映射，value指请求的实际地址
public class StudentController extends BaseController {

	@Autowired // 使用@Autowired进行自动装配，而不需要get/set方法
	public StudentService studentService;
	@Autowired
	public TecService teacherService;

	/**
	 * 登录请求
	 * 
	 * @param id
	 * @param password
	 * @return
	 */
	@RequestMapping("/login") // @RequestMapping用于类上，表示类中的所有响应请求的方法都是以该地址作为父路径
	public String dologin(String identity, String id, String password, HttpSession httpSession,
			final RedirectAttributes redirectAttributes,HttpServletRequest request, HttpServletResponse response)  throws Exception {
		StuInfo student = new StuInfo();
		TecInfo teacher = new TecInfo();
		if (identity.equals("1")) {
			if ("admin".equals(id) && "admin".equals(password)) {
				httpSession.setAttribute("id", "admin");
				httpSession.setAttribute("username", "系统管理员");
				return "redirect:/View/admin.jsp";
			} else {
				student = studentService.getStuInfoById(id);
				if (student != null) {
					if(student.getIsEnabled().equals("1")){
						if (student.getPassword().equals(password)) {
							httpSession.setAttribute("id", student.getId());
							httpSession.setAttribute("username", student.getUsername());
							response.getWriter().write("<script>alert('密码匹配成功！');");
							System.out.println("密码匹配成功！");
							return "redirect:/";
						} else {
							System.out.println("密码匹配不成功！");
							response.getWriter().write("<script>alert('密码错误！');");
						}
					}else {
						System.out.println("账号已被禁用，请联系系统管理员！");
						response.getWriter().write("<script>alert('账号已被禁用，请联系系统管理员！');");
					}
				}else{
					System.out.println("用户名不存在或登录身份不正确！");
					response.getWriter().write("<script>alert('用户名未注册或登录身份不正确！');");
				}	
			}
		} else if (identity.equals("2")) {
			if ("admin".equals(id) && "admin".equals(password)) {
				httpSession.setAttribute("id", "admin");
				httpSession.setAttribute("username", "系统管理员");
				return "redirect:/View/admin.jsp";
			} else {
				teacher = teacherService.getTecInfoById(id);
				if (teacher != null) {
					//System.out.println(teacher.getStatus());
					if(teacher.getIsEnabled().equals("1")){
						if (teacher.getPassword().equals(password)) {
							httpSession.setAttribute("id", teacher.getId());
							httpSession.setAttribute("username", teacher.getUsername());
							System.out.println("密码匹配成功！");
							response.getWriter().write("<script>alert('密码匹配成功！');");
							return "redirect:/";
						} else {
							System.out.println("密码匹配不成功！");
							response.getWriter().write("<script>alert('密码错误！');");
						}
					} else {
					System.out.println("账号已被禁用，请联系系统管理员！");
					response.getWriter().write("<script>alert('账号已被禁用，请联系系统管理员！');");
				}
			}else{
				System.out.println("用户名不存在或登录身份不正确！");
				response.getWriter().write("<script>alert('用户名不存在或登录身份不正确！');");
			}
		}
	  }
		return "redirect:/";
	}

	@RequestMapping("/logout") // @RequestMapping用于类上，表示类中的所有响应请求的方法都是以该地址作为父路径
	public String dologout(HttpSession httpSession) {
		httpSession.removeAttribute("id");
		httpSession.removeAttribute("username");
		return "redirect:/";
	}

	/**
	 * 注册请求
	 * 
	 */
	@RequestMapping("/register") // @RequestMapping用于类上，表示类中的所有响应请求的方法都是以该地址作为父路径
	public String doregister(StuInfo student, HttpSession httpSession, Map<String, Object> map) {
		if (student != null) {
			StuInfo users = new StuInfo();
			users = studentService.getStuInfoById(student.getId());
			if (users == null) {
				student.setIsEnabled(new Integer(1));
				studentService.addStuInfo(student);
				System.out.println("注册成功！");
			} else {
				System.out.println("用户名已存在！");
				return "redirect:/View/register.jsp";
			}
			return "redirect:/View/index.jsp";
		} else {
			return "redirect:/View/register.jsp";
		}
	}


}
