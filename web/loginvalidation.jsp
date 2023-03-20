<%-- 
    Document   : loginvalidation
    Created on : Jul 11, 2020, 4:31:10 PM
    Author     : SAIFULAKMAL
--%>

<%
    
String staffemail = request.getParameter("staffemail");
String staffid = request.getParameter("staffid");

if(staffemail.equals("ADMIN") && staffid.equals("12345"))
{
    String redirect = "index.jsp";
    response.sendRedirect(redirect);
}
else
{
    out.println("Username or Password incorrect");
}

%>
