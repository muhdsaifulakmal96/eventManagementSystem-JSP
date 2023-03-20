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
        <h1>Staff Update</h1>
        <div class="row">
            <div class="col-sm-4">
                <form method="post" action="staffupdatevalidation.jsp" align="left">
                   <%  
                        Connection con;
                        PreparedStatement pst;
                        ResultSet rs;

                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/eventmanagement", "root", "");
                        
                        String id = request.getParameter("id");
                        
                        pst = con.prepareStatement("select * from staffjava where id=?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        

                        while(rs.next())
                        {
                            
                        
                   
                   %>
      
                    <div>
                        <label class="form-label">Staff ID:</label>
                        <input type="text" id="id" name="id" placeholder="ID" class="form-control" value="<%=rs.getString("id") %>"  required>                    
                    </div>
                    
                    
                    <div>
                        <label class="form-label">Staff Name:</label>
                        <input type="text" id="staffname" name="staffname" placeholder="Staff Name" class="form-control" value="<%=rs.getString("staffname") %>" required>                    
                    </div>
                    <div>
                        <label class="form-label">Staff ID:</label>
                        <input type="text" id="staffid" name="staffid" placeholder="Staff ID" class="form-control" value="<%=rs.getString("staffid") %>" required>                    
                    </div>
                   <div>
                        <label class="form-label">Staff Phone:</label>
                        <input type="staffphone" id="cpphone" name="staffphone" placeholder="Staff Phone" class="form-control" value="<%=rs.getString("staffphone") %>" required>                    
                   </div>
                   <div>
                        <label class="form-label">Staff Email:</label>
                        <input type="text" id="csname" name="staffemail" placeholder="Staff Email" class="form-control" value="<%=rs.getString("staffemail") %>" required>                    
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
