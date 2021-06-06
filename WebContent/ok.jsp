<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="GBK">
<title>普通用户页面</title>
</head>
<style>
body{
	background-color: rgb(255,157,168);
}
</style>
<body onload="opener.Location.reload()">
	<h1>登陆成功页面,Welcome ：
		<%
			String username =(String)session.getAttribute("username");
		%>
		<%=username %>
	</h1>
	<h3>只要登录成功，就可以访问该页面</h3>
	<h3>点击链接进入管理员页面<a href="admin/admin.jsp">进入管理员页面</a></h3>
<%--	<h3>请<a href="http://localhost:8889/New2WebTest/">退出系统</a></h3>--%>
	<h3><a href="javascript:window.history.back(-1);" rel="" class="ddBtn btnWhite">退出系统</a></h3><%--笑死--%>

</body>
</html>