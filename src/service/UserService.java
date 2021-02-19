package service;

import bean.User;

public interface UserService {

    public User login(User user);
    public boolean regist(User user);
}
