package cn.edu.lingnan.servlet;

import cn.edu.lingnan.dao.CountryDao;
import cn.edu.lingnan.dao.VacDao;
import cn.edu.lingnan.dto.CountryDto;
import cn.edu.lingnan.dto.VacDto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Vector;

@WebServlet("/admin/updateVac")
public class VacUpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        //1获取页面提交的参数
        String vac_id=req.getParameter("vac_id");
        String vac_area=req.getParameter("vac_area");
        String vac_name=req.getParameter("vac_name");
        String vac_type=req.getParameter("vac_type");
        String isdelete=req.getParameter("isdelete");
//        System.out.println("--------"+vac_id);
        //2处理业务逻辑
        VacDao sd =new VacDao();
        VacDto sdto= new VacDto();
        sdto.setVac_id(Integer.parseInt(vac_id));
        sdto.setVac_area(vac_area);
        sdto.setVac_name(vac_name);
        sdto.setVac_type(vac_type);
        sdto.setIsdelete(Integer.parseInt(isdelete));
        int flag=sd.updataVac(sdto);
        Vector<VacDto> v=sd.findAllVac();
        HttpSession session=req.getSession();
        session.setAttribute("allVac",v);
        //3
//        System.out.println("herer1");
        resp.sendRedirect(req.getContextPath()+"/admin/allVac.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
