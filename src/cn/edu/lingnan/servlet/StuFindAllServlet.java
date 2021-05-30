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
import java.util.Vector;

@WebServlet("/admin/findAllStu")
public class StuFindAllServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1
        //2
        CountryDao sd=new  CountryDao();
        Vector<CountryDto> v=sd.findAllCountry();
        HttpSession session=req.getSession();
        session.setAttribute("allStu",v);
        //3
        resp.sendRedirect(req.getContextPath()+"/admin/allStu.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
