
<%@page import="category.category"%>
<%@page import="java.util.List"%>
<%@page import="category.categoryimpdao"%>
<%@page import="category.categorydao"%>
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
    <body>
        <%
        categoryimpdao cp=new categoryimpdao();
        List<category> list=cp.getCategory();
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
                        <th>Price</th>
                        <th>Category</th>
                        <th>Edit</th>
                        <th>delete</th>
                    </tr>
                </thead>
 
        <%
            for( category c : list )
        {
         %>
                <tbody>

                <tr>
     
                    <td><%=c.getId()%></td>
                    <td><%=c.getUsername()%></td>
                    <td><%=c.getDescription()%></td>
                    <td><%=c.getPrice()%></td>
                    <td><%=c.getCategory()%></td>
                    <td><a href="edcat.jsp?f_c_id=<%=c.getId()%>"><i class="material-icons" style="font-size:30px; ">edit</i></a> </td>
                    <td><a href="delcat.jsp?f_c_d_id=<%=c.getId()%>"><i class="material-icons" style="font-size:30px;">delete</i></a></td>
                    
                    
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
