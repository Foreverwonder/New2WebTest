<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ page import="java.util.*,cn.edu.lingnan.dto.CountryDto" %>
<%@ taglib uri="/jstlc" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="GBK">
<title>显示所有学生信息</title>
</head>
<body>
    <h1>显示所有的学生信息</h1>
    <table>
        <tr><td>空</td><td>学生编号</td><td>学生姓名</td><td>学生密码</td><td>学生权限</td></tr>
    <%
        Vector<CountryDto>v =(Vector<CountryDto>)session.getAttribute("allStu");
        Iterator<CountryDto> it=v.iterator();
        CountryDto s=null;
        while(it.hasNext()){
            s=it.next();
    %>
    
    
    <tr>
    
        <td>空</td>
        <td><%=s.getCountry_id()%></td>
        <td><%=s.getCountry_name()%></td>
        <td><%=s.getPassword()%></td>
        <td><%=s.getVac_able()%></td>
        <td><%=s.getPeople()%></td>
        <td>
            <a href="updateStu.jsp?sid=<%=s.getCountry_id()%>">修改</a>
            <a href="deleteStu?sid=<%=s.getCountry_id()%>">删除</a>
        </td>
    </tr>
    
        <%
            }
        %>
    </table>
</body>
</html>