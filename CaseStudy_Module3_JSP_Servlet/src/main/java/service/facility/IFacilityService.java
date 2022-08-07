package service.facility;

import model.facility.Facility;

import java.util.List;
import java.util.Map;

public interface IFacilityService {


    public List<Facility> selectAllFacility();

    public Facility selectFacility(int id);

    public void insertFacility(Facility facility);

    public boolean updateFacility(Facility facility);

    public boolean deleteFacility(int id);

    public List<Facility> searchFacility(String keyword);

}
