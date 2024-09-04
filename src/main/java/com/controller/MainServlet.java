package com.controller;

import com.service.NewsService;
import com.service.NoticeService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/main")
public class MainServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        var Newses = NewsService.listNewses();
        req.setAttribute("Newses", Newses);
        var Notices = NoticeService.listNotices();
        req.setAttribute("Notices", Notices);
        req.getRequestDispatcher("/WEB-INF/jsp/main.jsp").forward(req, res);
    }
}
