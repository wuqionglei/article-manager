package org.common.dao;

import java.util.List;

import javax.annotation.Resource;

import org.common.model.Pager;
import org.common.model.SystemContext;
import org.common.model.User;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

@Repository("userDao")			//申明一个DAO
public class UserDao extends HibernateDaoSupport implements IUserDao {
	
	//但是在spring 的HibernateDaoSupport中，setSessionFactory是使用final 修饰的，无法重写，沒有办法使用注解的方式注入sessionFactroy
	//所以可以自己定义一个方法，这个方法去调用hibernateDaoSupport 中的setSessionFacotry方法，达到注入sessionFactory 的目的。
	@Resource
	public void setSuperSessionFactory(SessionFactory sessionFactory) {	
		this.setSessionFactory(sessionFactory);
	}
	
	@Override
	public void add(User user) {
		this.getHibernateTemplate().save(user);
	}

	@Override
	public void update(User user) {
		this.getHibernateTemplate().update(user);
	}

	@Override
	public void delete(int id) {
		User user = this.load(id);		//得到这个用户
		this.getHibernateTemplate().delete(user);
	}

	@Override
	public User load(int id) {
		return this.getHibernateTemplate().load(User.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> list() {
		return this.getSession().createQuery("from User").list();	//取得全部数据
	}

	@SuppressWarnings("unchecked")
	@Override
	public Pager<User> find() {
		int size = SystemContext.getSize();
		int offset = SystemContext.getOffset();
		//参考hibernate中Query的用法 
		Query query = this.getSession().createQuery("from User");
		query.setFirstResult(offset);							//设定从哪一个对象开始检索
		query.setMaxResults(size);							//设定一次最多检索出的对象数目
		List<User> datas = query.list();					//取得查询到的数据
		long total = (Long)this.getSession()		//取得数据总数
				.createQuery("select count(*) from User")
				.uniqueResult();
		//把从SystemContext和数据库取得的数据放入Pager<User>中
		Pager<User> us = new Pager<User>();		
		us.setDatas(datas);
		us.setOffset(offset);
		us.setSize(size);
		us.setTotal(total);
		return us;															//返回Pager<User>
	}

	@Override
	public User loadByUsername(String username) {
		return (User)this.getSession().createQuery("from User where username=?")
					.setParameter(0, username).uniqueResult();
	}

}
