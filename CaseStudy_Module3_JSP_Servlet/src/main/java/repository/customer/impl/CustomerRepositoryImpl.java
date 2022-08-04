package repository.customer.impl;

import model.customer.Customer;
import repository.BaseRepository;
import repository.customer.ICustomerRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepositoryImpl implements ICustomerRepository {
    private final String SELECT_ALL_CUSTOMER = "SELECT * FROM customer";

    @Override
    public List<Customer> selectAllCustomer() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL_CUSTOMER);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()){
                int customerId = resultSet.getInt("customer_id");
                String customerCode = resultSet.getString("customer_code");
                int customerTypeId = resultSet.getInt("customer_type_id");
                String customerName = resultSet.getString("customer_name");
                String customerBirth = resultSet.getString("customer_birth");
                int customerGender = resultSet.getInt("customer_gender");
                String customerIdCard = resultSet.getString("customer_id_card");
                String customerPhone = resultSet.getString("customer_phone");
                String customerEmail = resultSet.getString("customer_email");
                String customerAddress = resultSet.getString("customer_address");
                Customer customer = new Customer(customerId,
                        customerCode,
                        customerTypeId,
                        customerName,
                        customerBirth,
                        customerGender,
                        customerIdCard,
                        customerPhone,
                        customerEmail,
                        customerAddress);
                customerList.add(customer);
            }
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
        return customerList;
    }
}
