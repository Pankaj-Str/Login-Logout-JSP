<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.HashMap" %>
    <%@ page import="java.util.Map" %>
    <%@ page import="java.io.PrintWriter" %>
    <%@ page import="java.io.IOException" %>
    
    <!-- loginHandler.jsp -->

    <%
    // Simulate a user database (not recommended for production use)
    Map<String, String> users = new HashMap<>();
    users.put("user1", "password1");
    users.put("user2", "password2");
    // Add more users as needed.

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if (username != null && password != null) {
        String storedPassword = users.get(username);
        if (storedPassword != null && storedPassword.equals(password)) {
            // Login successful, create a session
            session.setAttribute("username", username);
            response.sendRedirect("welcome.jsp");
        } else {
            // Login failed, redirect back to login page
            response.sendRedirect("login.jsp");
            
        }
    } else {
        // Invalid request, redirect back to login page
        response.sendRedirect("login.jsp");
    }
%>