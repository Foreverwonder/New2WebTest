<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GBK">
<title>管理员页面</title>
	<script>
		function replaceDoc(){
			window.location.replace("http://localhost:8889/New2WebTest/")
		}
	</script>
</head>
<body onload="opener.Location.reload()">
<!--<body onload="opener.Location.replace()">-->
	<h1>管理员页面,您好:
	<%
	 	String username =(String)session.getAttribute("username");
	%>
	<%=username %>
	</h1>
	<h3>只有用户权限为1的用户才能访问当前页面</h3>


	<h3><a href="findAllStu">查看所有国家的信息</a></h3>
	<h3><a href="findAllVac">查看所有疫苗的信息</a></h3>
	<h3><a href="findAllC_V">查看所有接种的信息</a></h3>

	<h3>想<a href="loginout" target="_blank">退出系统</a></h3>
<%--<input type="button" value="退出" onclick="replaceDoc()">--%>
</body>
</html>