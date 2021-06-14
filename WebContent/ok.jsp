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
	<h1>登陆成功,Welcome：
		<%
			String username =(String)session.getAttribute("username");
		%>
		<span style="color: rgb(255,0,128)"><%=username %></span>
	</h1>

	<h2>联合国秘书长：疫情是全人类的敌人，国际社会应共同抵制新冠疫情</h2>
<%--	<h3>只要登录成功，就可以访问该页面</h3>--%>
	<h3><a href="admin/admin.jsp" style="color:rgb(255,0,128)">进入管理员页面</a></h3>
<%--	<h3>请<a href="http://localhost:8889/New2WebTest/">退出系统</a></h3>--%>
<%--	<h3><a href="javascript:window.history.back(-1);" rel="" class="ddBtn btnWhite">退出系统</a></h3>&lt;%&ndash;笑死&ndash;%&gt;--%>
	<h3><a href="loginout" target="_parent" style="color:rgb(255,0,128)">退出系统</a></h3>

</body>
</html>