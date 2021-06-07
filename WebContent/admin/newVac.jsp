<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>疫苗添加页面</title>
    <script type="text/javascript" src="register.js"></script>
    <link rel="stylesheet" type="text/css" href="allstu.css">

</head>
<body style="text-align: center">
<h1>疫苗添加页面</h1>

<%--有个js文件没写-----------------------------------------%>

<form name="form" action="newVac" target="_blank">
    <table class="hoverable" align="center">
        <tr>
            <td>疫苗编号</td>
            <td><input type="text" name="vac_id" id="vac_id">
                <font color="red">*</font>
            </td>
        </tr>

        <tr>
            <td>疫苗产地</td>
            <td><input type="text" name="vac_area" id="vac_area">
                <font color="red">*</font>
            </td>
        </tr>

        <tr>
            <td>疫苗名称</td>
            <td><input type="text" name="vac_name" id="vac_name">
                <font color="red">*</font>
            </td>
        </tr>

        <tr>
            <td>疫苗类型</td>
            <td><input type="text" name="vac_type" id="vac_type">
                <font color="red">*</font>
            </td>
        </tr>

        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="注册" onclick="return ;"/>
                <input type="Reset" value="取消"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>