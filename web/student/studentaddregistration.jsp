<%-- 
    Document   : studentaddregistration
    Created on : Jul 13, 2020, 6:33:04 PM
    Author     : SAIFULAKMAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>


<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>


<%
    
    

      
String studentuser = request.getParameter("user");
String studentpassword = request.getParameter("password");
String studentrole = request.getParameter("role");
 
 
 


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/eventmanagement", "root", "");
pst = con.prepareStatement("insert into student (user,password,role) values (?,?,?)");

pst.setString(1, studentuser);
pst.setString(2, studentpassword);
pst.setString(3, studentrole);
 
 

pst.executeUpdate();

out.println("Data Successfuly Added");
%>