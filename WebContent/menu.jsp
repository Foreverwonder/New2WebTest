<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>左侧导航</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="style/adminStyle.css" rel="stylesheet" type="text/css"/>
    <script src="js/jquery.js"></script>
    <script src="js/public.js"></script>
</head>
<!--<body style="background:#313131;background-color:rgba(255,0,128,1)">-->
<body style="background-color:rgba(255,0,128,1)">

<div class="menu-list">
    <a href="ok.jsp" target="mainCont" class="block menu-list-title center"
       style="border:none;margin-bottom:8px;color:black;">起始页</a>
    <ul>


        <li class="menu-list-title">
            <span>普通国家页面</span>
            <i>◢</i>
        </li>
        <li>
            <ul class="menu-children">
                <li><a href="findAllStu" title="商品列表" target="mainCont">所有国家</a></li>
                <li><a href="findAllVac" title="商品分类" target="mainCont">所有疫苗</a></li>
                <li><a href="findAllC_V" title="商品分类" target="mainCont">所有接种</a></li>
                <!--    <li><a href="allC_V.jsp" title="商品分类" target="mainCont">所有接种</a></li>-->
            </ul>
        </li>

        <%
            Integer superuser = (Integer) session.getAttribute("superuser");
            if (superuser == 1) {
        %>

        <li class="menu-list-title">
            <span>大国管理页面</span>
            <i>◢</i>
        </li>
        <li>
            <ul class="menu-children">
                <li><a href="admin/findAllStu" title="所有国家" target="mainCont">所有国家管理</a></li>
                <li><a href="admin/findAllVac" title="所有疫苗" target="mainCont">所有疫苗管理</a></li>
                <li><a href="admin/findAllC_V" title="所有接种" target="mainCont">所有接种管理</a></li>
            </ul>
        </li>
        <%
            }
        %>


        <li class="menu-list-title">
            <span>疫苗分配</span>
            <i>◢</i>
        </li>
        <li>
            <ul class="menu-children">
<%--                <li><a href="basic_settings.html" title="站点基本设置" target="mainCont">疫苗的生产分配</a></li>--%>
                <li><a href="" title="站点基本设置" target="mainCont">疫苗的生产分配</a></li>
<%--                <li><a href="admin_list.html" title="站点基本设置" target="mainCont">疫苗接种分配</a></li>--%>
                <li><a href="" title="站点基本设置" target="mainCont">疫苗接种分配</a></li>
            </ul>
        </li>

        <li class="menu-list-title">
            <span>联合国倡议</span>
            <i>◢</i>
        </li>
        <li>
            <ul class="menu-children">
<%--                <li><a href="advertising_list.html" title="站点基本设置" target="mainCont">人类命运共同体</a></li>--%>
                <li><a href="" title="站点基本设置" target="mainCont">人类命运共同体</a></li>
            </ul>
        </li>
        <li class="menu-list-title">
            <span>外交部信息</span>
            <i>◢</i>
        </li>
        <li>
            <ul class="menu-children">
<%--                <li><a href="user_list.html" title="会员列表" target="mainCont">大使馆</a></li>--%>
                <li><a href="" title="会员列表" target="mainCont">大使馆</a></li>
<%--                <li><a href="add_user.html" title="添加会员" target="mainCont">外交工作团队</a></li>--%>
                <li><a href="" title="添加会员" target="mainCont">外交工作团队</a></li>
<%--                <li><a href="user_rank.html" title="会员等级" target="mainCont">国家要员</a></li>--%>
                <li><a href="" title="会员等级" target="mainCont">国家要员</a></li>
<%--                <li><a href="user_message.html" title="会员留言" target="mainCont">安全事项</a></li>--%>
                <li><a href="" title="会员留言" target="mainCont">安全事项</a></li>
            </ul>
        </li>
    </ul>
</div>
<div class="menu-footer">©</div>
</body>
</html>
         