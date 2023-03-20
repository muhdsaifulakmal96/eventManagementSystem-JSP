<%-- 
    Document   : clubupdate
    Created on : Jul 12, 2020, 12:58:09 AM
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
        <h1>Event Edit</h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="post" action="eventupdatevalidation.jsp" align="left">
                   <%  
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;

                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/eventmanagement", "root", "");
                        
                        String id = request.getParameter("id");
                        
                        pst = con.prepareStatement("select * from event where id=?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        

                        while(rs.next())
                        {
                            
                        
                   
                   %>
      
                    <div>
                        <label class="form-label">Event ID:</label>
                        <input type="text" id="id" name="id" placeholder="Club ID" class="form-control" value="<%=rs.getString("id") %>"  required>                    
                    </div>
                    <div>
                        <label class="form-label">Event Name:</label>
                        <input type="text" id="ename" name="ename" placeholder="Event Name" class="form-control" value="<%=rs.getString("ename") %>" required>                    
                    </div>
              
                    <div>
                        <label class="form-label">Event Date:</label>
                        <input type="text" id="edate" name="edate" placeholder="Club Name" class="form-control" value="<%=rs.getString("edate") %>" required>                    
                    </div>
                   <div>
                        <label class="form-label">Event Location:</label>
                        <input type="text" id="eloc" name="eloc" placeholder="President Phone Number" class="form-control" value="<%=rs.getString("eloc") %>" required>                    
                   </div>
                   <div>
                        <label class="form-label">Club:</label>
                        <input type="text" id="club" name="club" placeholder="Supervisor Phone Number" class="form-control" value="<%=rs.getString("club") %>" required>                    
                   </div>
                   <div>
                        <label class="form-label">Organizer Phone:</label>
                        <input type="text" id="ephone" name="ephone" placeholder="Supervisor Phone Number" class="form-control" value="<%=rs.getString("ephone") %>" required>                    
                   </div>
                   <div>
                        <label class="form-label">Validation By:</label>
                        <input type="text" id="staffjava" name="staffjava" placeholder="Validation By" class="form-control" value="<%=rs.getString("staffjava") %>" required>                    
                   </div>
                    <br>
                   <div>                    
                       <input type="submit" name="submit" class="btn btn-info" value="Submit" > 
                       <input type="reset" name="reset" class="btn btn-warning" value="Reset" >   
                   </div>  
                    
                    <% } %>
                </form>
                                
            </div>
            <div class="col-sm-8"
                 
            
            </div>
        
        
        
        
        
    </body>
</html>
