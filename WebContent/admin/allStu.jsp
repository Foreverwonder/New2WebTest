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
<link rel="stylesheet" type="text/css" href="allstu.css">
        <style>
        input[type=submit] {
            width: 98%;
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
    <h1>国家管理页面</h1>
    <table class="hoverable" align="center">
        <tr>
            <td><input type="checkbox" onclick="allcheck(this);"style="background-color: yellow"></td>
            <td>国家编号</td>
            <td>国家名字</td>
            <td>国家密码</td>
            <td>国家权限</td>
            <td>国家人口总数</td>
            <td><input type="button"value="批量删除" style="width: 100px"class="change" onclick="delall();"></td>
        </tr>
    <%
        Vector<CountryDto>v =(Vector<CountryDto>)session.getAttribute("allStu");
        Iterator<CountryDto> it=v.iterator();
        CountryDto s=null;
        while(it.hasNext()){
            s=it.next();
    %>
    
    
    <tr>
        <td><input type="checkbox" name="check" value=<%=s.getCountry_id()%>></td>
        <td><%=s.getCountry_id()%></td>
        <td><%=s.getCountry_name()%></td>
        <td><%=s.getPassword()%></td>
        <td><%=s.getVac_able()%></td>
        <td><%=s.getPeople()%></td>
        <td>
<%--            <a href="updateStu.jsp?sid=<%=s.getCountry_id()%>" class="change">修改</a>--%>
                 <input type="button" value="修改" onClick="location.href='updateStu.jsp?sid=<%=s.getCountry_id()%>'"class="change"/>
<%--                 <a href="deleteStu?sid=<%=s.getCountry_id()%>"class="change">删除</a>--%>
                  <input type="button" value="删除" onClick="location.href='deleteStu?sid=<%=s.getCountry_id()%>'"class="change"/>


        </td>
    </tr>
    
        <%
            }
        %>
    </table>
    <div style="margin-left: 2%">
        <form method="register" action="register.jsp" target="_blank">
            <input type="submit" value="添加新的国家信息" style="margin-top: 25px;" ></input>
        </form>
    </div>
</body>
</html>