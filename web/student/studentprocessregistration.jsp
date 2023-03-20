<%-- 
    Document   : studentprocessregistration
    Created on : Jul 13, 2020, 5:48:40 PM
    Author     : SAIFULAKMAL
--%>


<%@page import="DAO.UserDao"%>
<%@page import="DAO.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String submit = request.getParameter("Submit");

            if (submit.equalsIgnoreCase("Login")) {
                String username = request.getParameter("name");
                String password = request.getParameter("pass");
                String role = request.getParameter("role");

                user obj = UserDao.getLoginBySession(username, password, role);
                if (username.equals(obj.getUser()) && password.equals(obj.getPassword()) && (role.equals((obj.getRole())))) {
                    if (obj.getRole().equals("Student")) {
                        response.sendRedirect("studentindex.jsp");
                    } else if (obj.getRole().equals("role2")) {
                        response.sendRedirect("page2.jsp");
                    } else {
                        response.sendRedirect("studentindex.jsp");
                    }

                } else {
                    response.sendRedirect("studentindex.jsp");
                }

            }

        %>
    </body>
</html>
