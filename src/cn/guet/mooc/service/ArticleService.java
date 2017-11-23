package cn.guet.mooc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.guet.mooc.dao.ArticleDAO;
import cn.guet.mooc.entity.ArticleEntity;


import java.util.List;

/**
 * Created by wdn
 */
@Transactional
@Service // 用于标注业务层组件
public class ArticleService
{
    @Autowired // 使用@Autowired进行自动装配，而不需要get/set方法
    public ArticleDAO articleDAO;

    public Long count(String hql) {
        return articleDAO.count(hql);
    }
    public List<ArticleEntity> find(String hql, int page, int rows) {
        return articleDAO.find(hql, page, rows);
    }

}
