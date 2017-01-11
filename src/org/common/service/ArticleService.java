package org.common.service;

import java.util.List;

import javax.annotation.Resource;

import org.common.dao.IArticleDao;
import org.common.model.Article;
import org.common.model.ArticleException;
import org.common.model.Pager;
import org.springframework.stereotype.Service;

@Service("articleService")
public class ArticleService implements IArticleService {

	private IArticleDao articleDao;
	
	public IArticleDao getArticleDao() {
		return articleDao;
	}

	//注入userDAO
	@Resource
	public void setArticleDao(IArticleDao articleDao) {
		this.articleDao = articleDao;
	}
	
	@Override
	public void add(Article article) {
		Article u = articleDao.loadByTitle(article.getTitle());
		if(u!=null) throw new ArticleException("要添加的文章已经存在");
		articleDao.add(article);
	}

	@Override
	public void update(Article article) {
		articleDao.update(article);
	}

	@Override
	public void delete(int id) {
		articleDao.delete(id);
	}

	@Override
	public Article load(int id) {
		return articleDao.load(id);
	}

	@Override
	public List<Article> list() {
		return articleDao.list();
	}

	@Override
	public Pager<Article> find() {
		return articleDao.find();
	}


}
