import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ConverterServlet", value = "/display-discount")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException {
        float price  = Float.parseFloat(request.getParameter("price"));
        float percent  = Float.parseFloat(request.getParameter("percent"));

        float amount  = (float) (price * percent * 0.01);
        float discountPrice = price - amount;

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        request.setAttribute("ketQua1",amount);
        request.setAttribute("ketQua2",discountPrice);
        requestDispatcher.forward(request,response);
    }
}

