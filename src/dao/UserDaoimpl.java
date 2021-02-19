package dao;

import bean.User;

public class UserDaoimpl extends BaseDao<User> implements UserDao{

public User getUserandPassword(User user){
        String sql = "select * from user where username=? and password=?";
        User bean = this.getBean(sql, user.getUsername(), user.getPassword());
        return bean;
    }
    public  boolean registUser(User user){
        String sql="insert into user(username,password,email) value(?,?,?)";
        int update = this.update(sql, user.getUsername(), user.getPassword(), user.getEmail());
        return update>0;
    }
}
