package dao;

import bean.User;

public interface UserDao {
 public  User getUserandPassword(User user);
 public  boolean registUser(User user);
}
