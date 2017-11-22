package cn.guet.mooc.dao;

import java.io.Serializable;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import cn.guet.mooc.entity.TecInfo;


@Repository // 用于将数据访问层 (DAO 层 ) 的类标识为 Spring Bean
public class TeacherDAO {
	@Resource
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	/**
	 * 根据用户名查询
	 * 
	 * @param id
	 * @return
	 */
	public TecInfo getTecInfoById(String id) {
		return (TecInfo) this.getSession().createQuery("from TecInfo where id=?").setParameter(0, id).uniqueResult();
	}
	
	public Serializable save(TecInfo o) {
		if (o != null) {
			return sessionFactory.getCurrentSession().save(o);
		}
		return null;
	}
	
}
