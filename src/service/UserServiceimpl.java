package service;

import bean.User;
import dao.UserDao;
import dao.UserDaoimpl;

public class UserServiceimpl implements UserService {
    UserDao ud = new UserDaoimpl();
    @Override
    public User login(User user) {

        return  ud.getUserandPassword(user);
    }

    @Override
    public boolean regist(User user) {
        boolean b = ud.registUser(user);
        return b;
    }
}
