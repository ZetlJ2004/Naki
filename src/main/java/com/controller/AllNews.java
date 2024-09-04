package com.controller;

import com.service.NewsService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/allnews")
public class AllNews extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        var Newses = NewsService.listNewses();
        req.setAttribute("Newses", Newses);
        req.getRequestDispatcher("/WEB-INF/jsp/allnews.jsp").forward(req, res);
    }
}
