package repository.facility.impl;

import model.facility.ServiceType;
import repository.BaseRepository;
import repository.facility.IServiceTypeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ServiceTypeRepositoryImpl implements IServiceTypeRepository {
    private final String SELECT_SERVICE_TYPE = "select * from `loai_dich_vu`;";

    @Override
    public List<ServiceType> selectAll() {
        List<ServiceType> serviceTypeList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_SERVICE_TYPE);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()){
                int serviceTypeId = resultSet.getInt("ma_loai_dich_vu");
                String serviceTypeName = resultSet.getString("ten_loai_dich_vu");
                ServiceType serviceType = new ServiceType(serviceTypeId,serviceTypeName);
                serviceTypeList.add(serviceType);
            }
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
        return serviceTypeList;
    }

    @Override
    public Map<Integer, String> selectServiceType() {
        return null;
    }
}
