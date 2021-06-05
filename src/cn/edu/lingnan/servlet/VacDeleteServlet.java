package cn.edu.lingnan.servlet;

import cn.edu.lingnan.dao.CountryDao;
import cn.edu.lingnan.dao.VacDao;
import cn.edu.lingnan.dto.VacDto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Vector;

@WebServlet("/admin/deleteVac")
public class VacDeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1获取页面提交过来的学生编号
        String sid = req.getParameter("vac_id");
        String all = req.getParameter("flag");
//        System.out.println("Sid//=" + sid);
//        System.out.println("25行flag/all=" + all);
        //2
        VacDao sd = new VacDao();
        boolean flag = false;
        if (all != null) {//批量删除
            String[] temp = sid.split(",");
            for (String t : temp) {
                try {
                    if (sd.deleteVac(t)) {
                        flag = true;
                    }
//                    System.out.println(sd.deleteVac(t));
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }

        } else {//单个删除
            try {
                if(sd.deleteVac(sid)){
                    flag = true;
                }
//                System.out.println("47行"+sd.deleteVac(sid));
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        if (flag) {
            Vector<VacDto> v = sd.findAllVac();
            HttpSession session = req.getSession();
            session.setAttribute("allVac", v);
//            System.out.println("52??=" + flag);
//        }

            //3
            resp.sendRedirect(req.getContextPath() + "/admin/allVac.jsp");
        }//将第52行的中括号移到这里来？试一下？
        else {//当flag不为真时，即疫苗有国家使用时
//            System.out.println("58行");
            resp.sendRedirect(req.getContextPath() + "/VacDeleteFailed.html");

        }

    }
}
