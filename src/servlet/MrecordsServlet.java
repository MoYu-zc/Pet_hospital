package servlet;

import bean.mrecords;
import bean.pet;
import service.MrecordsService;
import service.MrecordsServiceimpl;
import service.PetService;
import service.PetServiceimpl;
import utils.webUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "MrecordsServlet",urlPatterns = "/MrecordsServlet")
public class MrecordsServlet extends baseServlet {
    MrecordsService mrecordsService = new MrecordsServiceimpl();
    PetService petService = new PetServiceimpl();
    protected void href(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String master = request.getParameter("master");
        pet pet = petService.getonepet(name, master);
        request.setAttribute("pet",pet);
        request.getRequestDispatcher("pages/mandp/addmrecords.jsp").forward(request,response);

    }
    protected void AddMrecords(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        mrecords mrecords = webUtils.param2bean2(request, new mrecords());
        boolean b = mrecordsService.AddMrecords(mrecords);
        if (b) {
            //注册成功

            response.sendRedirect(request.getContextPath()+"/pages/mandp/inquiremap.jsp");
          //  request.setAttribute("mgs1","成功:已经添加");
           // request.getRequestDispatcher("/pages/mandp/inquiremap.jsp").forward(request, response);
        } else {
            //注册失败
            request.setAttribute("mgs1","错误:修改失败");
            request.getRequestDispatcher("/pages/mandp/addmrecords.jsp").forward(request, response);
        }    }
    protected void getMrecords(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String name = request.getParameter("name");
        String master = request.getParameter("master");
        pet pet = petService.getonepet(name, master);
        List<mrecords> mrecords = mrecordsService.getrecords(name);
        request.setAttribute("pet",pet);
        request.setAttribute("mrecords",mrecords);
        request.getRequestDispatcher("pages/mandp/getmrecords.jsp").forward(request,response);

    }



}
