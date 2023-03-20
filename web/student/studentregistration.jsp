<%-- 
    Document   : studentregistration
    Created on : Jul 13, 2020, 3:48:56 PM
    Author     : SAIFULAKMAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Account</title>
        
        <link href="../bootstrap-4.5.0-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../bootstrap-4.5.0-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="regbox box">
                <img class="avatar" >
                <h1>
                    Register Student Account</h1>
                <form action="studentaddregistration.jsp" method="post">
                    <p>Student Name</p>
                    <input type="text" placeholder="Username" id="name" name="user" required>                    
                    <p>Password</p>
                    <input type="password" placeholder="Password" id="pass" name="password" required>
                    <br>
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
                    <br>
                    <input type="submit" value="Register" name="submit"class="btn btn-info">
                    <br>
                    <a href="studentlogin.jsp">Already have Account?</a>
                </form>
            </div>
        </div>
    </body>
</html>
