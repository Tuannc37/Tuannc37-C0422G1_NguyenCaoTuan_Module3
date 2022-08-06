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

    @Override
    public List<ServiceType> selectAll() {
        return null;
    }

    @Override
    public Map<Integer, String> selectServiceType() {
        return null;
    }
}
