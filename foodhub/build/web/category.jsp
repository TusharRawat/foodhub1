
<%@page import="java.util.ArrayList"%>
<%@page import="profiles.profiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="profiles.profilesimpdao"%>
<%@page import="profiles.profilesdao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <title>JSP Page</title>
    </head>
    <body>
        <form action="submit" method="post" enctype="multipart/form-data">
    <center><h1>Products</h1></center>
    
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <input type="text" placeholder="Enter Name" name="username" class="form-control"/>
                 </div>
              </div>
            <br>
            <div class="row">
                <div class="col-lg-12">
                    <input type="text" placeholder="Enter Description" name="username" class="form-control"/>
                </div>
              </div>
            
            
<br>
        <div class="input-group">
  <span class="input-group-addon">₹</span>
  <input type="text" name="username" placeholder="price" class="form-control" aria-label="Amount (to the nearest dollar)">
</div>
          <%
            profilesdao o=new profilesimpdao();
            ArrayList list =(ArrayList)o.getProfiles();
           %>
      
           
           <c:set var="val"   value="<%=list%>" />
             
            <div class="form-group" >
                <br>
            <select class="form-control" name="username" >
         
            <option value="" disabled selected>Choose your option</option>
            <c:forEach var="j" items="${val}">
 
            
            <option value="${j.getDescription()}" data-icon="images/sample-1.jpg" class="circle" >${j.getDescription()}</option>
            </c:forEach>
            </select>
             </div>
  

 
<br>
<input type="file" name="image" accept="image/*">
<div class="row">
                <div class="col-lg-12" style="text-align: center">
                    <input type="submit" value="Submit" class="btn btn-success"/>
                </div>
              </div>

        </div>
        </form>
    </body>
</html>
