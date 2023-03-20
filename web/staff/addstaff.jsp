<%-- 
    Document   : add
    Created on : Jul 11, 2020, 9:25:37 PM
    Author     : SAIFULAKMAL
--%>
<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>


<%
    
    

      
String staffname = request.getParameter("staffname");
String staffid = request.getParameter("staffid");
String staffphone = request.getParameter("staffphone");
String staffemail = request.getParameter("staffemail");
 
 


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/eventmanagement", "root", "");
pst = con.prepareStatement("insert into staffjava (staffname,staffid,staffphone	,staffemail) values (?,?,?,?)");

pst.setString(1, staffname);
pst.setString(2, staffid);
pst.setString(3, staffphone);
pst.setString(4, staffemail);
 

pst.executeUpdate();

out.println("Data Successfuly Added");

%>