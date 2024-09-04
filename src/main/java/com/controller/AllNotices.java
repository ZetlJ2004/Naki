package com.controller;

import com.service.NewsService;
import com.service.NoticeService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/allnotices")
public class AllNotices extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        var Notices = NoticeService.listNotices();
        req.setAttribute("Notices", Notices);
        req.getRequestDispatcher("/WEB-INF/jsp/allnotices.jsp").forward(req, res);
    }
}
