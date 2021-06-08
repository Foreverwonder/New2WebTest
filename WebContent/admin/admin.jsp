<%@ page language="java" contentType="text/html; charset=GBK"
         pageEncoding="GBK" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="GBK">
    <title>管理员页面</title>
    <script>
        function replaceDoc() {
            window.location.replace("http://localhost:8889/New2WebTest/")
        }
    </script>
</head>
<style>
    body {
        background-color: rgb(255, 157, 168);
    }
</style>
<body onload="opener.Location.reload()">
<!--<body onload="opener.Location.replace()">-->
<h1 style="">管理国页面,您好:
    <span style="color: rgb(255,0,128)">
    <%
        String username = (String) session.getAttribute("username");
    %>
    <%=username %>
    </span>
</h1>
<h2 style="color: red">联合国安理会呼吁:“大国应为世界和未来展现更大格局和情怀”</h2>
<h3><a href="findAllStu" style="color:rgb(255,0,128)">查看所有国家的信息</a></h3>
<h3><a href="findAllVac" style="color:rgb(255,0,128)">查看所有疫苗的信息</a></h3>
<h3><a href="findAllC_V" style="color:rgb(255,0,128)">查看所有接种的信息</a></h3>

<%--<h3><a href="loginout" target="_blank" style="text-decoration: none;color:rgb(255,0,128)">退出系统</a></h3>--%>
<h4 style="color: rgb(255,227,227)">只有能够生产疫苗的国家才能访问当前页面</h4>
<%--<input type="button" value="退出" onclick="replaceDoc()">--%>
</body>
</html>