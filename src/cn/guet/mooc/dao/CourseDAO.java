package cn.guet.mooc.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import cn.guet.mooc.entity.CourseEntity;

import javax.annotation.Resource;

import java.util.List;

/**
 * Created by wdn
 */
@Repository // 用于将数据访问层 (DAO 层 ) 的类标识为 Spring Bean
public class CourseDAO
{
    @Resource
    private SessionFactory sessionFactory;

    private Session getSession()
    {
        return sessionFactory.getCurrentSession();
    }

    public Long count(String hql)
    {
        // Query q = getCurrentSession().createQuery(hql).;
        // return (Long) q.uniqueResult();
        return (Long) sessionFactory.getCurrentSession().createQuery(hql).list().get(0);
    }

    public List<CourseEntity> find(String hql, int page, int rows)
    {
        Query q = sessionFactory.getCurrentSession().createQuery(hql);
        return q.setFirstResult((page - 1) * rows).setMaxResults(rows).list();
    }

    public CourseEntity findOne(long id)
    {
        return (CourseEntity) sessionFactory.getCurrentSession().get(CourseEntity.class, id);
    }

}
