<%@ page language="java" contentType="text/html; charset=GBK"
         pageEncoding="GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>header</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="style/adminStyle.css" rel="stylesheet" type="text/css"/>
</head>
<style>
    .abc {
        position: absolute;
        left: 10%;
        font-weight: bold;
    }
</style>
<body>
<div class="header">
    <div class="logo">
        <%--  <img src="images/admin_logo.png" title="���Ķ�"/>--%>
    </div>
    <div class="fr top-link">
        <%--     <h1>����������Ϣ����ϵͳ</h1>--%>
        <a class="abc">���Ϲ�������Ϣ����ϵͳ</a>
        <a href="#" target="_blank" title="����վ��"><i class="shopLinkIcon"></i><span>����վ��</span></a>
        <a href="admin_list.html" target="mainCont" title="DeathGhost"><i class="adminIcon"></i><span>��ǰ���ң�
  <%
      String username = (String) session.getAttribute("username");
  %>
		<%=username %>
  <audio autoplay="autoplay" loop="loop">
		<source src="������������MV���ǳ��󺣡�.mp3" type="audio/mpeg">
		�����������֧�� audio Ԫ�ء�
	</audio>
  </span></a>
        <a href="#" title="�޸�����"><i class="clearIcon"></i><span>�������</span></a>
        <a href="revise_password.html" target="mainCont" title="�޸�����"><i class="revisepwdIcon"></i><span>�޸�����</span></a>
        <a href="loginout" title="��ȫ�˳�" style="background:rgb(255,0,128);" target="_parent"><i
                class="quitIcon"></i><span>��ȫ�˳���</span></a>
    </div>
</div>
</body>
</html>