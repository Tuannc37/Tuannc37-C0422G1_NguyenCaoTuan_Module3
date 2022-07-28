package servlet;

import model.Customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "StudentServlet",urlPatterns = {"/customer"})
public class CustomerServlet extends HttpServlet {
    private static List<Customer> customerList = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        customerList.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", "resources/images/anh1.jpg"));
        customerList.add(new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "resources/images/anh2.jpg"));
        customerList.add(new Customer( "Nguyễn Thái Hòa", "1983-08-21", "Nam Định", "resources/images/anh3.jpg"));
        customerList.add(new Customer( "Trần Đăng Khoa", "1983-08-17", "Hà Tây", "resources/images/anh4.jpg"));
        customerList.add(new Customer( "Nguyễn Đình Thi", "1983-08-21", "Hà Nội", "resources/images/anh5.jpg"));
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/customer.jsp");
        request.setAttribute("customerList",customerList);
        requestDispatcher.forward(request,response);
    }
}
