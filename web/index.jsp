<%-- 
    Document   : index
    Created on : Jul 11, 2020, 4:38:32 PM
    Author     : SAIFULAKMAL
--%>
        
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-4.5.0-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-4.5.0-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
                img {
                  display: block;
                  margin-left: auto;
                  margin-right: auto;
                }
        </style>

        
        <title>JSP Page</title>
    </head>
    <body>
             <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="index.jsp">Event Management System</a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">         
                      <li class="nav-item">
                        <a class="nav-link" href="club/club.jsp">Create Club</a>                        
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="staff/staff.jsp">Register New Staff</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="event/event.jsp">Create Event</a>
                      </li>                                           
                      <li class="nav-item">
                        <a class="nav-link" href="eventlist/eventlist.jsp">View List of Event</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="student/studentlogin.jsp">Student Login</a>                      
                      </li>
                    </ul>
                  </div>
             </nav>
        <h1 align="center"> Welcome to Event Management System </h1>
        <img src="Image/DxuMgkMUcAAVvl9.jpg" alt=""class="center"/>
         
    </body>
</html>
