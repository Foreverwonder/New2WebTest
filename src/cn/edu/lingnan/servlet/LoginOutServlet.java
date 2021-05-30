package cn.edu.lingnan.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet(urlPatterns={"/loginout","/admin/loginout"})
public class LoginOutServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 2 处理业务逻辑
		HttpSession session=req.getSession();
		session.invalidate();
		System.out.println("系统已执行注销操作.");
		//3 跳转页面
		resp.sendRedirect(req.getContextPath()+"/index.html");
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
