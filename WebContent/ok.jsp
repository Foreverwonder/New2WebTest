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
	<h1>��½�ɹ�,Welcome��
		<%
			String username =(String)session.getAttribute("username");
		%>
		<span style="color: rgb(255,0,128)"><%=username %></span>
	</h1>

	<h2>���Ϲ����鳤��������ȫ����ĵ��ˣ��������Ӧ��ͬ�����¹�����</h2>
<%--	<h3>ֻҪ��¼�ɹ����Ϳ��Է��ʸ�ҳ��</h3>--%>
	<h3><a href="admin/admin.jsp" style="color:rgb(255,0,128)">�������Աҳ��</a></h3>
<%--	<h3>��<a href="http://localhost:8889/New2WebTest/">�˳�ϵͳ</a></h3>--%>
<%--	<h3><a href="javascript:window.history.back(-1);" rel="" class="ddBtn btnWhite">�˳�ϵͳ</a></h3>&lt;%&ndash;Ц��&ndash;%&gt;--%>
	<h3><a href="loginout" target="_parent" style="color:rgb(255,0,128)">�˳�ϵͳ</a></h3>

</body>
</html>