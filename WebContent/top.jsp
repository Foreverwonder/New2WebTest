<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>header</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style/adminStyle.css" rel="stylesheet" type="text/css" />
</head>
<style>
    .abc{
        position: absolute;
        left: 10%;
        font-weight: bold;
    }
</style>
<body>
<div class="header">
 <div class="logo">
<%--  <img src="images/admin_logo.png" title="在哪儿"/>--%>
 </div>
 <div class="fr top-link">
<%--     <h1>疫情疫苗信息管理系统</h1>--%>
     <a class="abc">Covid_19全球疫苗信息管理系统</a>
     <a href="#" target="_blank" title="访问站点"><i class="shopLinkIcon"></i><span>访问站点</span></a>
  <a href="admin_list.html" target="mainCont" title="DeathGhost"><i class="adminIcon"></i><span>当前国家：
  <%
			String username =(String)session.getAttribute("username");
		%>
		<%=username %>
  </span></a>
  <a href="#" title="修改密码"><i class="clearIcon"></i><span>清除缓存</span></a>
  <a href="revise_password.html" target="mainCont" title="修改密码"><i class="revisepwdIcon"></i><span>修改密码</span></a>
  <a href="loginout" title="安全退出" style="background:rgb(255,0,128);" target="_blank"><i class="quitIcon"></i><span>安全退出？</span></a>
 </div>
</div>
</body>
</html>