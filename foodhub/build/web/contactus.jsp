
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <meta charset="UTF-8">
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
#nav_bar_h
{
    margin-top: -5px;
    padding: -5px;
}    
#contact_us
{
    
   
    margin-top: -70px;
}

#login-dp
{
    min-width: 250px;
    padding: 14px 14px 0;
    overflow:hidden;
    background-color:rgba(255,255,255,.8);
}
#login-dp .help-block
{
    font-size:12px    
}
#login-dp .bottom
{
    background-color:rgba(255,255,255,.8);
    border-top:1px solid #ddd;
    clear:both;
    padding:14px;
}
#login-dp .social-buttons
{
    margin:12px 0    
}
#login-dp .social-buttons a
{
    width: 49%;
}
#login-dp .form-group
{
    margin-bottom: 10px;
}
.btn-fb
{
    color: #fff;
    background-color:#3b5998;
}
.btn-fb:hover
{
    color: #fff;
    background-color:#496ebc 
}
.btn-tw
{
    color: #fff;
    background-color:#55acee;
}
.btn-tw:hover
{
    color: #fff;
    background-color:#59b5fa;
}
@media(max-width:768px)
{
    #login-dp{
        background-color: inherit;
        color: #fff;
    }
#login-dp .bottom
{
        background-color: inherit;
        border-top:0 none;
    }
    
}

body, h1,h2,h3,h4,h5,h6 {font-family: "Montserrat", sans-serif}
.w3-row-padding img {margin-bottom: 12px}
/* Set the width of the sidebar to 120px */
.w3-sidebar {width: 120px;background: #222;}
/* Add a left margin to the "page content" that matches the width of the sidebar (120px) */
#main {margin-left: 120px}
/* Remove margins from "page content" on small screens */
@media only screen and (max-width: 600px) {#main {margin-left: 0}}
</style>

        <title>JSP Page</title>
    </head>
    <body style="background-image: url(http://res.cloudinary.com/dxrvxsdaf/image/upload/c_fit,h_768,w_1366/v1519647198/1920x1080-data_out_35_164298675-food-wallpapers.jpg); ">
<div id="nav_bar_h">
        <nav class="navbar navbar-default navbar-inverse" role="navigation">
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
        <li ><a href="MainHomePage.jsp">Home</a></li>
        <li><a href="aboutus.jsp">About Us</a></li>
         <li class="active"><a href="contactus.jsp">Contact Us</a></li>
       
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
</div>
<div id="contact_us">
        
  <!-- Contact Section -->
  <div class="w3-padding-64 w3-content w3-text-grey" id="contact">
    <h2 class="w3-text-light-grey">Contact Me</h2>
    <hr style="width:200px" class="w3-opacity">

    <div class="w3-section">
        <p style="color: white;"><i class="fa fa-map-marker fa-fw w3-text-black w3-xxlarge w3-margin-right"></i> New Delhi, India</p>
      <p style="color: white;"><i class="fa fa-phone fa-fw w3-text-black w3-xxlarge w3-margin-right"></i> Phone: +918527026786</p>
      <p style="color: white;"><i class="fa fa-envelope fa-fw w3-text-black w3-xxlarge w3-margin-right"> </i> Email: atanvir266@gmail.com</p>
    </div><br>
    <p style="color: white; ">Lets get in touch. Send me a message:</p>

    <form action="#" target="_blank">
      <p style="color: black;"><input class="w3-input w3-padding-16" type="text" placeholder="Name" required name="Name"></p>
      <p style="color: black;"><input class="w3-input w3-padding-16" type="text" placeholder="Email" required name="Email"></p>
      <p style="color: black;"><input class="w3-input w3-padding-16" type="text" placeholder="Subject" required name="Subject"></p>
      <p style="color: black;"><input class="w3-input w3-padding-16" type="text" placeholder="Message" required name="Message"></p>
      <p>
        <button class="w3-button w3-light-grey w3-padding-large" type="submit">
          <i class="fa fa-paper-plane"></i> SEND MESSAGE
        </button>
      </p>
    </form>
  
  </div>
  
    <!-- Footer -->
 </div>
    </body>
</html>
