<%-- 
    Document   : clubupdatevalidation
    Created on : Jul 12, 2020, 1:28:47 AM
    Author     : SAIFULAKMAL
--%>

<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>


<%
    
    

String eventid = request.getParameter("id");    
String eventname = request.getParameter("ename");
String eventdate = request.getParameter("edate");
String eventloc = request.getParameter("eloc");
String eventclub = request.getParameter("club");
String eventvalidation = request.getParameter("staffjava");
String eventphone = request.getParameter("ephone");


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/eventmanagement", "root", "");
pst = con.prepareStatement("update event set ename = ?, edate =?, eloc= ?, club = ?,staffjava=? , ephone =? where id = ? ");

pst.setString(1, eventname);
pst.setString(2, eventdate);
pst.setString(3, eventloc);
pst.setString(4, eventclub);
pst.setString(5, eventvalidation);
pst.setString(6, eventphone);
pst.setString(7, eventid);

pst.executeUpdate();

out.println("Data Successfuly Updated");

%>
