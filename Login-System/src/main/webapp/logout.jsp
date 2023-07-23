<!-- logout.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.IOException" %>

<%
    // Invalidate the session and redirect to the login page
    session.invalidate();
    response.sendRedirect("login.jsp");
%>
