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

@WebServlet("/admin/updateStu")
public class StuUpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        //1获取页面提交的参数
        String sid=req.getParameter("sid");
        String sname=req.getParameter("sname");
        String password=req.getParameter("password");
        String superuser=req.getParameter("superuser");
        String people=req.getParameter("people");
        String isdelete=req.getParameter("isdelete");
        //2处理业务逻辑
        CountryDao sd =new CountryDao();
        CountryDto sdto= new CountryDto();
        sdto.setCountry_id(Integer.parseInt(sid));
        sdto.setCountry_name(sname);
        sdto.setPassword(password);
        sdto.setVac_able(Integer.parseInt(superuser));
        sdto.setPeople(people);
        sdto.setIsdelete(Integer.parseInt(isdelete));
        int flag=sd.updataInfotoCountry(sdto);
        Vector<CountryDto> v=sd.findAllCountry();
        HttpSession session=req.getSession();
        session.setAttribute("allStu",v);
        //3
//        System.out.println("herer1");
        resp.sendRedirect(req.getContextPath()+"/admin/allStu.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
