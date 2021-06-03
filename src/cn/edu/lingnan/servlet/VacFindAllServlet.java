package cn.edu.lingnan.servlet;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.edu.lingnan.dao.CountryDao;
import cn.edu.lingnan.dao.VacDao;
import cn.edu.lingnan.dto.CountryDto;
import cn.edu.lingnan.dto.VacDto;

@WebServlet("/admin/findAllVac")

public class VacFindAllServlet extends HttpServlet {
	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1
        //2
        VacDao vd=new VacDao();
        Vector<VacDto> v=vd.findAllVac();
        HttpSession session=req.getSession();
        session.setAttribute("allVac",v);
        //3
        resp.sendRedirect(req.getContextPath()+"/admin/allVac.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
