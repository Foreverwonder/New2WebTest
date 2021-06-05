<%@ page import="cn.edu.lingnan.dto.VacDto" %>
<%@ page import="java.util.Vector" %>
<%@ page import="java.util.Iterator" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <script type="text/javascript" src="allvac.js"></script>
    <title>显示所有疫苗信息</title>
    <link rel="stylesheet" type="text/css" href="allstu.css">
    <style>

    </style>
</head>
<body>
<h1>LQJ的疫苗管理页面</h1>
<table class="hoverable" align="center">
    <tr>
        <td><input type="checkbox" onclick="allcheck(this);"style="background-color: yellow"></td>
        <td>疫苗编号</td>
        <td>疫苗产地</td>
        <td>疫苗名称</td>
        <td>疫苗类型</td>
        <td><input type="button"value="批量删除" style="width: 100px"class="change" onclick="delall();"></td>
    </tr>
    <%
        Vector<VacDto>v =(Vector<VacDto>)session.getAttribute("allVac");
        Iterator<VacDto> it=v.iterator();
        VacDto s=null;
        while(it.hasNext()){
            s=it.next();
    %>


    <tr>
        <td><input type="checkbox" name="check" value=<%=s.getVac_id()%>></td>
        <td><%=s.getVac_id()%></td>
        <td><%=s.getVac_area()%></td>
        <td><%=s.getVac_name()%></td>
        <td><%=s.getVac_type()%></td>
        <td>
            <%--            <a href="updateStu.jsp?sid=<%=s.getCountry_id()%>" class="change">修改</a>--%>
            <input type="button" value="修改" onClick="location.href='updateVac.jsp?vac_id=<%=s.getVac_id()%>'"class="change"/>
            <%--                 <a href="deleteStu?sid=<%=s.getCountry_id()%>"class="change">删除</a>--%>
            <input type="button" value="删除" onClick="location.href='deleteVac?vac_id=<%=s.getVac_id()%>'"class="change"/>
        </td>
    </tr>

    <%
        }
    %>
    <form method="newVac" action="newVac.jsp">
        <input type="submit" value="添加新的疫苗" style="margin-top: 25px;"></input>
    </form>
</table>
</body>
</html>