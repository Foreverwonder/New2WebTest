package cn.edu.lingnan.servlet;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.edu.lingnan.dao.VacDao;
import cn.edu.lingnan.dto.VacDto;

@WebServlet("/findAllVac")
public class VacFindAllServlet_notAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1
        //2
        VacDao vd = new VacDao();
//        Vector<VacDto> v=vd.findAllVac();
        Vector<VacDto> v = vd.findAllVac_isdelete();
        HttpSession session = req.getSession();
//        session.setAttribute("allVac",v);
        session.setAttribute("allVac_isdelete", v);

        //3
        resp.sendRedirect(req.getContextPath() + "/allVac.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
