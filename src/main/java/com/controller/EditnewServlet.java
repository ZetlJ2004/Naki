package com.controller;

import com.service.NewsService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/editnew")
public class EditnewServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String title = NewsService.findNewsTitle(id);
        String content = NewsService.findNewsContent(id);
        request.setAttribute("title", title);
        request.setAttribute("content", content);
        request.setAttribute("id", id);
        request.getRequestDispatcher("/WEB-INF/jsp/editnew.jsp").forward(request, response);
    }
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        NewsService.updateNews(title, content,id);
        resp.sendRedirect(req.getContextPath() + "/filter/manger");
    }
}
