<%-- 
    Document   : club
    Created on : Jul 11, 2020, 5:04:43 PM
    Author     : SAIFULAKMAL
--%>

<%@page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


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
                <a class="navbar-brand" href="../index.jsp">Event Management System</a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">         
                      <li class="nav-item">
                        <a class="nav-link" href="club.jsp">Create Club</a>                        
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="../staff/staff.jsp">Register New Staff</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="../event/event.jsp">Create Event</a>
                      </li>                                           
                      <li class="nav-item">
                        <a class="nav-link" href="../eventlist/eventlist.jsp">View List of Event</a>
                      </li>
                    </ul>
                  </div>
             </nav>
        <h1>Club Registration</h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="post" action="add.jsp" align="left">
                    <div>
                        <label class="form-label">Club Name:</label>
                        <input type="text" id="cname" name="cname" placeholder="Club Name" class="form-control" required>                    
                    </div>
                    <div>
                        <label class="form-label">Club President Name:</label>
                        <input type="text" id="cpname" name="cpname" placeholder="President Name" class="form-control" required>                    
                    </div>
                   <div>
                        <label class="form-label">Club President Phone Number:</label>
                        <input type="text" id="cpphone" name="cpphone" placeholder="President Phone Number" class="form-control" required>                    
                   </div>
                   <div>
                        <label class="form-label">Club Supervisor Name:</label>
                        <input type="text" id="csname" name="csname" placeholder="Supervisor Name" class="form-control" required>                    
                   </div>
                   <div>
                        <label class="form-label">Club Supervisor Phone Number:</label>
                        <input type="text" id="csphone" name="csphone" placeholder="Supervisor Phone Number" class="form-control" required>                    
                   </div>
                    <br>
                   <div>                    
                       <input type="submit" name="submit" class="btn btn-info" value="Submit" > 
                       <input type="reset" name="reset" class="btn btn-warning" value="Reset" >   
                   </div>                                                            
                </form>
                                
            </div>
            <div class="col-sm-8"
                 <div class="panel-body">
                     <table id="tbl-club" class="table table-responsive table-bordered" cellpadding="0" width="100%">
                         
                         <thead>
                             <tr>
                                 <th>Club Name</th>
                                 <th>Club President Name</th>
                                 <th>Club President Phone Number</th>
                                 <th>Club Supervisor Name</th>
                                 <th>Club Supervisor Phone Number</th>
                                 <th>Edit</th>
                                 <th>Delete</th>
                             </tr>
                         <tbody>
                             <% 
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
                                
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost/eventmanagement", "root", "");
                                String query = "select * from club";
                                Statement st = con.createStatement();
                                rs = st.executeQuery(query);
                                while(rs.next())
                                {
                                    String id = rs.getString("id");
                                

                             %>
                             
                             <tr>
                                 <td><%=rs.getString("cname") %></td>                            
                                 <td><%=rs.getString("cpname") %></td>                            
                                 <td><%=rs.getString("cpphone") %></td>                           
                                 <td><%=rs.getString("csname") %></td>                            
                                 <td><%=rs.getString("csphone") %></td>                            
                                 <td><a href="clubupdate.jsp?id=<%=id %> ">Edit</a></td>                             
                                 <td><a href="clubdelete.jsp?id=<%=id %> ">Delete</a></td>
                             </tr>
                             
                             <% } %>
                             
                         </tbody>
                             
                             
                         </thead>  
                         
                         
                         
                     </table>
                     
                     
                </div>
            
        </div>
        
        
        
        
        
    </body>
</html>
