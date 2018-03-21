
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        	<link rel="stylesheet" type="text/css" href="newcss.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

   	
        
    </head>
    <body>
        <br>
        <h1><center>Welcome To Add Description Page</center></h1>
        <br>
        <br>
       <div id="register" class="animate form">
                            <form  action="add" autocomplete="on"> 
                                <p> 
                                    <label for="usernamesignup" class="uname" >Your username</label>
                                    <input id="username" name="usernamesignup" required="required" type="text" placeholder="Enter User Name" />
                                </p>
                                <p> 
               <label for="description" class="youcat"  > Your Category</label>
   <input id="username" name="categorysignup" required="required" type="text" placeholder="Enter The Description"/> 
          </p>                                      
                                            <div class="row">
                <div class="col-lg-12" style="text-align: center">
                    <input type="submit" value="submit" class="btn btn-success"/>
                </div>
              </div>

                               </form>
                        </div>
						
                 
        </body>
</html>
