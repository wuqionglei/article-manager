package org.common.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity											//如果我们当前这个bean要设置成实体对象，就需要加上Entity这个注解
@Table(name="t_user")			//设置数据库的表名
public class User {
	private int id;
	private String username;
	private String nickname;
	private String password;
	private String email;
	
	//(建议不要在属性上引入注解，因为属性是private的，如果引入注解会破坏其封装特性，所以建议在getter方法上加入注解)
	@Id											//定义为数据库的主键ID　　
	@GeneratedValue				//ID的生成策略为自动生成
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@NotEmpty(message="用户名不能为空")
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	@Size(min=1,max=10,message="密码长度应该在1和10之间")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Email(message="邮箱的格式不正确")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
