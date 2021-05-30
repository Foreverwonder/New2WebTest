package cn.edu.lingnan.servlet;


import cn.edu.lingnan.dao.CountryDao;
import cn.edu.lingnan.dto.CountryDto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Vector;

@WebServlet("/admin/deleteStu")
public class StuDeleteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1获取页面提交过来的学生编号
        String sid=req.getParameter("sid");
        System.out.println("Sid="+sid);
        //2
       CountryDao sd=new CountryDao();
        try {
            boolean flag=sd.deleteCountry(sid);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        Vector<CountryDto> v=sd.findAllCountry();
        HttpSession session= req.getSession();
        session.setAttribute("allStu",v);
        //3
        resp.sendRedirect(req.getContextPath()+"/admin/allStu.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
