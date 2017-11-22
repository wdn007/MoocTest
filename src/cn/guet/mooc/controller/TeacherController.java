package cn.guet.mooc.controller;

import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.guet.mooc.entity.TecInfo;
import cn.guet.mooc.service.TecService;


//@SessionAttributes({ "id", "identity" })
@Controller // 使用该注解标志它是一个控制器
@RequestMapping(value = "/Teacher") // 用来处理请求地址映射，value指请求的实际地址
public class TeacherController extends BaseController {
	@Autowired // 使用@Autowired进行自动装配，而不需要get/set方法
	public TecService tecService;

	@RequestMapping("/list")
	public ModelAndView goList() {
		return new ModelAndView("user/list");
	}

	@RequestMapping("/register") // @RequestMapping用于类上，表示类中的所有响应请求的方法都是以该地址作为父路径
	public String doregister(TecInfo teacher, HttpSession httpSession, Map<String, Object> map, HttpServletResponse response) throws Exception {
		if (teacher != null) {
			TecInfo users = new TecInfo();
			users = tecService.getTecInfoById(teacher.getId());
			if (users == null) {
				teacher.setIsEnabled(new Integer(1));
				tecService.save(teacher);
				System.out.println("注册成功！");
				response.getWriter().write("<script>alert('注册成功！');");
			} else {
				System.out.println("工号已存在！");
				response.getWriter().write("<script>alert('用户名已注册！');");
				return "redirect:/View/register.jsp";
			}
			return "redirect:/";
		} else {
			return "redirect:/View/register.jsp";
		}
	}
}
