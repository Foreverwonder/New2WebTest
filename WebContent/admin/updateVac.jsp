<%@ page import="cn.edu.lingnan.dto.VacDto" %>
<%@ page import="java.util.Vector" %>
<%@ page import="java.util.Iterator" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改疫苗信息</title>
    <link rel="stylesheet" type="text/css" href="allstu.css">

</head>
<body>
    <h1>修改疫苗信息</h1>
    <form action="updateVac">
    <table align="center">
        <tr>
        <td>疫苗编号</td>
        <td>疫苗产地</td>
        <td>疫苗名称</td>
        <td>疫苗类型</td>
        <td>操作</td>
        </tr>
    <%
        Vector<VacDto>v =(Vector<VacDto>) session.getAttribute("allVac");
        Iterator<VacDto> it=v.iterator();
        String vac_id=request.getParameter("vac_id");
        VacDto s=null;
        while(it.hasNext()){
            s=it.next();
            if(s.getVac_id().equals(vac_id)){
    %>
    <tr>
        <td><input type="hidden" name="vac_id" value=<%=s.getVac_id()%>><%=s.getVac_id()%></td>
        <td><input type="text" name="vac_area" value=<%=s.getVac_area()%>></td>
        <td><input type="text" name="vac_name" value=<%=s.getVac_name()%>></td>
        <td><input type="text" name="vac_type" value=<%=s.getVac_type()%>></td>
        <td>
            <input type="submit" value="确认修改" class="change"style="width: 100px"></a>
        </td>
    </tr>
        <%
            }}
        %>
    </table>
    </form>
</body>
</html>