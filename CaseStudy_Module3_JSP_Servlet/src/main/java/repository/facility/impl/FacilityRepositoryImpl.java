package repository.facility.impl;

import model.customer.Customer;
import model.facility.Facility;
import repository.BaseRepository;
import repository.facility.IFacilityRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FacilityRepositoryImpl implements IFacilityRepository {
    private final String SELECT_ALL_FACILITY = "SELECT * FROM dich_vu";
    private final String SELECT_FACILITY_BY_ID = "SELECT * FROM dich_vu where ma_dich_vu = ?;";
    private final String INSERT_NEW_FACILITY = "insert into dich_vu (ten_dich_vu, dien_tich, chi_phi_thue, so_nguoi_toi_da, ma_kieu_thue, ma_loai_dich_vu, tieu_chuan_phong, mo_ta_tien_nghi_khac,dien_tich_ho_boi,so_tang)\n" +
            "values (?,?,?,?,?,?,?,?,?,?,?);";
    private final String DELETE_FACILITY = "delete from dich_vu where ma_dich_vu = ?;";
    private final String SEARCH_BY_KEYWORD = "select * from dich_vu where ten_dich_vu like ?;";
    private final String UPDATE_FACILITY = "update dich_vu set ten_dich_vu = ?," +
            " dien_tich = ?," +
            " chi_phi_thue = ?," +
            " so_nguoi_toi_da = ?," +
            " ma_kieu_thue = ?," +
            " ma_loai_dich_vu = ?," +
            " tieu_chuan_phong = ?," +
            " mo_ta_tien_nghi_khac = ?," +
            " dien_tich_ho_boi = ?" +
            " so_tang = ?" +
            " where ma_dich_vu = ?;";

    @Override
    public List<Facility> selectAllFacility() {
        List<Facility> facilityList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL_FACILITY);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()){
                int serviceId = resultSet.getInt("ma_dich_vu");
                String serviceName = resultSet.getString("ten_dich_vu");
                int serviceArea = resultSet.getInt("dien_tich");
                double serviceCost = resultSet.getDouble("chi_phi_thue");
                int serviceMaxPeople = resultSet.getInt("so_nguoi_toi_da");
                int rentTypeId = resultSet.getInt("ma_kieu_thue");
                int serviceTypeId = resultSet.getInt("ma_loai_dich_vu");
                String standardRoom = resultSet.getString("tieu_chuan_phong");
                String description = resultSet.getString("mo_ta_tien_nghi_khac");
                double poolArea = resultSet.getDouble("dien_tich_ho_boi");
                int numberOfFloor = resultSet.getInt("so_tang");
                String freeAccompanying = resultSet.getString("dich_vu_mien_phi_di_kem");

                Facility facility = new Facility(serviceId,
                        serviceName,
                        serviceArea,
                        serviceCost,
                        serviceMaxPeople,
                        rentTypeId,
                        serviceTypeId,
                        standardRoom,
                        description,
                        poolArea,
                        numberOfFloor,
                        freeAccompanying);
                facilityList.add(facility);
            }
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
        return facilityList;
    }

    @Override
    public Facility selectFacility(int id) {
        Facility facility = null;
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_FACILITY_BY_ID);
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int serviceId = resultSet.getInt("ma_dich_vu");
                String serviceName = resultSet.getString("ten_dich_vu");
                int serviceArea = resultSet.getInt("dien_tich");
                double serviceCost = resultSet.getDouble("chi_phi_thue");
                int serviceMaxPeople = resultSet.getInt("so_nguoi_toi_da");
                int rentTypeId = resultSet.getInt("ma_kieu_thue");
                int serviceTypeId = resultSet.getInt("ma_loai_dich_vu");
                String standardRoom = resultSet.getString("tieu_chuan_phong");
                String description = resultSet.getString("mo_ta_tien_nghi_khac");
                double poolArea = resultSet.getDouble("dien_tich_ho_boi");
                int numberOfFloor = resultSet.getInt("so_tang");
                String freeAccompanying = resultSet.getString("dich_vu_mien_phi_di_kem");
                facility = new Facility(serviceId,
                        serviceName,
                        serviceArea,
                        serviceCost,
                        serviceMaxPeople,
                        rentTypeId,
                        serviceTypeId,
                        standardRoom,
                        description,
                        poolArea,
                        numberOfFloor,
                        freeAccompanying);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return facility;
    }

    @Override
    public void insertFacility(Facility facility) {
        System.out.println(INSERT_NEW_FACILITY);
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(INSERT_NEW_FACILITY);
            ps.setString(1,facility.getServiceName());
            ps.setInt(2,facility.getServiceArea());
            ps.setDouble(3,facility.getServiceCost());
            ps.setInt(4,facility.getServiceMaxPeople());
            ps.setInt(5,facility.getRentTypeId());
            ps.setInt(6,facility.getServiceTypeId());
            ps.setString(7,facility.getStandardRoom());
            ps.setString(8,facility.getDescription());
            ps.setDouble(9,facility.getPoolArea());
            ps.setInt(10,facility.getNumberOfFloor());
            ps.setString(11,facility.getFreeAccompanying());
            ps.executeUpdate();
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
    }

    @Override
    public boolean updateFacility(Facility facility) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(UPDATE_FACILITY);
            ps.setString(1,facility.getServiceName());
            ps.setInt(2,facility.getServiceArea());
            ps.setDouble(3,facility.getServiceCost());
            ps.setInt(4,facility.getServiceMaxPeople());
            ps.setInt(5,facility.getRentTypeId());
            ps.setInt(6,facility.getServiceTypeId());
            ps.setString(7,facility.getStandardRoom());
            ps.setString(8,facility.getDescription());
            ps.setDouble(9,facility.getPoolArea());
            ps.setInt(10,facility.getNumberOfFloor());
            ps.setString(11,facility.getFreeAccompanying());
            return ps.executeUpdate()>0;
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteFacility(int id) {
        boolean rowDeleted = false;
        Connection connection = BaseRepository.getConnection();
        try { PreparedStatement statement = connection.prepareStatement(DELETE_FACILITY);
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowDeleted;
    }

    @Override
    public List<Facility> searchFacility(String keyword) {
        List<Facility> facilityList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_BY_KEYWORD);
            preparedStatement.setString(1, "%"+keyword+"%");
            System.out.println(preparedStatement);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                int serviceId = resultSet.getInt("ma_dich_vu");
                String serviceName = resultSet.getString("ten_dich_vu");
                int serviceArea = resultSet.getInt("dien_tich");
                double serviceCost = resultSet.getDouble("chi_phi_thue");
                int serviceMaxPeople = resultSet.getInt("so_nguoi_toi_da");
                int rentTypeId = resultSet.getInt("ma_kieu_thue");
                int serviceTypeId = resultSet.getInt("ma_loai_dich_vu");
                String standardRoom = resultSet.getString("tieu_chuan_phong");
                String description = resultSet.getString("mo_ta_tien_nghi_khac");
                double poolArea = resultSet.getDouble("dien_tich_ho_boi");
                int numberOfFloor = resultSet.getInt("so_tang");
                String freeAccompanying = resultSet.getString("dich_vu_mien_phi_di_kem");
                Facility facility = new Facility(serviceId,
                        serviceName,
                        serviceArea,
                        serviceCost,
                        serviceMaxPeople,
                        rentTypeId,
                        serviceTypeId,
                        standardRoom,
                        description,
                        poolArea,
                        numberOfFloor,
                        freeAccompanying);
                facilityList.add(facility);
            }
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
        return facilityList;
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
