package service.impl_service;

import model.User;
import repository.IUserRepository;
import repository.impl_repository.UserRepository;
import service.IUserService;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService {
    private IUserRepository userRepository = new UserRepository();

    @Override
    public List<User> selectAllUsers() {
        return userRepository.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return userRepository.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return userRepository.updateUser(user);
    }

    @Override
    public User getUserById(int id) {
        return userRepository.getUserById(id);
    }

    @Override
    public void insertUserStore(User user) throws SQLException {
        userRepository.insertUserStore(user);
    }

    @Override
    public List<User> findCountry(String country) throws SQLException {
        return userRepository.findCountry(country);
    }

    @Override
    public List<User> sortByNameUser() throws SQLException {
        return userRepository.sortByNameUser();
    }
}
