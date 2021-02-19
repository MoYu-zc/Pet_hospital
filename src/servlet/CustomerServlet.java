package servlet;

import bean.customer;
import bean.pet;
import service.CustomerService;
import service.CustomerServiceimpl;
import utils.webUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CustomerServlet",urlPatterns = "/CustomerServlet")
public class CustomerServlet extends baseServlet {
    CustomerService customerService = new CustomerServiceimpl();

    protected void AddCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException {
        customer customer = webUtils.param2bean2(request, new customer());
        boolean b = customerService.AddCustomer(customer);
        if (b) {
            //注册成功
            response.sendRedirect(request.getContextPath() + "/pages/mandp/mapindex.jsp");
        } else {
            //注册失败
            request.getRequestDispatcher("/pages/mandp/addmaster.jsp").forward(request, response);
        }
    }

    protected void getOneCus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        customer cus = customerService.getOneCus(name);
        request.setAttribute("cus",cus);
        request.getRequestDispatcher("pages/mandp/updateCus.jsp").forward(request,response);
    }

    protected void updateCus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        customer customer = webUtils.param2bean2(request, new customer());
            boolean b = customerService.updateCus(customer);
            if (b) {
                //注册成功
                response.sendRedirect(request.getContextPath() + "/pages/mandp/mapindex.jsp");
            } else {
                //注册失败
                request.setAttribute("mgs1","错误:修改失败");
                request.getRequestDispatcher("/pages/mandp/updateCus.jsp").forward(request, response);
            }



    }
}
