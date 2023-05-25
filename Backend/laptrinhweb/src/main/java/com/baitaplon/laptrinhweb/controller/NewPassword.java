package com.baitaplon.laptrinhweb.controller;

import java.io.IOException;

import com.baitaplon.laptrinhweb.database.UserDao;
import com.baitaplon.laptrinhweb.model.User;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "NewPassword", value = "/newPassword")
public class NewPassword extends HttpServlet {
	private UserDao userDao;

    public void init() {
        userDao = new UserDao();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("email");
        String password = request.getParameter("password");
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        try {
        		if (userDao.updatePassword(user.getUsername(),user.getPassword())){
                    request.setAttribute("status", "resetSuccess");
                    System.out.println("Sucess");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
                else {
                    request.setAttribute("status", "resetFailed");
                    request.getRequestDispatcher("new-password.jsp").forward(request, response);;
                }
        	
		} catch (Exception e) {
			// TODO: handle exception
		}
    }
}
