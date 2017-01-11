<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/resource.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- <title>文章标注管理系统登陆页面</title> -->
<title></title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/jquery-accordion-menu.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/font-awesome.css" type="text/css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/style/fdt.css" type="text/css">
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.easydrag.handler.beta2.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/main.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.easydrag.handler.beta2.js"></script>
</head>

<body  style="background: url(<%=request.getContextPath()%>/resources/img/001.jpg) no-repeat;background-size:cover;">
	<div class="box">
		<form method="post">
			<h1>文章标注管理系统</h1>
			<div class="box_1">
				<input type="text" id="username" name="username" class="content" value="请输入您的用户名" style="padding-left:30px"/>
			</div>
			<div class="box_1">
				<input type="text" id="password1" class="content" value="请输入您的密码" style="padding-left:30px"/>
				<input type="password" id="password2" name="password" class="content" value="" style="padding-left:30px"/>
			</div>

			<br/>
			<div class="box_2">
				<input type="submit" id="send" value="登陆" />
				<input type="button" id="reset" value="重置" />
			</div>
		</form>
	</div>
	
</body>
</html>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户登录</title>
	</head>
	
	<body>
		<form method="post">
			用户名:<input type="text" name="username"/><br/>
			用户密码:<input type="password" name="password"/><br/>
			<input type="submit" value="用户登录"/>
		</form>
	</body>
</html> --%>