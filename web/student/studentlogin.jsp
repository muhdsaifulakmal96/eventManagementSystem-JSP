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
        <link href="../bootstrap-4.5.0-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap-4.5.0-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <title>JSP Page</title>
    </head>
    <body>
        <h1>Student Login</h1>

        <div class="row">
            <div class="col-sm-4">
                <form method="POST" action="studentprocessregistration.jsp">
                    <div align="left">
                        <label class="form-label">Student Username</label>
                        <input type="text" id="name" name="name" class="form-control" placeholder="Username" size="30px" required>
                    </div>
                    <div align="left">
                        <label class="form-label">Password</label>
                        <input type="password" id="pass" name="pass" class="form-control" placeholder="Password" size="30px" required>
                    </div>
                    <br>
                    <div align="left">
                        <tr>
                            <td>
                                Role:
                            </td>
                            <td>
                                <select name="role">
                                    <option>
                                        Student
                                    </option>
                                </select>
                            </td>
                        </tr>   
                    </div>
                    </br>
                    <div align="left">
                         <input type="submit" id="Submit" name="Submit" value="Login" class="btn btn-info">                     
                    </div>
                </form>
                  <li class="nav-item">
                        <a class="nav-link" href="studentregistration.jsp">Register New Login</a>
                  </li>
                  
                  <li class="nav-item">
                        <a class="nav-link" href="../login.jsp">Staff Login</a>
                  </li>
                  
            </div>

            <div class="col-sm-4" class="">
                <h1>Event Management System</h1>               
                <img src="../Image/DxuMgkMUcAAVvl9.jpg" alt=""/>
            </div>




        </div>


    </body>
</html>
