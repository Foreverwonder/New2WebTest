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

//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        //1获取页面提交过来的学生编号
//        String sid=req.getParameter("sid");
//        System.out.println("Sid="+sid);
//        //2
//       CountryDao sd=new CountryDao();
//        try {
//            boolean flag=sd.deleteCountry(sid);
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        }
//        Vector<CountryDto> v=sd.findAllCountry();
//        HttpSession session= req.getSession();
//        session.setAttribute("allStu",v);
//        //3
//        resp.sendRedirect(req.getContextPath()+"/admin/allStu.jsp");
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        doGet(req, resp);
//    }
//}



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1获取页面提交过来的学生编号
        String sid = req.getParameter("sid");
        String all = req.getParameter("flag");
//        System.out.println("Sid//=" + sid);
//        System.out.println("flag/all=" + all);
        //2
        CountryDao sd=new CountryDao();
        boolean flag = false;
        if (all != null) {//批量删除
            String[] temp = sid.split(",");
            for (String t : temp) {
                try {
                    sd.deleteCountry(t);
                    flag=true;
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }

        } else {//单个删除
            try {
                sd.deleteCountry(sid);
                flag=true;
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        if (flag) {
            Vector<CountryDto> v = sd.findAllCountry();
            HttpSession session = req.getSession();
            session.setAttribute("allStu", v);
        }
        //3
        resp.sendRedirect(req.getContextPath() + "/admin/allStu.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
