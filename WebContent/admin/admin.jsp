<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GBK">
<title>����Աҳ��</title>
	<script>
		function replaceDoc(){
			window.location.replace("http://localhost:8889/New2WebTest/")
		}
	</script>
</head>
<style>
	body{
		background-color: rgb(255,157,168);
	}
</style>
<body onload="opener.Location.reload()">
<!--<body onload="opener.Location.replace()">-->
	<h1>����Աҳ��,����:
	<%
	 	String username =(String)session.getAttribute("username");
	%>
	<%=username %>
	</h1>
	<h3>ֻ���û�Ȩ��Ϊ1���û����ܷ��ʵ�ǰҳ��</h3>


	<h3><a href="findAllStu" style="color:rgb(255,0,128)">�鿴���й��ҵ���Ϣ</a></h3>
	<h3><a href="findAllVac" style="color:rgb(255,0,128)">�鿴�����������Ϣ</a></h3>
	<h3><a href="findAllC_V" style="color:rgb(255,0,128)">�鿴���н��ֵ���Ϣ</a></h3>

	<h3><a href="loginout" target="_blank" style="text-decoration: none;color:rgb(255,0,128)">�˳�ϵͳ</a></h3>
<%--<input type="button" value="�˳�" onclick="replaceDoc()">--%>
</body>
</html>