package service.facility;

import model.facility.RentType;

import java.util.List;
import java.util.Map;

public interface IRentTypeService {

    public List<RentType> selectAll();

    public Map<Integer, String> selectRentType();

}
