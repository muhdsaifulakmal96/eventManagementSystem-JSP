<%-- 
    Document   : add
    Created on : Jul 11, 2020, 9:25:37 PM
    Author     : SAIFULAKMAL
--%>


<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>


<%
    
    

      
String eventname = request.getParameter("ename");
String eventdate = request.getParameter("edate");
String eventlocation = request.getParameter("eloc");
String eventorganizer = request.getParameter("club");
String eventvalidation = request.getParameter("staffjava");
String eventphone = request.getParameter("ephone");
 


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/eventmanagement", "root", "");
pst = con.prepareStatement("insert into event(ename,edate,eloc,club,staffjava,ephone) values (?,?,?,?,?,?)");

pst.setString(1, eventname);
pst.setString(2, eventdate);
pst.setString(3, eventlocation);
pst.setString(4, eventorganizer);
pst.setString(5, eventvalidation);
pst.setString(6, eventphone);

pst.executeUpdate();

out.println("Data Successfuly Added");

%>