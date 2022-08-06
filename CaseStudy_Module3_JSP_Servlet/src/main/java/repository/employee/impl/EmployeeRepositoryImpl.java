package repository.employee.impl;

import model.employee.Employee;
import repository.BaseRepository;
import repository.employee.IEmployeeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepositoryImpl implements IEmployeeRepository {

    @Override
    public List<Employee> selectAllEmployee() {
        return null;
    }

    @Override
    public Employee selectEmployee(int id) {
        return null;
    }

    @Override
    public void insertEmployee(Employee employee) throws SQLException {

    }

    @Override
    public boolean updateEmployee(Employee employee) throws SQLException {
        return false;
    }

    @Override
    public boolean deleteEmployee(int id) throws SQLException {
        return false;
    }

    @Override
    public List<Employee> searchEmployee(String keyword) {
        return null;
    }
}
