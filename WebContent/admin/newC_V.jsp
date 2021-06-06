<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>接种信息添加页面</title>
    <script type="text/javascript" src="register.js"></script>
</head>
<body style="text-align: center">
<h1>疫接种信息页面</h1>

<%--有个js文件没写-----------------------------------------%>

<form name="form" action="newC_V">
    <table class="hoverable" align="center">
        <tr>
            <td>国家编号</td>
            <td><input type="text" name="country_id" id="country_id">
                <font color="red">*</font>
            </td>
        </tr>

        <tr>
            <td>疫苗编号</td>
            <td><input type="text" name="vac_id" id="vac_id">
                <font color="red">*</font>
            </td>
        </tr>

        <tr>
            <td>接种人数</td>
            <td><input type="text" name="vac_over_num" id="vac_over_num">
                <font color="red">*</font>
            </td>
        </tr>

        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="添加" onclick="return ;"/>
                <input type="Reset" value="取消"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>