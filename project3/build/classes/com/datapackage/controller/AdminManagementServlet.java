package com.datapackage.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.datapackage.dao.AdminDao;

@WebServlet("/AdminManagementServlet")
public class AdminManagementServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        AdminDao adminDao = new AdminDao();

        try {
            if ("add".equals(action)) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                
                boolean added = adminDao.addAdmin(username, password);
                if (added) {
                    response.sendRedirect("admin/manageAdmins.jsp?success=Admin+added+successfully");
                } else {
                    response.sendRedirect("admin/manageAdmins.jsp?error=Failed+to+add+admin");
                }
            } 
            else if ("update".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                String username = request.getParameter("username");
                String password = request.getParameter("password");

                boolean updated = adminDao.updateAdmin(id, username, password);
                if (updated) {
                    response.sendRedirect("admin/manageAdmins.jsp?success=Admin+updated+successfully");
                } else {
                    response.sendRedirect("admin/manageAdmins.jsp?error=Failed+to+update+admin");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("admin/manageAdmins.jsp?error=An+error+occurred");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        AdminDao adminDao = new AdminDao();

        try {
            if ("delete".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                boolean deleted = adminDao.deleteAdmin(id);
                
                if (deleted) {
                    response.sendRedirect("admin/manageAdmins.jsp?success=Admin+deleted+successfully");
                } else {
                    response.sendRedirect("admin/manageAdmins.jsp?error=Failed+to+delete+admin");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("admin/manageAdmins.jsp?error=An+error+occurred");
        }
    }
}

