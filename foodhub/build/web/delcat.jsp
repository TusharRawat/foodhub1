
<%@page import="category.categoryimpdao"%>
<%@page import="category.categorydao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
int f_c_d_id= Integer.parseInt(request.getParameter("f_c_d_id")) ;
System.out.println("the value is"+f_c_d_id);
categorydao cd=new categoryimpdao();
cd.delete(f_c_d_id);
response.sendRedirect("category2.jsp");

%>
    </body>
</html>
