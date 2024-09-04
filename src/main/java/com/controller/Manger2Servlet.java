package com.controller;

import com.service.NewsService;
import com.service.NoticeService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/filter/manger2")
public class Manger2Servlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        var Notices = NoticeService.listNotices();
        req.setAttribute("Newses", Notices);
        req.getRequestDispatcher("/WEB-INF/jsp/manger2.jsp").forward(req, res);
    }
}
