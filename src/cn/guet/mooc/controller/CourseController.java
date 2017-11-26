package cn.guet.mooc.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.guet.mooc.entity.CourseEntity;
import cn.guet.mooc.service.CourseService;

import javax.servlet.ServletContext;

import java.util.List;

/**
 * Created by wdn
 */
@Controller
@RequestMapping(value = "/course")
public class CourseController extends BaseController
{
    @Autowired
    ServletContext context;
    @Autowired // 使用@Autowired进行自动装配，而不需要get/set方法
    public CourseService courseService;
    @Autowired
    private SessionFactory sessionFactory;

    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String listUsers(ModelMap map)
    {
        Session ses = sessionFactory.getCurrentSession();
        List<CourseEntity> list = ses.createCriteria(CourseEntity.class).addOrder(Order.desc("id")).list();
        map.addAttribute("course", list);
        System.out.println(list.toString());
        ses.close();

        return "index";
    }

}
