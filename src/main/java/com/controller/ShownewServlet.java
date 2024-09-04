package com.controller;

import com.service.NewsService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/shownews")
public class ShownewServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String title = NewsService.findNewsTitle(id);
        String content = NewsService.findNewsContent(id);
        String insertTime = NewsService.findNewsInsertTime(id);
        request.setAttribute("title", title);
        request.setAttribute("content", content);
        request.setAttribute("insertTime", insertTime);
        request.getRequestDispatcher("/WEB-INF/jsp/show.jsp").forward(request, response);
    }
}
