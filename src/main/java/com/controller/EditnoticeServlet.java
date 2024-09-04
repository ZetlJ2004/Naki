package com.controller;

import com.service.NoticeService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/editnotice")
public class EditnoticeServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String title = NoticeService.findNoticesTitle(id);
        String content = NoticeService.findNoticesContent(id);
        request.setAttribute("title", title);
        request.setAttribute("content", content);
        request.setAttribute("id", id);
        request.getRequestDispatcher("/WEB-INF/jsp/editnotice.jsp").forward(request, response);
    }
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        NoticeService.updateNotices(title, content,id);
        resp.sendRedirect(req.getContextPath() + "/filter/manger2");
    }
}
