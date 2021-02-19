package servlet;


import bean.customer;
import bean.pet;
import service.CustomerService;
import service.CustomerServiceimpl;
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

@WebServlet(name = "PetServlet",urlPatterns = "/PetServlet")
public class PetServlet extends baseServlet {
    PetService petService = new PetServiceimpl();
  CustomerService customerService = new CustomerServiceimpl();
    protected void AddPet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        pet pet = webUtils.param2bean2(request, new pet());
        List<customer> customers = customerService.IfCus(pet.getMaster());
        if (customers.size()==0){
            request.setAttribute("mgs1","错误:没有这个客户");
            request.getRequestDispatcher("/pages/mandp/addpet.jsp").forward(request, response);
        }else {
            boolean b = petService.AddPet(pet);
            if (b) {
                //注册成功
                response.sendRedirect(request.getContextPath() + "/pages/mandp/mapindex.jsp");
            } else {
                //注册失败
                request.getRequestDispatcher("/pages/mandp/addpet.jsp").forward(request, response);
            }
        }


    }

    protected void InquireByN(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        pet pet = webUtils.param2bean2(request, new pet());
        System.out.println(pet.getId());
        List<pet> pets = petService.getListCusByN(pet.getName());
        if (pets.size()==0){
            request.setAttribute("mgs1","错误:没有这个宠物");
            request.getRequestDispatcher("/pages/mandp/inquiremap.jsp").forward(request, response);
        }else {
            request.setAttribute("pets",pets);
            request.getRequestDispatcher("pages/mandp/inquireres.jsp").forward(request,response);
        }
    }
    protected void InquireByM(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        pet pet = webUtils.param2bean2(request, new pet());
        List<pet> pets = petService.getListCusByM(pet.getMaster());
        if (pets.size()==0){
            request.setAttribute("mgs1","错误:没有这个客户");
            request.getRequestDispatcher("/pages/mandp/inquiremap.jsp").forward(request, response);
        }else {
            request.setAttribute("pets",pets);
            request.getRequestDispatcher("pages/mandp/inquireres.jsp").forward(request,response);
        }
    }
    protected void updatepet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        pet pet = webUtils.param2bean2(request, new pet());
        System.out.println(pet.getId()+"--"+pet.getName()+"---"+pet.getType());
        List<customer> customers = customerService.IfCus(pet.getMaster());
        if (customers.size()==0){
            request.setAttribute("mgs1","错误:没有这个客户");
            request.getRequestDispatcher("/pages/mandp/inquiremap.jsp").forward(request, response);
        }else {
            boolean b = petService.updatePet(pet);
            if (b) {
                //注册成功
                response.sendRedirect(request.getContextPath() + "/pages/mandp/mapindex.jsp");
            } else {
                //注册失败
                request.setAttribute("mgs1","错误:修改失败");
                request.getRequestDispatcher("/pages/mandp/updatepet.jsp").forward(request, response);
            }
        }


    }

    protected void href(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String master = request.getParameter("master");
        pet pet = petService.getonepet(name, master);
        request.setAttribute("pet",pet);
        request.getRequestDispatcher("pages/mandp/updatepet.jsp").forward(request,response);
    }


}
