<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<style>
    body {
        background-color: rgb(255, 157, 168);
    }
</style>
<body>
<h1>当前国家:
    <%
        String username = (String) session.getAttribute("username");
    %>
    <%=username %>
</h1>
<h1 style="color: rgb(255,0,128)">权限不足，禁止访问!</h1>
<!--	<h3>当用户权限不为1时，访问admin.html时跳转至此</h3>-->
<h3>请在普通用户页面浏览，<br>或<a href="loginout" target="_blank" style="color:rgb(255,0,128)">退出系统</a>，以管理员身份登陆</h3>
</body>
</html>

