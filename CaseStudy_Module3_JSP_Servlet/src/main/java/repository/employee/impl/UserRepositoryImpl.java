package repository.employee.impl;

import model.employee.User;
import repository.BaseRepository;
import repository.employee.IUserRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class UserRepositoryImpl implements IUserRepository {
    @Override
    public List<User> selectAllUser() {
        return null;
    }

    @Override
    public void insertUser(User user) {

    }
}
