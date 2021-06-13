<%@ page import="cn.edu.lingnan.dto.VacDto" %>
<%@ page import="java.util.Vector" %>
<%@ page import="java.util.Iterator" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script type="text/javascript" src="allvac.js"></script>
    <title>显示所有疫苗信息</title>
    <link rel="stylesheet" type="text/css" href="allstu.css">
    <style>
        input[type=submit] {
            width: 90%;
            background-color: rgba(153, 153, 153, 0.1);
            color: white;
            height: 50px;
            /*padding: 14px 20px;*/
            /*margin: 8px 0;*/
            /*margin-left: 30%;*/
            /*border: solid;*/
            /*border-radius: 4px;*/
            /*cursor: pointer;*/
            /*border-color: red;*/
        }

        input[type=submit]:hover {
            background-color: rgba(189, 189, 189, 0.2);
        }
    </style>
</head>
<body>
<h1>LQJ的疫苗管理页面</h1>
<table class="hoverable" align="center">
    <tr>
        <td><input type="checkbox" onclick="allcheck(this);" style="background-color: yellow"></td>
        <td>疫苗编号</td>
        <td>疫苗产地</td>
        <td>疫苗名称</td>
        <td>疫苗类型</td>
        <td>isdelete</td>
        <td><input type="button" value="批量删除" style="width: 100px" class="change" onclick="delall();"></td>
    </tr>
    <%
        Vector<VacDto> v = (Vector<VacDto>) session.getAttribute("allVac");
        Iterator<VacDto> it = v.iterator();
        VacDto s = null;
        while (it.hasNext()) {
            s = it.next();
    %>


    <tr>
        <td><input type="checkbox" name="check" value=<%=s.getVac_id()%>></td>
        <td><%=s.getVac_id()%>
        </td>
        <td><%=s.getVac_area()%>
        </td>
        <td><%=s.getVac_name()%>
        </td>
        <td><%=s.getVac_type()%>
        </td>
        <td><%=s.getIsdelete()%>
        </td>
        <td>
            <%--            <a href="updateStu.jsp?sid=<%=s.getCountry_id()%>" class="change">修改</a>--%>
            <input type="button" value="修改" onClick="location.href='updateVac.jsp?vac_id=<%=s.getVac_id()%>'"
                   class="change"/>
            <%--                 <a href="deleteStu?sid=<%=s.getCountry_id()%>"class="change">删除</a>--%>
            <input type="button" value="删除" onClick="location.href='deleteVac?vac_id=<%=s.getVac_id()%>'"
                   class="change"/>
        </td>
    </tr>

    <%
        }
    %>

<%--    <form method="newVac" action="newVac.jsp" target="_blank">--%>
<%--        <input type="submit" value="添加新的疫苗" style="margin-top: 25px;position: relative"></input>--%>
<%--    </form>--%>
<%--    --%>
</table>
<div style="margin-left:9%">
    <form method="neVacwVac" action="newVac.jsp" target="_self" >
        <input type="submit" value="添加新的疫苗信息" style="margin-top: 30px;"></input>
    </form>
</div>
</body>
</html>