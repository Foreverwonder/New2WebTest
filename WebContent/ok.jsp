<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GBK">
<title>普通用户页面</title>
</head>
<body>
	<h1>登陆成功页面,您好：
		<%
			String username =(String)session.getAttribute("username");
		%>
		<%=username %>
	</h1>
	<h3>只要登录成功，就可以访问该页面</h3>
	<h3>点击链接进入管理员页面<a href="admin/admin.jsp">进入管理员页面</a></h3>
	<h3>请<a href="loginout">退出系统</a>，以管理员身份登陆</h3>
</body>
</html>