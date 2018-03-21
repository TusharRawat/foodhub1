<%-- 
    Document   : editjsp
    Created on : Jan 17, 2018, 9:21:08 PM
    Author     : Asus
--%>

<%@page import="profiles.profilesdao"%>
<%@page import="java.util.List"%>
<%@page import="profiles.profiles"%>
<%@page import="profiles.profilesimpdao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <title>JSP Page</title>
    </head>
    <body>
        
      
          <br>
    <center><h1>Re Edit The Data</h1></center>
        <br>
        <br>
           <%
                int f_id=Integer.parseInt(request.getParameter("f_id"));
                profilesdao pd=new profilesimpdao();
               profiles p= pd.getProfiles(f_id);
                 
            %>
            
        <div class="container">
         <form action="update" method="post">
             
            <div class="row">
                <div class="col-lg-12">
                    <input type="hidden" name="username" value="<%=p.getId()%>">
                    <input type="text" placeholder="Enter Name" name="username" value="<%=p.getUsername()%>"  class="form-control"/>
                 </div>
              </div>
            <br>
            
            <div class="row">
                <div class="col-lg-12">
                    <input type="text" placeholder="Enter Description" name="username" value="<%=p.getDescription()%>"  class="form-control"/>
                </div>
              </div>
                
            <br>
            <div class="row">
                <div class="col-lg-12" style="text-align: center">
                    <input type="submit" value="update" class="btn btn-success"/>
                </div>
              </div>
        </form>
        </div>
         
    </body>
</html>
