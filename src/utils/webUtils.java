package utils;


import bean.User;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

public class webUtils {
/*
*    其中一种设置vaule 的方法
*    在userServlet中进行了实验
*
* */
    public static<T> T param2bean(HttpServletRequest request,T t){
          //获取所有声明的属性
        Field[] fields = t.getClass().getDeclaredFields();
        for (Field field:fields) {
            // 获取属性名
            String name = field.getName();
            //在request获取相应的属性名
            String vaule = request.getParameter(name);
            try {
                BeanUtils.setProperty(t,name,vaule);
            } catch (Exception e) {
                e.printStackTrace();
            } }
        return  t;
    }


    /*
    * 使用的方法
    *   具体应用在userServlet
    * */
    public static<T> T param2bean2(HttpServletRequest request,T t){

        //先用map  封装上所需要的所有
        Map<String, String[]> map = request.getParameterMap();
        try {
            BeanUtils.populate(t,map);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return  t;
    }


    public static User getLoginUser(HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        return user;
    }
}
