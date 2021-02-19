package test;

import bean.User;
import dao.UserDao;
import dao.UserDaoimpl;
import org.junit.Test;


public class UserDaoTest {
    @Test
    public  void  test(){
        UserDao ud=new UserDaoimpl();
        User user = ud.getUserandPassword(new User(null, "tomcat", "123456", null));
        System.out.println(user);
    }
@Test
    public  void  test2(){
        UserDao ud=new UserDaoimpl();
        boolean b = ud.registUser(new User(5, "tomcat4", "1234567", "2"));
        System.out.println(b);
    }
}
