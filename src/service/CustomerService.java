package service;

import bean.customer;

import java.util.List;

public interface CustomerService {


    /**
     * 添加新顾客
     * @param customer
     * @return
     */
    public boolean AddCustomer(customer customer);

    /**
     * 修改顾客信息
     * @param customer
     * @return
     */
    public boolean updateCus(customer customer);

    /**
     * 是否有这个顾客
     * @param name
     * @return
     */
    public List<customer> IfCus(String name);

    /**
     * 是否有这个顾客  更新用
     * @param name
     * @return
     */
    public customer getOneCus(String name);
}
