package com.pelinvarol.webcalculator;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "CalculatorServlet", value = "/calculate")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String operation = "";
        int firstNo, secondNo;

        firstNo = Integer.parseInt(request.getParameter("firstNo"));
        secondNo = Integer.parseInt(request.getParameter("secondNo"));
        operation = request.getParameter("operation");

        int sum = firstNo + secondNo;
        int sub = (firstNo - (secondNo));
        int mul = firstNo * secondNo;
        int div = firstNo / secondNo;
        request.setAttribute("firstNo", firstNo);
        request.setAttribute("secondNo", secondNo);
        request.setAttribute("sum", sum);
        request.setAttribute("sub", sub);
        request.setAttribute("mul", mul);
        request.setAttribute("div", div);

        request.getRequestDispatcher("result.jsp").forward(request, response);
    }



}