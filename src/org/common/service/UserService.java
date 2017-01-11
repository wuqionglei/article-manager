package org.common.service;

import java.util.List;

import javax.annotation.Resource;

import org.common.dao.IUserDao;
import org.common.model.Pager;
import org.common.model.User;
import org.common.model.UserException;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserService implements IUserService {

	private IUserDao userDao;
	
	public IUserDao getUserDao() {
		return userDao;
	}

	//注入userDAO
	@Resource
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}
	
	//登入验证
	@Override
	public User login(String username, String password) {
		User u = userDao.loadByUsername(username);
		if(u==null) throw new UserException("登录用户不存在");
		System.out.println(u.getUsername());
		System.out.println(password);
		System.out.println(u.getPassword());
		if(!u.getPassword().equals(password)) throw new UserException("用户密码不正确");
		return u;
	}

	//添加用户
	@Override
	public void add(User user) {
		User u = userDao.loadByUsername(user.getUsername());
		if(u!=null) throw new UserException("要添加的用户已经存在");
		userDao.add(user);
	}

	//修改某个用户的资料
	@Override
	public void update(User user) {
		userDao.update(user);
	}

	//删除某个用户
	@Override
	public void delete(int id) {
		userDao.delete(id);
	}

	//查询某个用户
	@Override
	public User load(int id) {
		return userDao.load(id);
	}

	//列出所有用户
	@Override
	public List<User> list() {
		return userDao.list();
	}

	@Override
	public Pager<User> find() {
		return userDao.find();
	}



}
