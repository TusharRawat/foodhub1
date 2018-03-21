
<%@page import="users.usersdao"%>
<%@page import="users.usersimpdao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 <%
        int a=Integer.parseInt(request.getParameter("f_u_d_id"));
        System.out.println("valu is :"+ a);
        usersdao o=new usersimpdao();
        o.delete(a);
        response.sendRedirect("user2.jsp");
        %>
    </body>
</html>
