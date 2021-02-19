package servlet;

import bean.doctor;
import service.DoctorService;
import service.DoctorServiceimpl;
import utils.webUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DoctorServlet",urlPatterns = "/DoctorServlet")
public class DoctorServlet extends baseServlet {
   DoctorService doctorService = new DoctorServiceimpl();
    /**
    *    全部的兽医信息
    * */
    protected void dorlist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<doctor> list = doctorService.getDorList();
        request.setAttribute("doctors",list);
        request.getRequestDispatcher("pages/amdoctor/aminfor.jsp").forward(request,response);
    }

    protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doctor doctor = webUtils.param2bean2(request, new doctor());
        boolean b = doctorService.addDor(doctor);
        if (b) {
            //注册成功
            response.sendRedirect(request.getContextPath() + "/pages/amdoctor/anindex.jsp");
        } else {
            //注册失败
            request.setAttribute("mgs1","错误:添加失败");
            request.getRequestDispatcher("/pages/amdoctor/addamdor.jsp").forward(request, response);
        }

    }
    protected void inquirename(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doctor doctor = webUtils.param2bean2(request, new doctor());
        List<doctor> doctors = doctorService.getoneDor(doctor.getName());
        if (doctors.size()==0){
            request.setAttribute("mgs1","错误:没有这个医生");
            request.getRequestDispatcher("/pages/amdoctor/inquireDor.jsp").forward(request, response);
        }else {
            request.setAttribute("doctors",doctors);
            request.getRequestDispatcher("pages/amdoctor/aminfor.jsp").forward(request,response);
        }

    }

    protected void inquirebumen(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doctor doctor = webUtils.param2bean2(request, new doctor());
        List<doctor> doctors = doctorService.getoneDor1(doctor.getBumen());
        if (doctors.size()==0){
            request.setAttribute("mgs1","错误:没有这个部门");
            request.getRequestDispatcher("/pages/amdoctor/inquireDor.jsp").forward(request, response);
        }else {
            request.setAttribute("doctors",doctors);
            request.getRequestDispatcher("pages/amdoctor/aminfor.jsp").forward(request,response);
        }
    }
}
