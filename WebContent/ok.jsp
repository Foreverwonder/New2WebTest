<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="GBK">
<title>��ͨ�û�ҳ��</title>
</head>
<style>
body{
	background-color: rgb(255,157,168);
}
</style>
<body onload="opener.Location.reload()">
<div style="position:relative;top:100px;">
	<h1 align="center">��½�ɹ�,Welcome:
		<%
			String username =(String)session.getAttribute("username");
		%>
		<span style="color: rgb(255,0,128)"><%=username %></span>
	</h1>
	<h2 align="center">���Ϲ����鳤����������ȫ����ĵ��ˣ��������Ӧ��ͬ�����¹����顣��</h2>
</div>

<%--	<h3><a href="admin/admin.jsp" style="color:rgb(255,0,128)">�������Աҳ��</a></h3>--%>
<%--	<h3><a href="loginout" target="_parent" style="color:rgb(255,0,128)">�˳�ϵͳ</a></h3>--%>

</body>
</html>