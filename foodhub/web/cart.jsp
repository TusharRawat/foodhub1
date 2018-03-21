<%@page import="cart.cart"%>
<%@page import="java.util.List"%>
<%@page import="cart.cartdao"%>
<%@page import="cart.cartimpdao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
              <%
          
          cartdao ctd=new cartimpdao();
          List<cart> lc=ctd.getCart();
         %>
                 <div class="card">
    <div class="card-body">

        <div class="table-wrapper-2" >

        
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        
                        <th>Image</th>
                        <th>Product_Name</th>
                        <th>Description</th>
                        <th>Price</th>
                        
                        <th>Quantity</th>
                        
                        <th>Delete</th>
                    </tr>
                </thead>
                                <tbody>

         <%
             for(cart cnn : lc )
        {
            
         %>
 
                <tr class="delete_cart<%=cnn.getId()%>" id="ajax_id">
     
                    
                    
                    <td><img style="width:100%;height: auto;" id="ajax_image"></td>
                    
                    <td id="ajax_food_item"></td>
                    <td id="ajax_description"></td>
                    <td id="ajax_price"></td>
                    <td id="ajax_quantity"></td>
                    <td><a href=# id="<%=cnn.getId()%>"><i class="material-icons" style="font-size:30px;">delete</i></a></td>
                    <script>
              $(document).ready(function() {
        $("#<%=cnn.getId()%>").click(function() {
            var id = "<%=cnn.getId()%>";
            
            if (confirm("Are You Sure Want to Delete This?")) {
                $.ajax({
                    type: "POST",
                    url: "del_cart",
                    data: ({
                        id: id
                    }),
                    cache: false,
                    success: function(html) {
                        $(".delete_cart" + id).fadeOut('slow');
                    }
                });
            } else {
                return false;
            }
        });
    });
            </script>
        
                    
                </tr>
             <%
                    }
                 %>
            
                  </tbody>
               
                </table>               
                

    </body>
</html>
