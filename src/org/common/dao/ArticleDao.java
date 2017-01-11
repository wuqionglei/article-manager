package org.common.dao;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.common.model.Article;
import org.common.model.Pager;
import org.common.model.SystemContext;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

@Repository("articleDao")			//申明一个DAO
public class ArticleDao extends HibernateDaoSupport implements IArticleDao {

	@Resource
	public void setSuperSessionFactory(SessionFactory sessionFactory) {	
		this.setSessionFactory(sessionFactory);
	}
	
	@Override
	public void add(Article article) {
		// TODO 自动生成的方法存根
		this.getHibernateTemplate().save(article);
	}

	@Override
	public void update(Article article) {
		// TODO 自动生成的方法存根
		this.getHibernateTemplate().update(article);
	}

	@Override
	public void delete(int id) {
		// TODO 自动生成的方法存根
		Article article = this.load(id);		//得到这个用户
		this.getHibernateTemplate().delete(article);
	}

	@Override
	public Article load(int id) {
		// TODO 自动生成的方法存根
		return this.getHibernateTemplate().load(Article.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Article> list() {
		// TODO 自动生成的方法存根
		return this.getSession().createQuery("from Article").list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public Pager<Article> find() {
		// TODO 自动生成的方法存根
		int size = SystemContext.getSize();
		int offset = SystemContext.getOffset();
		//参考hibernate中Query的用法 
		Query query = this.getSession().createQuery("from Article");
		query.setFirstResult(offset);							//设定从哪一个对象开始检索
		query.setMaxResults(size);							//设定一次最多检索出的对象数目
		List<Article> datas = query.list();				//取得查询到的数据
		long total = (Long)this.getSession()		//取得数据总数
				.createQuery("select count(*) from Article")
				.uniqueResult();
		//把从SystemContext和数据库取得的数据放入Pager<User>中
		Pager<Article> us = new Pager<Article>();		
		us.setDatas(datas);
		us.setOffset(offset);
		us.setSize(size);
		us.setTotal(total);
		return us;															//返回Pager<Article>
	}

	@Override
	public Article loadByTitle(String title) {
		// TODO 自动生成的方法存根
		return (Article)this.getSession().createQuery("from Article where title=?")
				.setParameter(0, title).uniqueResult();
	}

}
