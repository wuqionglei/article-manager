package org.common.service;

import java.util.List;

import org.common.model.Article;
import org.common.model.Pager;

public interface IArticleService {
	public void add(Article article);
	public void update(Article article);
	public void delete(int id);
	public Article load(int id);
	public List<Article> list();
	public Pager<Article> find();
}
