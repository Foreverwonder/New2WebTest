<%@ page language="java" contentType="text/html; charset=GBK"
         pageEncoding="GBK" %>
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
<h1>��ǰ����:
    <%
        String username = (String) session.getAttribute("username");
    %>
    <%=username %>
</h1>
<h1 style="color: rgb(255,0,128)">Ȩ�޲��㣬��ֹ����!</h1>
<!--	<h3>���û�Ȩ�޲�Ϊ1ʱ������admin.htmlʱ��ת����</h3>-->
<h3><a href="loginout" target="_blank" style="color:rgb(255,0,128)">�˳�ϵͳ</a>���Թ���Ա��ݵ�½</h3>
</body>
</html>

