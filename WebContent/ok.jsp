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
	<h1>��½�ɹ�ҳ��,Welcome ��
		<%
			String username =(String)session.getAttribute("username");
		%>
		<%=username %>
	</h1>
	<h3>ֻҪ��¼�ɹ����Ϳ��Է��ʸ�ҳ��</h3>
	<h3>������ӽ������Աҳ��<a href="admin/admin.jsp">�������Աҳ��</a></h3>
<%--	<h3>��<a href="http://localhost:8889/New2WebTest/">�˳�ϵͳ</a></h3>--%>
	<h3><a href="javascript:window.history.back(-1);" rel="" class="ddBtn btnWhite">�˳�ϵͳ</a></h3><%--Ц��--%>

</body>
</html>