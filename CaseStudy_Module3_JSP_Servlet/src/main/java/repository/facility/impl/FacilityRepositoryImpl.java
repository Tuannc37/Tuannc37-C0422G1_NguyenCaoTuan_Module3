package repository.facility.impl;

import model.facility.Facility;
import repository.BaseRepository;
import repository.facility.IFacilityRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FacilityRepositoryImpl implements IFacilityRepository {

    @Override
    public List<Facility> selectAllFacility() {
        return null;
    }

    @Override
    public Facility selectEmployee(int id) {
        return null;
    }

    @Override
    public void insertFacility(Facility facility) {

    }

    @Override
    public boolean updateFacility(Facility facility) {
        return false;
    }

    @Override
    public boolean deleteFacility(int id) {
        return false;
    }

    @Override
    public List<Facility> searchFacility(String keyword) {
        return null;
    }
}
