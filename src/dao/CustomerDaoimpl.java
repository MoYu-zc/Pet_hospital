package dao;

import bean.customer;

import java.util.List;

public class CustomerDaoimpl extends BaseDao<customer> implements CustomerDao {
    @Override
    public boolean AddCustomer(customer customer) {
        String sql="insert into customer(id,name,adress,city,phone) values(?,?,?,?,?)";
        int update = update(sql, customer.getId(), customer.getName(), customer.getAdress(), customer.getCity(), customer.getPhone());
        return update>0;
    }

    @Override
    public boolean updateCus(customer customer) {
        String sql="update customer set adress=?,city=?,phone=? where name=?";
        int update = update(sql, customer.getAdress(), customer.getCity(), customer.getPhone(), customer.getName());
        return update>0;
    }

    @Override
    public List<customer> IfCus(String name) {
        String sql="select * from customer where name=?";
        List<customer> list = getBeanList(sql, name);
        return list;
    }

    @Override
    public customer getOneCus(String name) {
        String sql="select * from customer where name=?";
        customer customer = getBean(sql, name);
        return customer;
    }
}
