package cn.guet.mooc.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.guet.mooc.entity.ArticleEntity;
import cn.guet.mooc.service.ArticleService;

@Controller // 使用该注解标志它是一个控制器
@RequestMapping(value = "/article") // 用来处理请求地址映射，value指请求的实际地址
public class ArticleController extends BaseController {
	@Autowired
	ServletContext context;

	@Autowired // 使用@Autowired进行自动装配，而不需要get/set方法
	public ArticleService articleService;
	
	@RequestMapping(value = "/skillArticleShow")
	public String skillArticleShow(HttpServletRequest request, HttpServletResponse response) throws Exception  {
		
		String classification = request.getParameter("classification"); // 文章分类	
		String curPage = request.getParameter("currentPage"); //当前页码
		int currentPage = 1;

		String hql = "from ArticleEntity as a where a.module = '测试技术' and a.status = '1' ";
		if (classification != null && !"".equals(classification) && !"全部".equals(classification)) {
				hql += "and a.classification = '" + classification + "' ";
		}
		
		hql += "order by a.createDate desc";
		
		if (curPage != null && !"".equals(curPage)) {
			currentPage = Integer.parseInt(curPage);
		}

		int recordCount = articleService.count("select count(*) " + hql).intValue();
		int pageCount = (int) Math.ceil((float) recordCount / pageSize);

		List<ArticleEntity> skillArticles = (List<ArticleEntity>) articleService.find(hql, currentPage, pageSize);
		request.setAttribute("skillArticles", skillArticles);
		request.setAttribute("recordCount", recordCount);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("currentPage", currentPage);
		return "skillList";
	}
	
	@RequestMapping(value = "/toolArticleShow")
	public String toolArticleShow(HttpServletRequest request, HttpServletResponse response) {
		
		String classification = request.getParameter("classification"); // 文章分类	
		String curPage = request.getParameter("currentPage"); //当前页码
		int currentPage = 1;

		String hql = "from ArticleEntity as a where a.module = '测试工具' and a.status = '1' ";
		if (classification != null && !"".equals(classification) && !"全部".equals(classification)) {
				hql += "and a.classification = '" + classification + "' ";
		}
		
		hql += "order by a.createDate desc";
		
		if (curPage != null && !"".equals(curPage)) {
			currentPage = Integer.parseInt(curPage);
		}

		int recordCount = articleService.count("select count(*) " + hql).intValue();
		int pageCount = (int) Math.ceil((float) recordCount / pageSize);

		List<ArticleEntity> toolsArticles = (List<ArticleEntity>) articleService.find(hql, currentPage, pageSize);
		request.setAttribute("toolsArticles", toolsArticles);
		request.setAttribute("recordCount", recordCount);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("currentPage", currentPage);
		return "toolsList";
	}
	
}
