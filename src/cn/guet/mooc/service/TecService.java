package cn.guet.mooc.service;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.guet.mooc.dao.TeacherDAO;
import cn.guet.mooc.entity.TecInfo;




@Transactional
@Service  //用于标注业务层组件
public class TecService {
	@Autowired //使用@Autowired进行自动装配，而不需要get/set方法
	public TeacherDAO teacherDAO;
	/**
	 * 根据用户名查询
	 * 
	 * @param id
	 * @return
	 */
	public TecInfo getTecInfoById(String id) {
		return teacherDAO.getTecInfoById(id);
	}

	public Serializable save(TecInfo o) {  
		return teacherDAO.save(o);
    } 
	
}
