<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ page import="java.util.*,cn.edu.lingnan.dto.CountryDto" %>
<%@ taglib uri="/jstlc" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="GBK">
<title>��ʾ����ѧ����Ϣ</title>
</head>
<body>
    <h1>��ʾ���е�ѧ����Ϣ</h1>
    <table>
        <tr><td>��</td><td>ѧ�����</td><td>ѧ������</td><td>ѧ������</td><td>ѧ��Ȩ��</td></tr>
    <%
        Vector<CountryDto>v =(Vector<CountryDto>)session.getAttribute("allStu");
        Iterator<CountryDto> it=v.iterator();
        CountryDto s=null;
        while(it.hasNext()){
            s=it.next();
    %>
    
    
    <tr>
    
        <td>��</td>
        <td><%=s.getCountry_id()%></td>
        <td><%=s.getCountry_name()%></td>
        <td><%=s.getPassword()%></td>
        <td><%=s.getVac_able()%></td>
        <td><%=s.getPeople()%></td>
        <td>
            <a href="updateStu.jsp?sid=<%=s.getCountry_id()%>">�޸�</a>
            <a href="deleteStu?sid=<%=s.getCountry_id()%>">ɾ��</a>
        </td>
    </tr>
    
        <%
            }
        %>
    </table>
</body>
</html>