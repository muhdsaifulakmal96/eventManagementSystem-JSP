<%-- 
    Document   : club
    Created on : Jul 11, 2020, 5:04:43 PM
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
                <a class="navbar-brand" href="../index.jsp">Event Management System</a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">         
                      <li class="nav-item">
                        <a class="nav-link" href="../club/club.jsp">Create Club</a>                        
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
        <h1>Event Registration</h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="post" action="addevent.jsp" align="left">
                    <div>
                        <label class="form-label">Event Name:</label>
                        <input type="text" id="ename" name="ename" placeholder="Event Name" class="form-control" required>                    
                    </div>
                    <div>
                        <label class="form-label">Event Date:</label>
                        <input type="text" id="edate" name="edate" placeholder="Event Date" class="form-control" required>                    
                    </div>
                   <div>
                        <label class="form-label">Event Location:</label>
                        <input type="text" id="eloc" name="eloc" placeholder="Event Location" class="form-control" required>                    
                   </div>
                   <div>
                        <label class="form-label">Event Organizer:</label>
                        <select  id="club" name="club" class="form-control">
                            <% 
   
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/eventmanagement", "root", "");
                            
                            String query = "select * from club";
                            Statement st = con.createStatement();
                            rs = st.executeQuery(query);
                            

                            while(rs.next())
                            {
                                String id = rs.getString("id");
                                String clubname = rs.getString("cname");
                             %>   
                            
                             <option value="<%=id %>"><%=clubname %></option>
                             <%
                            
                            }
                            
                            %>

                          
                        </select>                   
                   </div>
                    <div>
                        <label class="form-label">Organizer Phone:</label>
                        <input type="text" id="ephone" name="ephone" placeholder="Organizer Phone" class="form-control" required>                    
                   </div>
                   <div>
                        <label class="form-label">Validate By:</label>
                        <select  id="club" name="staffjava" class="form-control">
                            <% 
   
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/eventmanagement", "root", "");
                            
                            String query2 = "select * from staffjava";
                            Statement st2 = con.createStatement();
                            rs = st.executeQuery(query2);
                            

                            while(rs.next())
                            {
                                String id = rs.getString("id");
                                String clubname = rs.getString("staffname");
                             %>   
                            
                             <option value="<%=id %>"><%=clubname %></option>
                             <%
                            
                            }
                            
                            %>

                          
                        </select>                   
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
                                 <th>Event Name</th>
                                 <th>Event Date</th>
                                 <th>Event Location</th>
                                 <th>Event Organizer</th>
                                 <th>Validation By</th>
                                 <th>Organizer Phone</th>                       
                                 <th>Edit</th>
                                 <th>Delete</th>
                             </tr>
                         <tbody>
                             <% 
                                
                                
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost/eventmanagement", "root", "");
                                String query1 = "select e.id, e.ename, e.edate, e.eloc, c.cname, s.staffname, e.ephone from event e JOIN club c ON e.club = c.id JOIN staffjava s ON e.staffjava = s.id ";
                                Statement st1 = con.createStatement();
                                rs = st.executeQuery(query1);
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
                                 <td><a href="eventupdate.jsp?id=<%=id %> ">Edit</a></td>                             
                                 <td><a href="eventdelete.jsp?id=<%=id %> ">Delete</a></td>
                             </tr>
                             
                             <% } %>
                             
                         </tbody>
                             
                             
                         </thead>  
                         
                         
                         
                     </table>
                     
                     
                </div>
            
        </div>
        
        
        
        
        
    </body>
</html>
