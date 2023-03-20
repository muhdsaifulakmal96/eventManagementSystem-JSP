<%-- 
    Document   : clubdelete
    Created on : Jul 12, 2020, 12:58:28 AM
    Author     : SAIFULAKMAL
--%>

<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>


<%
    
    

String clubid = request.getParameter("id");    



Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/eventmanagement", "root", "");
pst = con.prepareStatement("delete from staffjava where id= ? ");

pst.setString(1, clubid);
pst.executeUpdate();

out.println("Data Successfuly Deleted");

%>