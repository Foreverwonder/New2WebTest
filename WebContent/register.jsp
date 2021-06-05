<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>请开始您的注册</title>
<script type="text/javascript" src="register.js"></script>
</head>
<body style="text-align: center">
<h1>国家注册页面</h1>

<%--有个js文件没写-----------------------------------------%>

<form name="form" action="register">
    <table class="hoverable" align="center">
    <tr>
        <td>国家编号</td>
        <td><input type="text" name="sid" id="sid">
            <font color="red">*</font>
        </td>
    </tr>

        <tr>
            <td>国家名称</td>
            <td><input type="text" name="sname" id="sname">
                <font color="red">*</font>
            </td>
        </tr>

        <tr>
            <td>国家密码</td>
            <td><input type="password" name="password" id="password">
                <font color="red">*</font>
            </td>
        </tr>

        <tr>
            <td>确认密码</td>
            <td><input type="password" name="password2" id="password2">
                <font color="red">*</font>
            </td>
        </tr>
        <tr>
            <td>国家权限</td>
            <td>
                <select name="superuser">
                    <option Selected value="2">普通用户
                    <option value="1">管理员
                </select>
            </td>
        </tr>
        <tr>
            <td>国家人口</td>
            <td><input type="text" name="people" id="people">
                <font color="red">*</font>
            </td>
        </tr>
        <tr>
            <td>国家外交部邮箱</td>
            <td><input type="text" name="email" id="email">
                <font color="red">*</font>
            </td>
        </tr>
    <tr>
        <td colspan="2" align="center">
            <input type="submit" value="注册" onclick="return check();"/>
            <input type="Reset" value="取消"/>
        </td>
    </tr>
    </table>
</form>
</body>
</html>