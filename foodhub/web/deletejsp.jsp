<%-- 
    Document   : deletejsp
    Created on : Jan 18, 2018, 4:44:04 PM
    Author     : Asus
--%>

 <%@page import="profiles.profilesdao"%>
<%@page import="profiles.profiles"%>
 <%@page import="profiles.profilesimpdao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <%
        int a=Integer.parseInt(request.getParameter("f_d_id"));
        System.out.println("valu is :"+ a);
        profilesdao o=new profilesimpdao();
        o.delete(a);
        response.sendRedirect("newjsp2.jsp");
        %>
     </body>
</html>
