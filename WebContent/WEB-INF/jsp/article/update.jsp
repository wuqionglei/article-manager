<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户更新</title>
	</head>
	<body>
		<sf:form method="post" modelAttribute="article">
			<table width="700" align="center" border="1">
				<tr>
					<td>文章名:</td><td>${user.title }<sf:input path="title"/></td>
				</tr>
				<tr>
					<td>文章链接:</td><td><sf:input path="url"/></td>
				</tr>
				<tr>
					<td>文章标记:</td><td><sf:input path="label"/></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="用户更新"/>
					</td>
				</tr>
			</table>
		</sf:form>
	</body>
</html>