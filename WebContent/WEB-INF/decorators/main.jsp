<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/table.css"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/nav.css"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/left.css"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/font-awesome.css"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/jquery-accordion-menu.css"/>
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-1.6.2.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.easydrag.handler.beta2.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/left.js"></script>
		<title><decorator:title default="欢迎使用用户管理系统"/></title>
		<decorator:head/>							<!-- 取出被装饰页面的head标签中的内容(除了head标签本身) -->
	</head>

	<body>
		<i class="fa fa-th-large" style="display:inline;float:left;"></i>
		<h1><decorator:title/></h1>		<!-- 取出被装饰页面的title标签中的内容 -->

		<c:if test="${not empty loginUser}">
<%-- 			<a href="<%=request.getContextPath() %>/user/add">用户添加</a>
			<a href="<%=request.getContextPath() %>/user/users">用户列表</a> --%>
			当前用户:${loginUser.nickname }
			<input type="button" class="normal" value="退出系统" onClick="window.location.href='<%=request.getContextPath() %>/logout'">
			<%-- <a href="${loginUser.id }/update">更改密码</a> --%> 
			<%-- <input type="button"><a href="<%=request.getContextPath() %>/logout">退出系统</a> --%>
		</c:if>
		
		<hr/>
		
		<div id="jquery-accordion-menu" class='box' style="display:inline;float:left;">
			<div class="other_bar">
				<ul class="menu">
					<li>
						<h1 class="Left_Bar_title">
							<i class="fa fa-heart"></i>
							<span>用户管理</span>
						</h1>
						<ul>
							<li><p><a href="<%=request.getContextPath() %>/user/add">用户添加</a></p></li>
							<li><p><a href="<%=request.getContextPath() %>/user/users">用户列表</a></p></li>
							<li><p>救援车辆管理</p></li>
						</ul>
					</li>
					<li>
						<h1 class="Left_Bar_title">
							<i class="fa fa-truck"></i>
							<span>文章分类管理</span>
						</h1>
						<ul>
							<li><p name="车友管理">车友信息</p></li>
							<li><p name="车友管理">车友问问</p></li>
							<li><p name="车友管理">车友活动</p></li>
							<li><p name="车友管理">车友反馈</p></li>
						</ul>
					</li>
					<li>
						<h1 class="Left_Bar_title">
							<i class="fa fa-group"></i>
							<span>文章管理</span>
						</h1>
						<ul>
							<li><p><a href="<%=request.getContextPath() %>/article/add">文章添加</a></p></li>
							<li><p><a href="<%=request.getContextPath() %>/article/articles">文章列表</a></p></li>
							<li><p name="商家管理">优惠卷</p></li>
							<li><p name="商家管理">优惠活动</p></li>
							<li><p name="商家管理">评价管理</p></li>
						</ul>
					</li>
					<li>
						<h1 class="Left_Bar_title">
							<i class="fa fa-desktop"></i>
							<span>密码修改</span>
						</h1>
						<ul>
							<li><p name="平台业务管理">obd简介</p></li>
							<li><p name="平台业务管理">obd订单</p></li>
							<li><p name="平台业务管理">平台优惠卷</p></li>
							<li><p name="平台业务管理">平台优惠活动</p></li>
							<li><p name="平台业务管理">优惠活动订单</p></li>
						</ul>
					</li>
					<li>
						<h1 class="Left_Bar_title">
							<i class="fa fa-shopping-cart"></i>
							<span>经营管理</span>
						</h1>
						<ul>
							<li><p name="经营管理">在线订单</p></li>
							<li><p name="经营管理">预约订单</p></li>
							<li><p name="经营管理">交易管理</p></li>
							<li><p name="经营管理">账户管理</p></li>
						</ul>
					</li>
					<li>
						<h1 class="Left_Bar_title">
							<i class="fa fa-cog"></i>
							<span>系统设置</span>
						</h1>
						<ul>
							<li><p name="系统设置">用户管理</p></li>
							<li><p name="系统设置">车型管理</p></li>
							<li><p name="系统设置">基本服务项目</p></li>
							<li><p name="系统设置">咨询管理</p></li>
							<li><p name="系统设置">Banner广告</p></li>
							<li><p name="系统设置">Banner栏设置</p></li>
							<li><p name="系统设置">公告消息</p></li>
							<li><p name="系统设置">推荐统计</p></li>
							<li><p name="系统设置">参数设置</p></li>
							<li><p name="系统设置">关于我们</p></li>
						</ul>
					</li>
					<li>
						<h1 class="Left_Bar_title">
							<i class="fa fa-user"></i>
							<span>个人信息</span>
						</h1>
						<ul>
							<li><p name="个人信息">修改密码</p></li>
							<li><p name="个人信息">修改个人信息</p></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<div align="right" style="display:inline;float:left;"><decorator:body/></div>
									<!-- 取出被装饰页面的body标签中的内容 -->
		<div align="center" style="width:100%;border-top:1px solid; float:left;margin-top:10px;">
			CopyRight@2012-2015<br/>
			用户管理系统
		</div>
		
	</body>
</html>