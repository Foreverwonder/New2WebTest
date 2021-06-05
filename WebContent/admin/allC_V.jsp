<%@ page import="cn.edu.lingnan.dto.VacDto" %>
<%@ page import="java.util.Vector" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="cn.edu.lingnan.dto.C_VDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script type="text/javascript" src="allC_V.js"></script>
    <title>显示所有接种信息</title>
    <link rel="stylesheet" type="text/css" href="allstu.css">
    <style>

    </style>
</head>
<body>
<h1>LQJ的接种信息页面</h1>
<table class="hoverable" align="center">
    <tr>
        <td><input type="checkbox" onclick="allcheck(this);"style="background-color: yellow"></td>
        <td>国家编号</td>
        <td>疫苗编号</td>
        <td>接种人数</td>
        <td><input type="button"value="批量删除" style="width: 100px"class="change" onclick="delall();"></td>
    </tr>
    <%
        Vector<C_VDto>v =(Vector<C_VDto>)session.getAttribute("allC_V");
        Iterator<C_VDto> it=v.iterator();
        C_VDto s=null;
        while(it.hasNext()){
            s=it.next();
    %>


    <tr>
        <td><input type="checkbox" name="check" value=<%=s.getCountry_id()%>></td>
        <td><%=s.getCountry_id()%></td>
        <td><%=s.getVac_id()%></td>
        <td><%=s.getVac_Over_Num()%></td>
        <td>
            <input type="button" value="修改" onClick="location.href='updateC_V.jsp?vac_id=<%=s.getVac_id()%>&country_id=<%=s.getCountry_id()%>'"class="change"/>
            <input type="button" value="删除" onClick="location.href='deleteC_V?vac_id=<%=s.getVac_id()%>'"class="change"/>
        </td>
    </tr>

    <%
        }
    %>
    <form method="newVac" action="allC_V.jsp">
        <input type="submit" value="添加新的疫苗" style="margin-top: 25px;"></input>
    </form>
</table>
</body>
</html>