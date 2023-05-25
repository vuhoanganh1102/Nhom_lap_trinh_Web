package com.baitaplon.laptrinhweb.controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet(name = "ValidateOTP", value = "/ValidateOTP")
public class ValidateOTP extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String first = request.getParameter("first");
        String second = request.getParameter("second");
        String third = request.getParameter("third");
        String fourth = request.getParameter("fourth");
        String fifth = request.getParameter("fifth");
        String sixth = request.getParameter("sixth");

        String result = first + second + third + fourth + fifth + sixth;
        HttpSession session=request.getSession();
        int otp=(int)session.getAttribute("otp");
        RequestDispatcher dispatcher=null;


        if (result.equals(otp+""))
        {

            request.setAttribute("email", request.getParameter("email"));
            dispatcher=request.getRequestDispatcher("new-password.jsp");
            dispatcher.forward(request, response);

        }
        else
        {
            request.setAttribute("validate","OTP is wrong. Please re-enter.");
            dispatcher=request.getRequestDispatcher("otp.jsp");
            dispatcher.forward(request, response);

        }
    }
}