<%-- 
    Document   : clubupdatevalidation
    Created on : Jul 12, 2020, 1:28:47 AM
    Author     : SAIFULAKMAL
--%>

<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>


<%
    
    

String clubid = request.getParameter("id");    
String clubname = request.getParameter("cname");
String clubpname = request.getParameter("cpname");
String clubpphone = request.getParameter("cpphone");
String clubsname = request.getParameter("csname");
String clubsphone = request.getParameter("csphone");


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/eventmanagement", "root", "");
pst = con.prepareStatement("update club set cname = ?, cpname =?, cpphone= ?, csname = ?, csphone =? where id = ? ");

pst.setString(1, clubname);
pst.setString(2, clubpname);
pst.setString(3, clubpphone);
pst.setString(4, clubsname);
pst.setString(5, clubsphone);
pst.setString(6, clubid);

pst.executeUpdate();

out.println("Data Successfuly Updated");

%>
