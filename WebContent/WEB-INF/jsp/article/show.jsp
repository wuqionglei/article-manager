<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户[${user.nickname }]详细信息</title>
	</head>
	
	<body>
		<table width="700" align="center" border="1">
			<tr>
				<td>文章标识:</td><td>${user.id }</td>
			</tr>
			<tr>
				<td>文章名:</td><td>${user.title }</td>
			</tr>
			<tr>
				<td>链接地址:</td><td>${user.url }</td>
			</tr>
			<tr>
				<td>文章标签:</td><td>${user.label }</td>
			</tr>
		</table>
	</body>
</html>