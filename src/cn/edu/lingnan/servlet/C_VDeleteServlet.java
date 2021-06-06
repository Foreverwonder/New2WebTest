package cn.edu.lingnan.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.edu.lingnan.dao.C_VDao;
import cn.edu.lingnan.dao.VacDao;
import cn.edu.lingnan.dto.C_VDto;
import cn.edu.lingnan.dto.VacDto;

@WebServlet("/admin/deleteC_V")
public class C_VDeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1获取页面提交过来的学生编号
        String country_id_ = req.getParameter("country_id_");
        String vac_id_ = req.getParameter("vac_id_");
        String x1_x2 =req.getParameter("x1_x2");
        String all = req.getParameter("flag");
//        System.out.println("Sid//=" + sid);
//        System.out.println("25行flag/all=" + all);
        //2
        C_VDao sd = new C_VDao();
        boolean flag = false;


        if (all != null) {//批量删除
            String[] temp0=x1_x2.split(",");//先按“，”切割为数组，每一项是c02=v02这样子
            String[]  country_id = new String[temp0.length];
            String[] vac_id = new String[temp0.length];
            for (int i = 0; i < temp0.length; i++) {
                String temp = temp0[i];
                String[] itempsplit = temp.split("=");
                country_id[i]=itempsplit[0];
                vac_id[i]=itempsplit[1];
            }

            for (String t1 : country_id) {
                for (String t2 : vac_id) {
                    try {
                        if (sd.deleteVac(t1, t2)) {
                            flag = true;
                        }
//                    System.out.println(sd.deleteVac(t));
                    } catch (SQLException throwables) {
                        throwables.printStackTrace();
                    }
                }
            }

        } else {//单个删除
            try {
                if (sd.deleteVac(country_id_,vac_id_)) {
                    flag = true;
                }
//                System.out.println("47行"+sd.deleteVac(sid));
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        if (flag) {
            Vector<C_VDto> v = sd.findAllVac_Over_Num();
            HttpSession session = req.getSession();
            session.setAttribute("allC_V", v);

            //3
            resp.sendRedirect(req.getContextPath() + "/admin/allC_V.jsp");
        }
        //将第52行的中括号移到这里来？试一下？
//        else {//当flag不为真时，即疫苗有国家使用时
////            System.out.println("58行");
//            resp.sendRedirect(req.getContextPath() + "/VacDeleteFailed.html");
//
//        }

    }
}
