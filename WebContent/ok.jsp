<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>普通用户页面</title>
</head>
<style>
body{
	background-color: rgb(255,157,168);
}
</style>
<body onload="opener.Location.reload()">
<div style="position:relative;top:100px;">
	<h1 align="center">登陆成功,Welcome:
		<%
			String username =(String)session.getAttribute("username");//插入java语句获取session展示国家名
		%>
		<span style="color: rgb(255,0,128)"><%=username %></span>
	</h1>
	<h2 align="center">联合国秘书长：“疫情是全人类的敌人，国际社会应共同抵制新冠疫情。”</h2>
</div>

<%--	<h3><a href="admin/admin.jsp" style="color:rgb(255,0,128)">进入管理员页面</a></h3>--%>
<%--	<h3><a href="loginout" target="_parent" style="color:rgb(255,0,128)">退出系统</a></h3>--%>

</body>
</html>