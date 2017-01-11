<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>文章添加</title>
	</head>
	
	<body>
		<sf:form method="post" modelAttribute="article">
			<table width="700" align="center" border="1">
				<tr>
					<td>文章名:</td><td><sf:input path="title"/><sf:errors path="title"/></td>
				</tr>
				<tr>
					<td>链接地址:</td><td><sf:input path="url"/></td>
				</tr>
				<tr>
					<td>文章标签:</td><td><sf:input path="label"/></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="文章添加"/>
					</td>
				</tr>
			</table>
		</sf:form>
	</body>
</html>