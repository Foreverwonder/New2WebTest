<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GBK">
<title>��ͨ�û�ҳ��</title>
</head>
<body>
	<h1>��½�ɹ�ҳ��,���ã�
		<%
			String username =(String)session.getAttribute("username");
		%>
		<%=username %>
	</h1>
	<h3>ֻҪ��¼�ɹ����Ϳ��Է��ʸ�ҳ��</h3>
	<h3>������ӽ������Աҳ��<a href="admin/admin.jsp">�������Աҳ��</a></h3>
	<h3>��<a href="loginout">�˳�ϵͳ</a>���Թ���Ա��ݵ�½</h3>
</body>
</html>