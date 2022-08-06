package repository.facility.impl;

import model.facility.RentType;
import repository.BaseRepository;
import repository.facility.IRentTypeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class RentTypeRepositoryImpl implements IRentTypeRepository {

    @Override
    public List<RentType> selectAll() {
        return null;
    }

    @Override
    public Map<Integer, String> selectRentType() {
        return null;
    }
}
