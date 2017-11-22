package cn.guet.mooc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.guet.mooc.dao.CourseDAO;
import cn.guet.mooc.entity.CourseEntity;

import java.util.List;

/**
 * Created by wdn
 */
@Transactional
@Service // 用于标注业务层组件
public class CourseService
{
    @Autowired // 使用@Autowired进行自动装配，而不需要get/set方法
    public CourseDAO courseDAO;

    public Long count(String hql)
    {
        return courseDAO.count(hql);
    }

    public List<CourseEntity> find(String hql, int page, int rows)
    {
        return courseDAO.find(hql, page, rows);
    }

    public CourseEntity findOne(long id)
    {
        return courseDAO.findOne(id);
    }

}
