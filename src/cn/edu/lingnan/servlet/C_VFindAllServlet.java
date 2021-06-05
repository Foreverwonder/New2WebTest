package cn.edu.lingnan.servlet;

import cn.edu.lingnan.dao.C_VDao;
import cn.edu.lingnan.dao.VacDao;
import cn.edu.lingnan.dto.C_VDto;
import cn.edu.lingnan.dto.VacDto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Vector;

@WebServlet("/admin/findAllC_V")
public class C_VFindAllServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1
        //2
        C_VDao vd=new C_VDao();
        Vector<C_VDto> v=vd.findAllVac_Over_Num();
        HttpSession session=req.getSession();
        session.setAttribute("allC_V",v);
        //3
        resp.sendRedirect(req.getContextPath()+"/admin/allC_V.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
