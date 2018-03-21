
<%@page import="users.users"%>
<%@page import="users.usersdao"%>
<%@page import="users.usersimpdao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <title>JSP Page</title>
        <style>
            #nav_bar_h
            {
                margin-top: -40px;
                margin-right: -20px;
                 width: 100%;
                
            }
            #form_h
            {
                margin-top:-25px;
            }
            </style>
    </head>
    <body>
<%
    int f_u_id=Integer.parseInt(request.getParameter("f_u_id"));
    System.out.println("value of id :"+f_u_id);
    usersdao ud=new usersimpdao();
   users u=ud.getUsers(f_u_id);

%>
      
<script>
     $(document).ready(function() {
    $('#contact_form').bootstrapValidator({
      
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: 
                {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
                },
            fields: {
            first_name: {
                selector: "#first_name",
                validators: {
                        stringLength:
                                {
                               min: 2
                                },
                        notEmpty: {
                        message: 'Please Fill your first name'
                    }
                }
            },
             last_name: {
                 selector: "#last_name",
                validators: {
                     stringLength: {
                        min: 2,
                    },
                    notEmpty: {
                        message: 'Please Fill your last name'
                    }
                }
            },
             username:{
                 selector: "#username",
                validators:{
                    notEmpty: {
                        message: 'Please Fill This Feild'
                    }
                                    }
            },
           
            
            password:{
                selector: "#password",
                validators: {
                    notEmpty: {
                        message: 'The password is required'
                    }
                    
                }
            },
            conpassword: {
                selector: "#confirm_password",
                validators: {
                    notEmpty: {
                        message: 'The confirm password is required'
                    },
                    identical:{
                    field : 'password',
                        message: 'Confirm Password incorrect !'
                    }
                }
            },
            email: {
                selector: "#email",
                validators: {
                    notEmpty: {
                        message: 'Please Fill your email address'
                    },
                       regexp: {
                        regexp: /^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/,
                        
                            message: 'Please Enter Valid Email '
                    }
                   
                }
            },
            contact:{
                selector: "#contact",
                validators:{
                    notEmpty: {
                        message: 'The Contact No is Required'
                    },
                       regexp: {
                        regexp: /^[7-9]{1}[0-9]{9,9}$/,
                        message: 'Contact Start with Numeric '
                    } 
                }
            }
            }
            
        })
        });
  
</script>
    </head>
    <div class="container-fluid">

    <br />
    <br />
    <body style="background-image: url(http://res.cloudinary.com/dxrvxsdaf/image/upload/c_fit,h_788,w_1400/v1519647198/1920x1080-data_out_35_164298675-food-wallpapers.jpg)">
<div id="nav_bar_h">
    <nav class="navbar navbar-default navbar-inverse" role="navigation" style="width:100%">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
        <a class="navbar-brand" href="#">FoodHub</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="MainHomePage.jsp">Home</a></li>
        <li><a href="aboutus.jsp">About Us</a></li>
         <li><a href="contactus.jsp">Contact Us</a></li>
       
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">veg</a></li>
            <li class="divider"></li>
            <li><a href="#">non veg</a></li>
            <li class="divider"></li>
          </ul>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><p class="navbar-text">Already have an account?</p></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
            <ul id="login-dp" class="dropdown-menu">
                <li>
		 <div class="row">
		<div class="col-md-12">
		Login via
		<div class="social-buttons">
		<a href="https://www.facebook.com" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook </a>
		<a href="https://www.twitter.com" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
                </div>
                 or
		<form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
		<div class="form-group">
		 <label class="sr-only" for="exampleInputEmail2">Email address</label>
		 <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required>
		</div>
		<div class="form-group">
		<label class="sr-only" for="exampleInputPassword2">Password</label>
		<input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
                <div class="help-block text-right"><a href="">Forget the password ?</a></div>
		</div>
		<div class="form-group">
		 <button type="submit" class="btn btn-primary btn-block">Sign in</button>
		</div>
		
                <div class="checkbox">
		<label>
		<input type="checkbox"> keep me logged-in
		</label>
		</div>
		</form>
		</div>
		<div class="bottom text-center">
		New here ? <a href="user1.jsp"><b>Join Us</b></a>
                </div>
		</div>
		</li>
		</ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

        
        <div id="form_h">
        <div class="container">

               <div class="container">
            <div class="container">

                <form class="well form-horizontal" action="up" method="post"  id="contact_form">
<fieldset>

<!-- Form Name -->
<legend><center>Re-Edit</center></legend>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">First Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="username" type="hidden" value="<%=u.getId()%>"/>
  <input  name="username" placeholder="First Name" value="<%=u.getFirst_name()%>" class="form-control" id="first_name" onKeyPress="return ValidateAlpha3(event)" type="text">
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Last Name</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input name="username" placeholder="Last Name" value="<%=u.getLast_name()%>" class="form-control" id="last_name" onKeyPress="return ValidateAlpha3(event)" type="text">
    </div>
  </div>
</div>
    
<!-- Text input-->
       <div class="form-group">
  <label class="col-md-4 control-label">Username</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
        <input name="username" placeholder="Username" value="<%=u.getUsername()%>" class="form-control" id="username"  onKeyPress="return ValidateAlpha3(event)" type="text">
    </div>
  </div>
</div>
 
<!-- Text input-->
       
<div class="form-group">
  <label class="col-md-4 control-label">Password</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
        <input name="username" placeholder="Passsword" value="<%=u.getPassword()%>" class="form-control" id="password" type="password">
    </div>
  </div>
</div>

<!-- Text input-->
 
<div class="form-group">
  <label class="col-md-4 control-label">Confirm Password</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
        <input   placeholder="Re-Enter Password" class="form-control" id="confirm_password"  type="password">
    </div>  
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label">Email</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
        <input name="username" placeholder="Email-address" value="<%=u.getEmail()%>" class="form-control"  id="email" type="text">
    </div>
</div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">Contact No.</label>  
   <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
        <input name="username" placeholder="+91" value="<%=u.getContact_no()%>" class="form-control" id="contact" type="number">
    </div>
  </div>
</div>
<!-- Button -->

<div class="form-group">
          <label class="col-md-4 control-label"></label>
            <div class="col-md-4"><br>
            <button id="b3" type="submit" class="btn btn-success" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
            
            </div>
        </div>

</fieldset>
</form>
</div>
    </div><!-- /.container -->
        </div>
        </div>
    </body>
    
</html>
