<%@ page language="java" contentType="text/html; charset=GBK"
         pageEncoding="GBK" %>
<%@ page import="java.util.*,cn.edu.lingnan.dto.CountryDto" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="GBK">
    <title>�޸Ĺ�����Ϣ</title>
    <link rel="stylesheet" type="text/css" href="allstu.css">

</head>
<body>
<h1>�޸Ĺ�����Ϣ</h1>
<form action="updateStu">
    <table align="center">
        <tr>
            <td>���ұ��</td>
            <td>��������</td>
            <td>��������</td>
            <td>����Ȩ��</td>
            <td>�����˿�����</td>
            <td>isdelete</td>
            <td>����</td>
        </tr>
        <%
            Vector<CountryDto> v = (Vector<CountryDto>) session.getAttribute("allStu");
            Iterator<CountryDto> it = v.iterator();
            String sid = request.getParameter("sid");
            CountryDto s = null;
            while (it.hasNext()) {
                s = it.next();
                if (s.getCountry_id().equals(sid)) {
        %>
        <tr>
            <td><input type="hidden" name="sid" value=<%=s.getCountry_id()%>><%=s.getCountry_id()%>
            </td>
            <td><input type="text" name="sname" value=<%=s.getCountry_name()%>></td>
            <td><input type="text" name="password" value=<%=s.getPassword()%>></td>
            <td><input type="text" name="superuser" value=<%=s.getVac_able()%>></td>
            <td><input type="text" name="people" value=<%=s.getPeople()%>></td>
            <td><input type="text" name="isdelete" value=<%=s.getIsdelete()%>></td>
            <td>
                <input type="submit" value="ȷ���޸�" class="change" style="width: 100px"></a>
            </td>
        </tr>
        <%
                }
            }
        %>
    </table>
</form>
</body>
</html>