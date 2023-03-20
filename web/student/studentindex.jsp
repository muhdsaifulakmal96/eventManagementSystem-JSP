<%-- 
    Document   : studentindex
    Created on : Jul 13, 2020, 2:14:59 PM
    Author     : SAIFULAKMAL
--%>

<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
 Connection con;
 PreparedStatement pst;
 ResultSet rs;



%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
           <link href="../bootstrap-4.5.0-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap-4.5.0-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">Event Management System</a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                 <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">         
                      <li class="nav-item">
                        <a class="nav-link" href="studentlogin.jsp">Logout</a>                        
                       
                      </li>                     
                    </ul>
                  </div>
                  
         </nav>
        <br>
        <table>
            <div class="col-sm-8"
                 <div class="panel-body">
                     <table id="tbl-club" class="table table-responsive table-bordered" cellpadding="0" width="100"  >
                         
                         <thead>
                             <tr>
                                 <th>Event Name</th>
                                 <th>Event Date</th>
                                 <th>Event Location</th>
                                 <th>Event Organizer</th>
                                 <th>Validation By</th>
                                 <th>Organizer Phone</th>                                                       
                             </tr>
                         <tbody>
                             <% 
                                
                                
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost/eventmanagement", "root", "");
                                String query1 = "select e.id, e.ename, e.edate, e.eloc, c.cname, s.staffname, e.ephone from event e JOIN club c ON e.club = c.id JOIN staffjava s ON e.staffjava = s.id ";
                                Statement st1 = con.createStatement();
                                rs = st1.executeQuery(query1);
                                while(rs.next())
                                {
                                    String id = rs.getString("id");
                                

                             %>
                             
                             <tr>
                                 <td><%=rs.getString("e.ename") %></td>                            
                                 <td><%=rs.getString("e.edate") %></td>                            
                                 <td><%=rs.getString("e.eloc") %></td>                           
                                 <td><%=rs.getString("c.cname") %></td>                            
                                 <td><%=rs.getString("s.staffname") %></td> 
                                 <td><%=rs.getString("e.ephone") %></td>                                  
                             </tr>
                             
                             <% } %>
                             
                         </tbody>
                             
                             
                         </thead>  
                         
                         
                         
                     </table>
                     
                     
                </div>
            
        </div>
            
            
            
        </table>
    </body>
</html>

        
            
            
            
            
            
            
        
        
        
    </body>
</html>

