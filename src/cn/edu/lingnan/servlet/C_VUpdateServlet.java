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

@WebServlet("/admin/updateC_V")
public class C_VUpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        //1获取页面提交的参数
        String country_id=req.getParameter("country_id");
        String vac_id=req.getParameter("vac_id");
        String vac_over_num=req.getParameter("vac_over_num");
        System.out.println("-------"+country_id+"--------"+vac_id);
        //2处理业务逻辑
        System.out.println("这里肯定有");
        C_VDao sd =new C_VDao();
        C_VDto sdto= new C_VDto();
        sdto.setCountry_id(country_id);
        System.out.println("这里有？");
        sdto.setVac_id(vac_id);
        System.out.println("这里有？？");
        sdto.setVac_Over_Num(vac_over_num);
        System.out.println("这里有？？？");
        int flag=sd.updataC_V(sdto);
        System.out.println("update的flag="+flag);
        Vector<C_VDto> v=sd.findAllVac_Over_Num();
        HttpSession session=req.getSession();
        session.setAttribute("allC_V",v);
        //3
//        System.out.println("herer1");
        resp.sendRedirect(req.getContextPath()+"/admin/allC_V.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
