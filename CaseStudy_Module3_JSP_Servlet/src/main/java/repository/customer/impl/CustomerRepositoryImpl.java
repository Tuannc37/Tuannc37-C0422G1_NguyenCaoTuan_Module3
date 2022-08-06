package repository.customer.impl;

import model.customer.Customer;
import repository.BaseRepository;
import repository.customer.ICustomerRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepositoryImpl implements ICustomerRepository {
    private final String SELECT_ALL_CUSTOMER = "SELECT * FROM khach_hang";
    private final String INSERT_NEW_CUSTOMER = "insert into khach_hang (ma_loai_khach, ho_ten, ngay_sinh, gioi_tinh, so_cmnd, so_dien_thoai, email, dia_chi)\n" +
            "values (?,?,?,?,?,?,?,?);";
    private static final String DELETE_CUSTOMER_SQL = "DELETE FROM khach_hang WHERE ma_khach_hang = ?;";
    private static final String SELECT_CUSTOMER_BY_ID = "SELECT ma_khach_hang, ma_loai_khach, ho_ten, ngay_sinh, gioi_tinh, so_cmnd, so_dien_thoai, email, dia_chi FROM khach_hang WHERE ma_khach_hang =?";
    private final String UPDATE_CUSTOMER = "update khach_hang set ma_loai_khach = ?," +
            " ho_ten = ?," +
            " ngay_sinh = ?," +
            " gioi_tinh = ?," +
            " so_cmnd = ?," +
            " so_dien_thoai = ?," +
            " email = ?," +
            " dia_chi = ?" +
            " where ma_khach_hang = ?;";

    private static final String SELECT_USER_BY_NAME = "SELECT * FROM khach_hang WHERE ho_ten like ?;";




    @Override
    public List<Customer> selectAllCustomer() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int customerId = resultSet.getInt("ma_khach_hang");
                int customerTypeId = resultSet.getInt("ma_loai_khach");
                String customerName = resultSet.getString("ho_ten");
                String customerBirth = resultSet.getString("ngay_sinh");
                int customerGender = resultSet.getInt("gioi_tinh");
                String customerIdCard = resultSet.getString("so_cmnd");
                String customerPhone = resultSet.getString("so_dien_thoai");
                String customerEmail = resultSet.getString("email");
                String customerAddress = resultSet.getString("dia_chi");
                Customer customer = new Customer(customerId,
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

    @Override
    public Customer selectCustomer(int id) {
        Customer customer = null;
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CUSTOMER_BY_ID);
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int customerId = rs.getInt("ma_khach_hang");
                int customerTypeId = rs.getInt("ma_loai_khach");
                String customerName = rs.getString("ho_ten");
                String customerBirth = rs.getString("ngay_sinh");
                int customerGender = rs.getInt("gioi_tinh");
                String customerIdCard = rs.getString("so_cmnd");
                String customerPhone = rs.getString("so_dien_thoai");
                String customerEmail = rs.getString("email");
                String customerAddress = rs.getString("dia_chi");

                customer = new Customer(customerId,
                        customerTypeId,
                        customerName,
                        customerBirth,
                        customerGender,
                        customerIdCard,
                        customerPhone,
                        customerEmail,
                        customerAddress);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return customer;
    }


    @Override
    public void insertCustomer(Customer customer) throws SQLException {
        System.out.println(INSERT_NEW_CUSTOMER);
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(INSERT_NEW_CUSTOMER);
            ps.setInt(1, customer.getCustomerTypeId());
            ps.setString(2, customer.getCustomerName());
            ps.setDate(3, Date.valueOf(customer.getCustomerBirth()));
            ps.setInt(4, customer.getCustomerGender());
            ps.setString(5, customer.getCustomerIdCard());
            ps.setString(6, customer.getCustomerPhone());
            ps.setString(7, customer.getCustomerEmail());
            ps.setString(8, customer.getCustomerAddress());
            System.out.println(ps);
            ps.executeUpdate();
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(UPDATE_CUSTOMER);
            ps.setInt(1, customer.getCustomerTypeId());
            ps.setString(2, customer.getCustomerName());
            ps.setDate(3, Date.valueOf(customer.getCustomerBirth()));
            ps.setInt(4, customer.getCustomerGender());
            ps.setString(5, customer.getCustomerIdCard());
            ps.setString(6, customer.getCustomerPhone());
            ps.setString(7, customer.getCustomerEmail());
            ps.setString(8, customer.getCustomerAddress());
            ps.setInt(9, customer.getCustomerId());
            return ps.executeUpdate()>0;
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteCustomer(int id) throws SQLException {
        boolean rowDeleted = false;
        Connection connection = BaseRepository.getConnection();
        try { PreparedStatement statement = connection.prepareStatement(DELETE_CUSTOMER_SQL);
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowDeleted;
    }

    @Override
    public List<Customer> searchCustomer(String nameSearch) {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_NAME);
            preparedStatement.setString(1, "%"+nameSearch+"%");
            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                int customerId = resultSet.getInt("ma_khach_hang");
                int customerTypeId = resultSet.getInt("ma_loai_khach");
                String customerName = resultSet.getString("ho_ten");
                String customerBirth = resultSet.getString("ngay_sinh");
                int customerGender = resultSet.getInt("gioi_tinh");
                String customerIdCard = resultSet.getString("so_cmnd");
                String customerPhone = resultSet.getString("so_dien_thoai");
                String customerEmail = resultSet.getString("email");
                String customerAddress = resultSet.getString("dia_chi");
                Customer customer = new Customer(customerId,
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

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
