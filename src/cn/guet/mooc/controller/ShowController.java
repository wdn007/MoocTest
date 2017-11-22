package cn.guet.mooc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.guet.mooc.entity.CourseEntity;
import cn.guet.mooc.service.CourseService;


@Controller // 使用该注解标志它是一个控制器
@RequestMapping(value = "/Show") // 用来处理请求地址映射，value指请求的实际地址
public class ShowController extends BaseController {
	@Autowired // 使用@Autowired进行自动装配，而不需要get/set方法
    public CourseService courseService;

	@RequestMapping(value = "/indexShow.do")
	public String showCourseList(HttpServletRequest request, HttpServletResponse response) {
        String curPage = request.getParameter("currentPage"); // 当前页码
        int currentPage = 1;

        String hql = "from CourseEntity as a order by a.createDate desc";

        if (curPage != null && !"".equals(curPage)) {
            currentPage = Integer.parseInt(curPage);
        }

        int recordCount = courseService.count("select count(*) " + hql).intValue();
        int pageCount = (int) Math.ceil((float) recordCount / pageSize);

        List<CourseEntity> CourseInfoList = (List<CourseEntity>) courseService.find(hql, currentPage, pageSize);
        request.setAttribute("CourseInfoList", CourseInfoList);
        request.setAttribute("recordCount", recordCount);
        request.setAttribute("pageCount", pageCount);
        request.setAttribute("currentPage", currentPage);

        return "index";
    }
	

}
