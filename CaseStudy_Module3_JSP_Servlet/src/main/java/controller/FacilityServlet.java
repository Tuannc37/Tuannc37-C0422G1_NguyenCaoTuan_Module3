package controller;

import model.customer.Customer;
import model.customer.CustomerType;
import model.employee.Employee;
import model.facility.Facility;
import model.facility.RentType;
import model.facility.ServiceType;
import repository.facility.impl.RentTypeRepositoryImpl;
import repository.facility.impl.ServiceTypeRepositoryImpl;
import service.facility.IFacilityService;
import service.facility.IRentTypeService;
import service.facility.IServiceTypeService;
import service.facility.impl.FacilityServiceImpl;
import service.facility.impl.RentTypeServiceImpl;
import service.facility.impl.ServiceTypeServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "FacilityServlet", value = "/facility")
public class FacilityServlet extends HttpServlet {

    private IFacilityService facilityService = new FacilityServiceImpl();
    private IRentTypeService rentTypeService = new RentTypeServiceImpl();
    private IServiceTypeService serviceTypeService = new ServiceTypeServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                showFormCreate(request,response);
                break;
            case "update":
                showFormUpdate(request,response);
                break;
            default:
                showFacilityList(request,response);
        }
    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                try {
                    save(request,response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "update":
                try {
                    update(request,response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "delete":
                delete(request,response);
                break;
            case "search":
                search(request,response);
                break;
        }
    }

    private void save(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        String serviceName = request.getParameter("serviceName");
        int serviceArea = Integer.parseInt(request.getParameter("serviceArea"));
        double serviceCost = Double.parseDouble(request.getParameter("serviceCost"));
        int serviceMaxPeople = Integer.parseInt(request.getParameter("serviceMaxPeople"));
        int rentTypeId = Integer.parseInt(request.getParameter("rentTypeId"));
        int serviceTypeId = Integer.parseInt(request.getParameter("serviceTypeId"));
        String standardRoom = request.getParameter("standardRoom");
        String description = request.getParameter("description");
        double poolArea = Double.parseDouble(request.getParameter("poolArea"));
        int numberOfFloor = Integer.parseInt(request.getParameter("numberOfFloor"));
        String freeAccompanying = request.getParameter("freeAccompanying");
        Facility facility = new Facility(serviceName,
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
        facilityService.insertFacility(facility);
        showFacilityList(request,response);
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        String serviceName = request.getParameter("serviceName");
        int serviceArea = Integer.parseInt(request.getParameter("serviceArea"));
        double serviceCost = Double.parseDouble(request.getParameter("serviceCost"));
        int serviceMaxPeople = Integer.parseInt(request.getParameter("serviceMaxPeople"));
        int rentTypeId = Integer.parseInt(request.getParameter("rentTypeId"));
        int serviceTypeId = Integer.parseInt(request.getParameter("serviceTypeId"));
        String standardRoom = request.getParameter("standardRoom");
        String description = request.getParameter("description");
        double poolArea = Double.parseDouble(request.getParameter("poolArea"));
        int numberOfFloor = Integer.parseInt(request.getParameter("numberOfFloor"));
        String freeAccompanying = request.getParameter("freeAccompanying");

        Facility facility = new Facility(serviceName, serviceArea, serviceCost,serviceMaxPeople,rentTypeId,serviceTypeId,standardRoom,description,poolArea,numberOfFloor,freeAccompanying);
        facilityService.updateFacility(facility);
        showFacilityList(request,response);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int serviceId = Integer.parseInt(request.getParameter("serviceId"));
        facilityService.deleteFacility(serviceId);
        List<Facility> facilityList = facilityService.selectAllFacility();
        request.setAttribute("facilityList", facilityList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/facility/facility_list.jsp");
        dispatcher.forward(request, response);
    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        String serviceName = request.getParameter("serviceName");
        List<Facility> facilityList = facilityService.searchFacility(serviceName);
        RequestDispatcher requestDispatcher= request.getRequestDispatcher("view/facility/facility_list.jsp");
        request.setAttribute("facilityList",facilityList);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormCreate(HttpServletRequest request, HttpServletResponse response) {
        List<RentType> rentTypeList = rentTypeService.selectAll();
        List<ServiceType> serviceTypeList = serviceTypeService.selectAll();
        request.setAttribute("rentTypeList",rentTypeList);
        request.setAttribute("serviceTypeList",serviceTypeList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/facility/facility_create.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormUpdate(HttpServletRequest request, HttpServletResponse response) {
        int serviceId = Integer.parseInt(request.getParameter("serviceId"));
        Facility exitFacility = facilityService.selectFacility(serviceId);
        List<RentType> rentTypeList = rentTypeService.selectAll();
        List<ServiceType> serviceTypeList = serviceTypeService.selectAll();
        request.setAttribute("typeList",rentTypeList);
        request.setAttribute("facility",exitFacility);
        request.setAttribute("serviceTypeList",serviceTypeList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/facility/facility_edit.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFacilityList(HttpServletRequest request, HttpServletResponse response) {
        List<Facility> facilityList = facilityService.selectAllFacility();
        Map<Integer, String> mapRentType = rentTypeService.selectRentType();
        Map<Integer, String> mapServiceType = serviceTypeService.selectServiceType();
        request.setAttribute("facilityList",facilityList);
        request.setAttribute("mapRentType",mapRentType);
        request.setAttribute("mapServiceType",mapServiceType);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/facility/facility_list.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
