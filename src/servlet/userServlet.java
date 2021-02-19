package servlet;

import bean.User;
import com.google.code.kaptcha.Constants;
import com.sun.corba.se.impl.orbutil.closure.Constant;
import service.UserService;
import service.UserServiceimpl;
import utils.webUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "userServlet" ,urlPatterns = "/userServlet")
public class userServlet extends baseServlet {
         private   UserService us=new UserServiceimpl();
    protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//          User user = us.login(new User(null, username, password, null));

//        User user1=webUtils.param2bean(request,new User());
//        User user = us.login(user1);

        User user1 = webUtils.param2bean2(request,new User());
        User user = us.login(user1);
        if (user == null){
            //登录失败  返回登陆页面
            request.setAttribute("mgs","用户名或密码错误");
            request.getRequestDispatcher("/pages/user/login.jsp").forward(request,response);

        }else{
            //登陆成功
            HttpSession session = request.getSession();
            session.setAttribute("user",user);
            response.sendRedirect(request.getContextPath()+"/pages/user/login_success.jsp");
        }
    }

    protected void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//        String email=request.getParameter("email");
//        boolean b = us.regist(new User(null, username, password, email));
        String token = request.getParameter("token");
        HttpSession session1 = request.getSession();
        String token1 = (String)session1.getAttribute("token");
        session1.removeAttribute("token");
        if (token.equals(token1)) {
            //验证码
            String code = request.getParameter("code");
            HttpSession session = request.getSession();
            Object attribute = session.getAttribute(Constants.KAPTCHA_SESSION_KEY);
            if (attribute.equals(code)) {
                response.sendRedirect(request.getContextPath() + "/pages/user/regist_success.jsp");
            } else {
                request.setAttribute("mgs1", "验证码错误");
                request.getRequestDispatcher("/pages/user/regist.jsp").forward(request, response);
            }

            User user1 = webUtils.param2bean2(request, new User());
            boolean b = us.regist(user1);
            if (b) {
                //注册成功
                response.sendRedirect(request.getContextPath() + "/pages/user/regist_success.jsp");
            } else {
                //注册失败
                request.setAttribute("mgs1", "账号重复");
                request.getRequestDispatcher("/pages/user/regist.jsp").forward(request, response);
            }
        }else{
            request.setAttribute("mgs1", "不可以重复注册");
            request.getRequestDispatcher("/pages/user/regist.jsp").forward(request, response);
        }

    }
    protected void loginout(HttpServletRequest request, HttpServletResponse response) throws  IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        response.sendRedirect(request.getContextPath()+"/index.jsp");

    }
}
