<%-- 
    Document   : add
    Created on : Jul 11, 2020, 9:25:37 PM
    Author     : SAIFULAKMAL
--%>

<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>


<%
    
    

      
String clubname = request.getParameter("cname");
String clubpname = request.getParameter("cpname");
String clubpphone = request.getParameter("cpphone");
String clubsname = request.getParameter("csname");
String clubsphone = request.getParameter("csphone");


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/eventmanagement", "root", "");
pst = con.prepareStatement("insert into club(cname,cpname,cpphone,csname,csphone) values (?,?,?,?,?)");

pst.setString(1, clubname);
pst.setString(2, clubpname);
pst.setString(3, clubpphone);
pst.setString(4, clubsname);
pst.setString(5, clubsphone);

pst.executeUpdate();

out.println("Data Successfuly Added");

%>