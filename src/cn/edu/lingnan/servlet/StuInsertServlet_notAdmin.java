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
import cn.edu.lingnan.dto.CountryDto;
@WebServlet("/admin/register")
public class StuInsertServlet_notAdmin extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        //1获取页面提交的参数
        String sid=req.getParameter("sid");
        String sname=req.getParameter("sname");
        String password=req.getParameter("password");
        String superuser=req.getParameter("superuser");
        String people=req.getParameter("people");
//        System.out.println("--------"+sid);
        //2处理业务逻辑
        CountryDao sd =new CountryDao();
        CountryDto sdto= new CountryDto();
        sdto.setCountry_id(sid);
        sdto.setCountry_name(sname);
        sdto.setPassword(password);
        sdto.setVac_able(Integer.parseInt(superuser));
        sdto.setPeople(people);
        sd.insertInfoToCountry(sdto);
        //3
        Vector<CountryDto> v=sd.findAllCountry();
        HttpSession session=req.getSession();
        session.setAttribute("allStu",v);
        resp.sendRedirect(req.getContextPath()+"/admin/allStu.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
