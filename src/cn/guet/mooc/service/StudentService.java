package cn.guet.mooc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.guet.mooc.dao.StudentDAO;
import cn.guet.mooc.entity.StuInfo;




@Transactional
@Service  //用于标注业务层组件
public class StudentService {
	@Autowired //使用@Autowired进行自动装配，而不需要get/set方法
	public StudentDAO studentDAO;
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public StuInfo getStuInfoById(String id){
		return studentDAO.getStuInfoById(id);
	}
	
	/**
	 * 添加
	 * @param user
	 */
	public void addStuInfo(StuInfo user) {
		studentDAO.addStuInfo(user);
	}
	
}
