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
        <h1>Club Update</h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="post" action="clubupdatevalidation.jsp" align="left">
                   <%  
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;

                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/eventmanagement", "root", "");
                        
                        String id = request.getParameter("id");
                        
                        pst = con.prepareStatement("select * from club where id=?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        

                        while(rs.next())
                        {
                            
                        
                   
                   %>
      
                    <div>
                        <label class="form-label">Club ID:</label>
                        <input type="text" id="id" name="id" placeholder="Club ID" class="form-control" value="<%=rs.getString("id") %>"  required>                    
                    </div>
                    
                    
                    <div>
                        <label class="form-label">Club Name:</label>
                        <input type="text" id="cname" name="cname" placeholder="Club Name" class="form-control" value="<%=rs.getString("cname") %>" required>                    
                    </div>
                    <div>
                        <label class="form-label">Club President Name:</label>
                        <input type="text" id="cpname" name="cpname" placeholder="President Name" class="form-control" value="<%=rs.getString("cpname") %>" required>                    
                    </div>
                   <div>
                        <label class="form-label">Club President Phone Number:</label>
                        <input type="text" id="cpphone" name="cpphone" placeholder="President Phone Number" class="form-control" value="<%=rs.getString("cpphone") %>" required>                    
                   </div>
                   <div>
                        <label class="form-label">Club Supervisor Name:</label>
                        <input type="text" id="csname" name="csname" placeholder="Supervisor Name" class="form-control" value="<%=rs.getString("csname") %>" required>                    
                   </div>
                   <div>
                        <label class="form-label">Club Supervisor Phone Number:</label>
                        <input type="text" id="csphone" name="csphone" placeholder="Supervisor Phone Number" class="form-control" value="<%=rs.getString("csphone") %>" required>                    
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
