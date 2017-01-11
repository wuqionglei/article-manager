package org.common.dao;

import java.util.List;

import org.common.model.Pager;
import org.common.model.Article;

public interface IArticleDao {
	public void add(Article article);
	public void update(Article article);
	public void delete(int id);
	public Article load(int id);				//根据ID查找文章
	public List<Article> list();					//列出所有文章
	public Pager<Article> find();			//分页
	public Article loadByTitle(String title);	//根据title查找文章
}
