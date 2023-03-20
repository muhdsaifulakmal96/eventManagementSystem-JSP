<%-- 
    Document   : login
    Created on : Jul 11, 2020, 4:04:47 PM
    Author     : SAIFULAKMAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-4.5.0-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-4.5.0-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
         
         
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Staff Login</h1>
        
        <div class="row">
            <div class="col-sm-4">
                <form method="POST" action="loginvalidation.jsp">
                    <div align="left">
                        <label class="form-label">Email</label>
                        <input type="text" id="staffemail" name="staffemail" class="form-control" placeholder="Email" size="30px" required>
                    </div>
                    <div align="left">
                        <label class="form-label">Staff ID</label>
                        <input type="password" id="staffid" name="staffid" class="form-control" placeholder="staffID" size="30px" required>
                    </div>
                    </br>
                    <div align="left">
                         <input type="submit" id="submit" name="submit" value="submit" class="btn btn-info">
                         <input type="submit" id="reset" name="reset" value="reset" class="btn btn-warning">
                    </div>
             </form>
                
                
            </div>
            
            <div class="col-sm-4" class="">
                <h1>Event Management System</h1>               
                <img src="Image/DxuMgkMUcAAVvl9.jpg" alt=""/>
            </div>
            
            
            
            
        </div>
        
        
    </body>
</html>
