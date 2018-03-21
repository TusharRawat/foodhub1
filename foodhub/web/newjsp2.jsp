<%-- 
    Document   : newjsp2
    Created on : Jan 16, 2018, 2:27:18 PM
    Author     : Asus
--%>

<%@page import="java.util.List"%>
<%@page import="profiles.profiles"%>
<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="profiles.profilesimpdao"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <style>
            .table-wrapper-2 {
    display: block;
    max-height:auto  ;
    width: 100%;
    overflow-y: auto    ;
    
    -ms-overflow-style: -ms-autohiding-scrollbar;
}
 
        </style>
        <title>JSP Page</title>
    </head>
   
    <body>
        
        
        
 
       
         
        <% profilesimpdao pd=new profilesimpdao();
           
        List<profiles> list = pd.getProfiles();
        %>
        <div class="card">
    <div class="card-body">

        <div class="table-wrapper-2" >

        
            <table class="table">
                <thead class="thead-dark">
                    <tr>
      
                        <th>Id</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Edit</th>
                        <th>delete</th>
                    </tr>
                </thead>
 
        <%
            for( profiles p : list )
        {
         %>
                <tbody>

                <tr>
     
                    <td><%=p.getId()%></td>
                    <td><%=p.getUsername()%></td>
                    <td><%=p.getDescription()%></td>
                    <td><a href="editjsp.jsp?f_id=<%=p.getId()%>"><i class="material-icons" style="font-size:30px; ">edit</i></a> </td>
                    <td><a href="deletejsp.jsp?f_d_id=<%=p.getId()%>"><i class="material-icons" style="font-size:30px;">delete</i></a></td>
                    
                    
                </tr>
                 </tbody>
            
                <%
                    }
                 %>
            
                </table>               
            
        
        </div>

    </div>
</div>
 </body>
</html>
