package com.controller;

import com.service.NewsService;
import com.service.NoticeService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/shownotices")
public class ShownoticeServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String title = NoticeService.findNoticesTitle(id);
        String content = NoticeService.findNoticesContent(id);
        String insertTime = NoticeService.findNoticesInsertTime(id);
        request.setAttribute("title", title);
        request.setAttribute("content", content);
        request.setAttribute("insertTime", insertTime);
        request.getRequestDispatcher("/WEB-INF/jsp/show.jsp").forward(request, response);
    }
}
