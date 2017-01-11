package org.common.dao;

import java.util.List;

import org.common.model.Pager;
import org.common.model.User;

//IUserDao接口
public interface IUserDao {			
	public void add(User user);
	public void update(User user);
	public void delete(int id);
	public User load(int id);				//根据ID查找用户
	public List<User> list();					//列出所有用户
	public Pager<User> find();			//分页
	public User loadByUsername(String username);	//根据username查找用户
}
