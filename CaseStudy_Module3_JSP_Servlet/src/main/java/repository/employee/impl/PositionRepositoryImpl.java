package repository.employee.impl;

import model.employee.Position;
import repository.BaseRepository;
import repository.employee.IPositionRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PositionRepositoryImpl implements IPositionRepository {

    @Override
    public List<Position> selectAll() {
        return null;
    }

    @Override
    public Map<Integer, String> selectPosition() {
        return null;
    }
}
