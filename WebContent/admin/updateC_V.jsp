<%@ page import="cn.edu.lingnan.dto.VacDto" %>
<%@ page import="java.util.Vector" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="cn.edu.lingnan.dto.C_VDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>修改接种信息</title>
    <link rel="stylesheet" type="text/css" href="allstu.css">

</head>
<body>
<h1>修改接种信息</h1>
<form action="updateC_V">
    <table align="center">
        <tr>
            <td>国家编号</td>
            <td>疫苗编号</td>
            <td>接种人数</td>
            <td>操作</td>
        </tr>
        <%
            Vector<C_VDto> v = (Vector<C_VDto>) session.getAttribute("allC_V");
            Iterator<C_VDto> it = v.iterator();
            String country_id = request.getParameter("country_id");
            String vac_id = request.getParameter("vac_id");
            System.out.println("country_id=" + country_id + "  vac_id=" + vac_id);
            C_VDto s = null;
            while (it.hasNext()) {
                s = it.next();
                String a = s.getCountry_id();
                String b = country_id;
                String c = s.getVac_id();
//                String c="v05";
                String d = vac_id;
//                System.out.println("d="+d);
//                String d="v05";//d的获取（vac_id），可能不是字符串
                if((a.equals(b)) || (c.equals(d))){
                    System.out.println("a="+a+"b="+b+" c="+c+"d="+d);
                }
//                if ((s.getCountry_id().equals(country_id))) {
//                    if (s.getVac_id().equals(vac_id)) {
                if ((a.equals(b)) && (c.equals(d))) {
                    System.out.println("进来了！?");
        %>
        <h1>搞笑了</h1>
        <tr>
            <td><input type="hidden" name="country_id" value=<%=s.getCountry_id()%>><%=s.getCountry_id()%>
            </td>
            <td><input type="hidden" name="vac_id" value=<%=s.getVac_id()%>><%=s.getVac_id()%>
            </td>
            <td><input type="text" name="vac_over_num" value=<%=s.getVac_Over_Num()%>></td>
            <td>
                <input type="submit" value="确认修改" class="change" style="width: 100px"></a>
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