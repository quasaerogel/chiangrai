<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
       
        if((username.equals("admin") && password.equals("1234")))
            {
            session.setAttribute("username",username);
            response.sendRedirect("index.jsp");
            }
        else
            response.sendRedirect("error.jsp");
%>
