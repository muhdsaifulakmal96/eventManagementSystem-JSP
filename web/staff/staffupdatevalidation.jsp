<%-- 
    Document   : clubupdatevalidation
    Created on : Jul 12, 2020, 1:28:47 AM
    Author     : SAIFULAKMAL
--%>

<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>


<%
    
    

String id = request.getParameter("id");    
String staffname = request.getParameter("staffname");
String staffid = request.getParameter("staffid");
String staffphone = request.getParameter("staffphone");
String staffemail = request.getParameter("staffemail");
 


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/eventmanagement", "root", "");
pst = con.prepareStatement("update staffjava set staffname = ?, staffid =?, staffphone= ?, staffemail = ? where id = ? ");

pst.setString(1, staffname);
pst.setString(2, staffid);
pst.setString(3, staffphone);
pst.setString(4, staffemail);
pst.setString(5, id);

pst.executeUpdate();

out.println("Data Successfuly Updated");

%>
