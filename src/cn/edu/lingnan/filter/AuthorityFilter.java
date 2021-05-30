package cn.edu.lingnan.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//用于处理系统登录权限的过滤器类
public class AuthorityFilter implements Filter {

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
//		System.out.println("herere1");
		//1 获取登录用户的权限值superuser
		HttpServletRequest req=(HttpServletRequest)arg0;
		HttpSession session=req.getSession();
		Integer superuser=(Integer)session.getAttribute("superuser");
		System.out.println("The superuser's value is :"+superuser);
		//2 根据这个superuser值进行相应的处理
		HttpServletResponse resp=(HttpServletResponse)arg1;
		if(superuser!=null) {
			if(superuser==1) {
				//这是管理员登陆账号的处理，过滤通过
				arg2.doFilter(arg0, arg1);
			}else {
				//这是普通用户登录账号的处理
				resp.sendRedirect(req.getContextPath()+"/authority.html");
			}
			
		}else {
			//这是用户没有登陆的情况
			resp.sendRedirect(req.getContextPath()+"/index.html");
		}
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}
}
