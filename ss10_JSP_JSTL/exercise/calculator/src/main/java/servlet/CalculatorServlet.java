package servlet;

import model.Calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "CalculatorServlet", value = "/calculate")
public class CalculatorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float firstOperand = Float.parseFloat(request.getParameter("first-operand"));
        float secondOperand = Float.parseFloat(request.getParameter("second-operand"));
        char operator = request.getParameter("operator").charAt(0);

        float result = Calculator.calculate(firstOperand,secondOperand,operator);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("display.jsp");
        request.setAttribute("number1", firstOperand);
        request.setAttribute("number2", secondOperand);
        request.setAttribute("operator", operator);
        request.setAttribute("KetQua",result);
        requestDispatcher.forward(request,response);
    }

}
