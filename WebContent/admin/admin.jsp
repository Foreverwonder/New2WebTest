<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GBK">
<title>����Աҳ��</title>
</head>
<body onload="opener.Location.reload()">
<!--<body onload="opener.Location.replace()">-->
	<h1>����Աҳ��,����:
	<%
	 	String username =(String)session.getAttribute("username");
	%>
	<%=username %>
	</h1>
	<h3>ֻ���û�Ȩ��Ϊ1���û����ܷ��ʵ�ǰҳ��</h3>
	<h3>��<a href="loginout">�˳�ϵͳ</a>���Թ���Ա��ݵ�½</h3>
</body>
</html>