package cn.edu.lingnan.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.edu.lingnan.dao.CountryDao;
import cn.edu.lingnan.dto.CountryDto;

//@WebServlet("/login")相当于web.xml文件里的最后一大段
public class LoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
//		System.out.println("sadsad");
		//1从页面获取参数,从客户端获取提交的参数
		String sname=req.getParameter("sname");
		String password=req.getParameter("password");
//		System.out.println("1、页面的参数用户名和密码分别是："+sname+"  "+password);
		//2处理业务逻辑,大部分时候会访问数据库
		CountryDao sd=new CountryDao();
		CountryDto sdto =sd.findCountryByNameAndPassword(sname,password);
		String username=sdto.getCountry_name();
		int superuser =sdto.getVac_able();
		HttpSession session=req.getSession();
		session.setAttribute("username",username);
		session.setAttribute("superuser",superuser);
//		System.out.println("2、页面收到的参数用户名和密码分别是："+username+"  "+superuser);

		//3响应,返回某些参数到页面
//		if(flag)
//		resp.sendRedirect(req.getContextPath()+"/LoginSuccessful.html");
//		resp.sendRedirect(req.getContextPath()+"/ok.html");
//		else
//			resp.sendRedirect(req.getContextPath()+"/LoginFailed.html");

//		System.out.println("here="+superuser);
		if(superuser!=0)
//		if(true)
		{
//			resp.sendRedirect(req.getContextPath()+"/ok.jsp");
			resp.sendRedirect(req.getContextPath()+"/index0.jsp");
		}
		else
			resp.sendRedirect(req.getContextPath()+"/index.html");
//			resp.sendRedirect(req.getContextPath()+"/LoginFailed.html");
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	doGet(req,resp);
	
	}
	
}
