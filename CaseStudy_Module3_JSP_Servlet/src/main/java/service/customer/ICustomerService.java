package service.customer;

import model.customer.Customer;

import java.util.List;

public interface ICustomerService {
    public List<Customer> selectAllCustomer();

//    public Customer selectCustomer(int id);
//
//    public void insertCustomer(Customer customer) throws SQLException;
//
//    public boolean updateCustomer(Customer customer) throws SQLException;
//
//    public boolean deleteCustomer(int id) throws SQLException;
//
//    public List<Customer> searchCustomer(String idSearch, String nameSearch);
}