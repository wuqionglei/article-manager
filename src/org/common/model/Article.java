package org.common.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity											//如果我们当前这个bean要设置成实体对象，就需要加上Entity这个注解
@Table(name="t_article")			//设置数据库的表名
public class Article {
	private int id;
	private String title;
	private String url;
	private String label;
	
	//(建议不要在属性上引入注解，因为属性是private的，如果引入注解会破坏其封装特性，所以建议在getter方法上加入注解)
	@Id											//定义为数据库的主键ID　　
	@GeneratedValue				//ID的生成策略为自动生成
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@NotEmpty(message="文章名不能为空")
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	@NotEmpty(message="文章链接地址你不能为空")
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
}
