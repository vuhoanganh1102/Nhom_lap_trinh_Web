package com.baitaplon.laptrinhweb.controller;

import com.baitaplon.laptrinhweb.database.UserDao;
import com.baitaplon.laptrinhweb.model.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(urlPatterns={"/signup"})
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDao userDao;

    public void init() {
        userDao = new UserDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/sign-up.jsp";
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String contact = request.getParameter("contact");
        User user = new User();
        user.setFirstName(firstname);
        user.setLastName(lastname);
        user.setUsername(username);
        user.setPassword(password);
        user.setContact(contact);
        // Kiểm tra số điện thoại
        if (!user.getContact().matches("\\d{10}")) {
            // Nếu số điện thoại không hợp lệ, hiển thị thông báo lỗi
            request.setAttribute("errorMessage", "Số điện thoại không hợp lệ!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/sign-up.jsp");
            dispatcher.forward(request, response);
            return;
        }

        try {
            // Kiểm tra email
            if (userDao.fingByUsername(user.getUsername())!=null) {
                // Nếu email không hợp lệ, hiển thị thông báo lỗi
                request.setAttribute("errorMessage", "Email đã tồn tại!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/sign-up.jsp");
                dispatcher.forward(request, response);
                return;
            }
            if (userDao.singup(user)) {
                //HttpSession session = request.getSession();
                // session.setAttribute("username",username);
                url = "/login.jsp";
            } else {
                HttpSession session = request.getSession();
                request.setAttribute("loginfailed","Email đã tồn tại");
                //session.setAttribute("user", username);
                //response.sendRedirect("login.jsp");
                url="/signupfailed.jsp";
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("sign-up.jsp").forward(request, response);
        doPost(request, response);
    }
}
