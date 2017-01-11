<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户列表</title>
	</head>
	<body>
		<table width="700" align="center" border="1">
			<tr>
				<th>用户标识:${pagers.total }</th><th>用户名</th><th>用户昵称</th><th>用户密码</th><th>用户邮箱</th>
				<th>操作</th>
			</tr>
			<c:if test="${pagers.total le 0 }">
				<tr>
					<td colspan="6">目前还没有用户数据</td>
				</tr>
			</c:if>
			<c:if test="${pagers.total gt 0}">
				<c:forEach items="${pagers.datas }" var="u">
				<tr>
					<td>${u.id }</td><td>${u.username }</td>
					<td><a href="${u.id }">${u.nickname }</a></td>
					<td>${u.password }</td><td>${u.email }</td>
					<td><a href="${u.id }/update">更新</a>&nbsp;<a href="${u.id }/delete">删除</a></td>
				</tr>
				</c:forEach>
				<tr>
					<td colspan="6">
						<jsp:include page="/inc/pager.jsp">
							<jsp:param value="users" name="url"/>
							<jsp:param value="${pagers.total}" name="items"/>
						</jsp:include>
					</td>
				</tr>	
			</c:if>
		</table>
	</body>
</html>