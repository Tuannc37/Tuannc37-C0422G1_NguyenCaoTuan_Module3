package service.customer.impl;

import model.customer.Customer;
import repository.customer.ICustomerRepository;
import repository.customer.impl.CustomerRepositoryImpl;
import service.customer.ICustomerService;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

public class CustomerServiceImpl implements ICustomerService {
    public static final String REGEX_NAME = "^([A-Z][a-z]*)+(\\s[A-Z][a-z]*)*";
    public static final String REGEX_NUMBER = "^([0-9]{11}|[0-9]{9})";
    public static final String REGEX_CODE_CUSTOMER ="^KH(\\-)[0-9]{4}$";
    public static final String BIRTH_DAY = "(^[0-2]?[0-9]|[3]0|[3]1\\/0[0-9]|1[12]\\/[12][90][0-9][0-9]$)";
    public static final String REGEX_PHONE = "^(090[0-9]{7})|(091[0-9]{7})|(\\(84\\)\\+90[0-9]{7})|(\\(84\\)\\+91[0-9]{7})$";
    public static final String REGEX_EMAIL = "^[A-Za-z0-9+_.-]+@(.+)$";

    public static final String REGEX_ID_VILLA = "^SVVL[-][0-9]+$";
    public static final String REGEX_ID_HOUSE = "^SVHO[-][0-9]+$";
    public static final String REGEX_ID_ROOM = "^SVRO[-][0-9]+$";
    public static final String REGEX_STR = "^[A-Z][a-z]+$";
    public static final String REGEX_AREA = "^([3-9]\\d|[1-9]\\d{2,})$";
    public static final String REGEX_INT = "^[1-9]|([1][0-9])$";

    private ICustomerRepository customerRepository = new CustomerRepositoryImpl();


    @Override
    public List<Customer> selectAllCustomer() {
        return customerRepository.selectAllCustomer();
    }

    @Override
    public Customer selectCustomer(int id) {
        return customerRepository.selectCustomer(id);
    }

    @Override
    public Map<String, String> insertCustomer(Customer customer) {
        Map<String, String> map = new HashMap<>();

        boolean flag = true;
        if (!Pattern.matches(REGEX_NAME,customer.getCustomerName())){
            flag = false;
            map.put("name","Tên phải viết hoa chữ cái đầu");
        }
        if (!Pattern.matches(REGEX_NUMBER,customer.getCustomerIdCard())){
            flag = false;
            map.put("idCard","Chứng minh thư phải có định dạng XXXXXXXXX hoặc XXXXXXXXXXXX (x = 0-9)");
        }
        if (!Pattern.matches(REGEX_PHONE,customer.getCustomerPhone())){
            flag = false;
            map.put("phone","Số điện thoại có định dạng (84)+90xxxxxxx hoặc (84)+91xxxxxxx");
        }
        if (!Pattern.matches(REGEX_EMAIL,customer.getCustomerEmail())){
            flag = false;
            map.put("email","Email phải có định dạng abcxyz@gmail.com");
        }
        if (flag){
            try {
                customerRepository.insertCustomer(customer);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return map;
    }

    @Override
    public Map<String, String> updateCustomer(Customer customer) {
        Map<String, String> map = new HashMap<>();
        boolean flag = true;
        if (!Pattern.matches(REGEX_NAME,customer.getCustomerName())){
            flag = false;
            map.put("name","Tên phải viết hoa chữ cái đầu");
        }
        if (!Pattern.matches(REGEX_NUMBER,customer.getCustomerIdCard())){
            flag = false;
            map.put("idCard","Chứng minh thư phải có định dạng XXXXXXXXX hoặc XXXXXXXXXXXX (x = 0-9)");
        }
        if (!Pattern.matches(REGEX_PHONE,customer.getCustomerPhone())){
            flag = false;
            map.put("phone","Số điện thoại có định dạng (84)+90xxxxxxx hoặc (84)+91xxxxxxx");
        }
        if (!Pattern.matches(REGEX_EMAIL,customer.getCustomerEmail())){
            flag = false;
            map.put("email","Email phải có định dạng abcxyz@gmail.com");
        }
        if (flag){
            try {
                customerRepository.updateCustomer(customer);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return map;
    }


    @Override
    public boolean deleteCustomer(int id) throws SQLException {
        return customerRepository.deleteCustomer(id);
    }

    @Override
    public List<Customer> searchCustomer(String nameSearch) {
        return customerRepository.searchCustomer(nameSearch);
    }
}
