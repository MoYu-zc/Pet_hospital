package service;

import bean.customer;
import dao.CustomerDao;
import dao.CustomerDaoimpl;

import java.util.List;

public class CustomerServiceimpl implements CustomerService {
     CustomerDao customerDao= new CustomerDaoimpl();
     @Override
    public boolean AddCustomer(customer customer) {
         boolean b = customerDao.AddCustomer(customer);
         return b;
    }

    @Override
    public boolean updateCus(customer customer) {
        boolean b = customerDao.updateCus(customer);
        return b;
    }

    @Override
    public List<customer> IfCus(String name) {
        List<customer> customers = customerDao.IfCus(name);
        return customers;
    }

    @Override
    public customer getOneCus(String name) {
        customer cus = customerDao.getOneCus(name);
        return cus;
    }
}
