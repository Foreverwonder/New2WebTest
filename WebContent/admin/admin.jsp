<%@ page language="java" contentType="text/html; charset=GBK"
         pageEncoding="GBK" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="GBK">
    <title>����Աҳ��</title>
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
<h1 style="">�����ҳ��,����:
    <span style="color: rgb(255,0,128)">
    <%
        String username = (String) session.getAttribute("username");
    %>
    <%=username %>
    </span>
</h1>
<h2 style="color: red">���Ϲ���������:�����ӦΪ�����δ��չ�ָ����ֺ��黳��</h2>
<h3><a href="findAllStu" style="color:rgb(255,0,128)">�鿴���й��ҵ���Ϣ</a></h3>
<h3><a href="findAllVac" style="color:rgb(255,0,128)">�鿴�����������Ϣ</a></h3>
<h3><a href="findAllC_V" style="color:rgb(255,0,128)">�鿴���н��ֵ���Ϣ</a></h3>

<%--<h3><a href="loginout" target="_blank" style="text-decoration: none;color:rgb(255,0,128)">�˳�ϵͳ</a></h3>--%>
<h4 style="color: rgb(255,227,227)">ֻ���ܹ���������Ĺ��Ҳ��ܷ��ʵ�ǰҳ��</h4>
<%--<input type="button" value="�˳�" onclick="replaceDoc()">--%>
</body>
</html>