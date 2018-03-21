
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="profiles.profiles"%>
<%@page import="profiles.profilesdao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="profiles.profilesimpdao"%>
<%@page import="category.category"%>
<%@page import="category.categoryimpdao"%>
<%@page import="category.categorydao"%>
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
    <center><h1>Re-Edit The Data</h1></center>
    <%!ArrayList<profiles> list;%>
    <%
    int f_c_id=Integer.parseInt(request.getParameter("f_c_id"));
    categorydao cd=new categoryimpdao();
    category c=cd.getCategory(f_c_id);
           %>
                      
    <form action="updateproduct" method="post">
    
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <input type="hidden"  name="username" value="<%=c.getId()%>"/>
            
                    <input type="text" placeholder="Enter Name" name="username" value="<%=c.getUsername()%>" class="form-control"/>
                 </div>
              </div>
            <br>
            <div class="row">
                <div class="col-lg-12">
                    <input type="text" placeholder="Enter Description" name="username" value="<%=c.getDescription()%>" class="form-control"/>
                </div>
              </div>
            
            
<br>
            <div class="input-group">
  <span class="input-group-addon">₹</span>
  <input type="text" name="username" placeholder="price"  value="<%=c.getPrice()%>" class="form-control" aria-label="Amount (to the nearest dollar)">
</div>


          <%
            profilesdao o=new profilesimpdao();
            ArrayList list =(ArrayList)o.getProfiles();
           %>

    <div class="form-group">
        <br>
      <select class="form-control" name="username" >
          <option value="" disabled selected ><%=c.getCategory()%></option>
          <option value="" disabled delected>choose your option</option>
         
          <c:set var="val" value="<%=list%>"/>
             <c:forEach var="j" items="${val}">
 
            
            <option value="${j.getDescription()}" data-icon="images/sample-1.jpg" class="circle" >${j.getDescription()}</option>
      
            </c:forEach>
            </select>
           </div>
        <br>
        <div class="row">
             <div class="col-lg-12" style="text-align: center">
              <input type="submit" value="update" class="btn btn-success"/>
             </div>
         </div>

    </div>
        </form>

        
    </body>
</html>
