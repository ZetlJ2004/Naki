package com.controller;

import com.entity.Admin;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/filter/login")
public class LoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(req, resp);
    }
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        String url;
        if(name.equals("admin") && password.equals("admin")) {
            Admin admin = new Admin();
            req.getSession().setAttribute("admin", admin);
            url = "/filter/manger";
        }else{
            url = "/filter/login";
        }
        resp.sendRedirect(req.getContextPath()+url);
    }
}
