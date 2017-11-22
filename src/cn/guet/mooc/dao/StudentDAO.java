package cn.guet.mooc.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import cn.guet.mooc.entity.StuInfo;



@Repository // 用于将数据访问层 (DAO 层 ) 的类标识为 Spring Bean
public class StudentDAO {
	@Resource
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	/**
	 * 根据用户名查询
	 * 
	 * @param studentID
	 * @return
	 */
	public StuInfo getStuInfoById(String id) {
		return (StuInfo) this.getSession().createQuery("from StuInfo where id=?").setParameter(0, id).uniqueResult();
	}
	
	/**
	 * 添加
	 * 
	 * @param user
	 */
	public void addStuInfo(StuInfo o) {
		this.getSession().save(o);
		// this.getSession().beginTransaction().commit();
	}
	
}
