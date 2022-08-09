package service.facility.impl;

import model.facility.Facility;
import repository.facility.IFacilityRepository;
import repository.facility.impl.FacilityRepositoryImpl;
import service.facility.IFacilityService;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

public class FacilityServiceImpl implements IFacilityService {
    private IFacilityRepository facilityRepository = new FacilityRepositoryImpl();
    private final String REGEX_NAME_SERVICE = "^(DV)[-]\\d{4}$";


    @Override
    public List<Facility> selectAllFacility() {
        return facilityRepository.selectAllFacility();
    }

    @Override
    public Facility selectFacility(int id) {
        return facilityRepository.selectFacility(id);
    }

    @Override
    public Map<String, String> insertFacility(Facility facility) {
        Map<String, String> map = new HashMap<>();
        boolean flag = true;
        if (facility.getServiceArea() < 0 || facility.getServiceCost() < 0 || facility.getServiceMaxPeople() < 0 ||
                facility.getPoolArea() < 0 || facility.getNumberOfFloor() < 0){
            flag = false;
            map.put("number","Số nhỏ hơn 0, vui lòng nhập số dương");
        }
        if (flag){
            facilityRepository.insertFacility(facility);
        }
        return map;
    }

    @Override
    public Map<String, String> updateFacility(Facility facility) {
        Map<String, String> map = new HashMap<>();
        boolean flag = true;

        if (facility.getServiceArea() < 0 || facility.getServiceCost() < 0 || facility.getServiceMaxPeople() < 0 ||
                facility.getPoolArea() < 0 || facility.getNumberOfFloor() < 0){
            flag = false;
            map.put("number","Số nhỏ hơn 0, vui lòng nhập số dương");
        }
        if (flag){
            facilityRepository.updateFacility(facility);
        }
        return map;
    }


    @Override
    public boolean deleteFacility(int id) {
        return facilityRepository.deleteFacility(id);
    }

    @Override
    public List<Facility> searchFacility(String keyword) {
        return facilityRepository.searchFacility(keyword);
    }


}
