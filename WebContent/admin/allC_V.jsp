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
        input[type=submit] {
            width: 82%;
            background-color: rgba(153,153,153,0.1);
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
            background-color: rgba(189,189,189,0.2);
        }
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
        <td>isdelete</td>
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
        <td><input type="checkbox" name="check" value="<%=s.getCountry_id()%>=<%=s.getVac_id()%>"></td>      <%--两个参数的壮举 --%>
        <td><%=s.getCountry_id()%></td>
        <td><%=s.getVac_id()%></td>
        <td><%=s.getVac_Over_Num()%></td>
        <td><%=s.getIsdelete()%></td>
        <td>
            <input type="button" value="修改" onClick="location.href='updateC_V.jsp?vac_id=<%=s.getVac_id()%>&country_id=<%=s.getCountry_id()%>'"class="change"/>
            <input type="button" value="删除" onClick="location.href='deleteC_V?vac_id_=<%=s.getVac_id()%>&country_id_=<%=s.getCountry_id()%>'"class="change"/>
        </td>
    </tr>
    <%
        }
    %>
<%--    <div>--%>
<%--        <form method="newVac" action="newC_V.jsp" target="_blank">--%>
<%--            <input type="submit" value="添加新的接种信息" style="margin-top: 25px;" position: relative></input>--%>
<%--        </form>--%>
<%--    </div>--%>
</table>
<div style="margin-left:15.5%">
    <form method="newVac" action="newC_V.jsp" target="_self">
        <input type="submit" value="添加新的接种信息" style="margin-top: 25px;"></input>
    </form>
</div>
</body>
</html>