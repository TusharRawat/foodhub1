
<%@page import="java.util.List"%>
<%@page import="users.users"%>
<%@page import="users.usersimpdao"%>
<%@page import="users.usersdao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
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
    <body style="background-image: url(http://res.cloudinary.com/dxrvxsdaf/image/upload/c_fit,h_788,w_1400/v1519647198/1920x1080-data_out_35_164298675-food-wallpapers.jpg)">
        <%
        usersdao ud=new usersimpdao();
        List<users> list=ud.getUsers();
        %>
        <div class="card" style="opacity: 0.9">
    <div class="card-body">

        <div class="table-wrapper-2" >

        
            <table class="table">
                <thead class="thead-dark">
                    <tr>
      
                        <th>Id</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Username</th>
                        <th>Password</th>
                        <th>Email</th>
                        <th>Contact No</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
 
        <%
            for( users u : list )
        {
         %>
                <tbody>

                <tr>
     
                    <td><%=u.getId()%></td>
                    <td><%=u.getFirst_name()%></td>
                    <td><%=u.getLast_name()%></td>
                    <td><%=u.getUsername()%></td>
                    <td><%=u.getPassword()%></td>
                     <td><%=u.getEmail()%></td>
                    <td><%=u.getContact_no()%></td>
                      <td><a href="edu.jsp?f_u_id=<%=u.getId()%>" style="color: #228c08;" ><i class="material-icons" style="font-size:30px; ">edit</i></a> </td>
                      <td><a href="delu.jsp?f_u_d_id=<%=u.getId()%>"  style="color: #cc0000"><i class="material-icons" style="font-size:30px;">delete</i></a></td>
                  
                    
                    
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
