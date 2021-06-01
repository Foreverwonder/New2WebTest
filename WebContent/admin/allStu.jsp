<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.util.*,cn.edu.lingnan.dto.CountryDto" %>
<%@ taglib uri="/jstlc" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="allstu.js"></script>
<title>显示所有国家信息</title>
<link rel="stylesheet" type="text/css" href="table.css">
</head>
<body>
    <h1>国家管理页面</h1>
    <table class="hoverable" align="center">
        <tr>
            <td><input type="checkbox" onclick="allcheck(this);"></td>
            <td>国家编号</td>
            <td>国家名字</td>
            <td>国家密码</td>
            <td>国家权限</td>
            <td><input type="button"value="批量删除"onclick="delall();"></td>
        </tr>
    <%
        Vector<CountryDto>v =(Vector<CountryDto>)session.getAttribute("allStu");
        Iterator<CountryDto> it=v.iterator();
        CountryDto s=null;
        while(it.hasNext()){
            s=it.next();
    %>
    
    
    <tr>
        <td><input type="checkbox"name="check" value=<%=s.getCountry_id()%>></td>
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