<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GBK">
<title>Insert title here</title>
</head>
<body style="text-align: center">
<h1>�û�ע��ҳ��</h1>

<%--�и�js�ļ�ûд-----------------------------------------%>

<form name="form" action="register">
    <table clss="hoverable" align="center">
    <tr>
        <td>�û����</td>
        <td><input type="text" name="sid" id="sid">
            <font color="red">*</font>
        </td>
    </tr>

        <tr>
        
            <td>�û�����</td>
            <td><input type="text" name="sname" id="sname">
                <font color="red">*</font>
            </td>
        </tr>

        <tr>
            <td>�û�����</td>
            <td><input type="password" name="password" id="password">
                <font color="red">*</font>
            </td>
        </tr>

        <tr>
            <td>ȷ������</td>
            <td><input type="password" name="password2" id="password2">
                <font color="red">*</font>
            </td>
        </tr>
        <tr>
            <td>�û�Ȩ��</td>
            <td>
                <select name="superuser">
                    <option Selected value="2">��ͨ�û�
                    <option value="1">����Ա
                </select>
            </td>
        </tr>
    <tr>
        <td colspan="2" align="center">
            <input type="submit" value="ע��" onclick="return check();"/>
            <input type="Reset" value="ȡ��"/>
        </td>
    </tr>
    </table>
</form>
</body>
</html>