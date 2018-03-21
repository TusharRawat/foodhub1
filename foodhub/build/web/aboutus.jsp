
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
          <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    
    social:hover {
     -webkit-transform: scale(1.1);
     -moz-transform: scale(1.1);
     -o-transform: scale(1.1);
 }
 .social {
     -webkit-transform: scale(0.8);
     /* Browser Variations: */
     
     -moz-transform: scale(0.8);
     -o-transform: scale(0.8);
     -webkit-transition-duration: 0.5s;
     -moz-transition-duration: 0.5s;
     -o-transition-duration: 0.5s;
 }

/*
    Multicoloured Hover Variations
*/
 
 #social-fb:hover {
     color: #3B5998;
 }
 #social-tw:hover {
     color: #4099FF;
 }
 #social-gp:hover {
     color: #d34836;
 }
 #social-em:hover {
     color: #f39c12;
 }
html,body,h1,h2,h3,h4 {font-family:"Lato", sans-serif}
.mySlides {display:none}
.w3-tag, .fa {cursor:pointer}
.w3-tag {height:15px;width:15px;padding:0;margin-top:6px}


#nav_bar_h
{
    margin-top: -5px;
    padding-top: 0;
}
#about_us
{
    margin-top: -80px;
    padding-top: 0;
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

#loader {
    bottom: 0;
    height: 175px;
    left: 0;
    margin: auto;
    position: absolute;
    right: 0;
    top: 0;
    width: 175px;
}
#loader {
    bottom: 0;
    height: 175px;
    left: 0;
    margin: auto;
    position: absolute;
    right: 0;
    top: 0;
    width: 175px;
}
#loader .dot {
    bottom: 0;
    height: 100%;
    left: 0;
    margin: auto;
    position: absolute;
    right: 0;
    top: 0;
    width: 87.5px;
}
#loader .dot::before {
    border-radius: 100%;
    content: "";
    height: 87.5px;
    left: 0;
    position: absolute;
    right: 0;
    top: 0;
    transform: scale(0);
    width: 87.5px;
}
#loader .dot:nth-child(7n+1) {
    transform: rotate(45deg);
}
#loader .dot:nth-child(7n+1)::before {
    animation: 0.8s linear 0.1s normal none infinite running load;
    background: #00ff80 none repeat scroll 0 0;
}
#loader .dot:nth-child(7n+2) {
    transform: rotate(90deg);
}
#loader .dot:nth-child(7n+2)::before {
    animation: 0.8s linear 0.2s normal none infinite running load;
    background: #00ffea none repeat scroll 0 0;
}
#loader .dot:nth-child(7n+3) {
    transform: rotate(135deg);
}
#loader .dot:nth-child(7n+3)::before {
    animation: 0.8s linear 0.3s normal none infinite running load;
    background: #00aaff none repeat scroll 0 0;
}
#loader .dot:nth-child(7n+4) {
    transform: rotate(180deg);
}
#loader .dot:nth-child(7n+4)::before {
    animation: 0.8s linear 0.4s normal none infinite running load;
    background: #0040ff none repeat scroll 0 0;
}
#loader .dot:nth-child(7n+5) {
    transform: rotate(225deg);
}
#loader .dot:nth-child(7n+5)::before {
    animation: 0.8s linear 0.5s normal none infinite running load;
    background: #2a00ff none repeat scroll 0 0;
}
#loader .dot:nth-child(7n+6) {
    transform: rotate(270deg);
}
#loader .dot:nth-child(7n+6)::before {
    animation: 0.8s linear 0.6s normal none infinite running load;
    background: #9500ff none repeat scroll 0 0;
}
#loader .dot:nth-child(7n+7) {
    transform: rotate(315deg);
}
#loader .dot:nth-child(7n+7)::before {
    animation: 0.8s linear 0.7s normal none infinite running load;
    background: magenta none repeat scroll 0 0;
}
#loader .dot:nth-child(7n+8) {
    transform: rotate(360deg);
}
#loader .dot:nth-child(7n+8)::before {
    animation: 0.8s linear 0.8s normal none infinite running load;
    background: #ff0095 none repeat scroll 0 0;
}
#loader .lading {
    background-image: url("../images/loading.gif");
    background-position: 50% 50%;
    background-repeat: no-repeat;
    bottom: -40px;
    height: 20px;
    left: 0;
    position: absolute;
    right: 0;
    width: 180px;
}
@keyframes load {
100% {
    opacity: 0;
    transform: scale(1);
}
}
@keyframes load {
100% {
    opacity: 0;
    transform: scale(1);
}
}
 .loader {
  border: 3px;
  border-radius: 260%;
  border-top: 25px solid #D98880  ;
  width: 400px;
  height: 400px;
  animation: spin 2s linear infinite;
  margin: 10px auto;
margin-top: 60px;
 
}

  .loader > #loading-image
{
      border-radius: 100%;
     width: 95%;
     height: 100%;
     position: absolute;
   animation: image 2s linear infinite;
   display:block;
  
  
}
 @keyframes spin {
  0% {
    transform: rotate(0deg);
  
  }
  100% {
    transform: rotate(360deg);
 
  }
}
 
@keyframes image {
  0% {
    transform: rotate(360deg);
 
  }
  100% {
    transform: rotate(0deg);
  }
}


body {

}

 @media only screen and (max-width: 480px) {
    .loader{
  width: 300px;
  height: 300px;
  margin-top: 60px;

    }
}

</style>
<script>
    $(document).ready(function(){
         $("#faltu").hide();
         var myVar = setTimeout(myTimer, 3000);
          function myTimer()
         {
             $("#faltu").slideDown("slow");
             $(".loader").hide();
             
         }
    });

    </script>
    


    
        
    </head>
    <body style="background-image: url(http://res.cloudinary.com/dxrvxsdaf/image/upload/c_fit,h_768,w_1366/v1519647198/1920x1080-data_out_35_164298675-food-wallpapers.jpg); background-attachment:  fixed">
      <div class="loader">
  <img id="loading-image" src="image/tumblr_ovb4wsRPFP1vr5geto1_500.gif" alt=""/>
                </div>
        <div id="faltu">
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
        <li class="active"><a href="aboutus.jsp">About Us</a></li>
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
            <div id="about_us">
          <div class="w3-row-padding" id="about">
    <div class="w3-center w3-padding-64">
        <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16" style="color:black; font-size: 150px;">Who We Are</span>
    </div>

    <div class="w3-third w3-margin-bottom">
      <div class="w3-card-4">
        <img src="http://res.cloudinary.com/dxrvxsdaf/image/upload/a_0/v1520943326/hardeep12.gif" alt="Hardeep" style="width:100%">
        <div class="w3-container">
          <h3>Hardeep Singh</h3>
          <p class="w3-opacity">Database Handler</p>
          <p>Help Us To Handle Our Database Work</p>
          <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
        </div>
      </div>
    </div>

    <div class="w3-third w3-margin-bottom">
      <div class="w3-card-4">
        <img src="hbttp://res.cloudinary.com/dxrvxsdaf/image/upload/v1520943639/karan.gif" alt="Karan" style="width:100%">
        <div class="w3-container">
          <h3>Karan</h3>
          <p class="w3-opacity">Data Validator</p>
          <p>Mr. Google Baba Just Always Do Copy And Paste</p>
          <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
        </div>
      </div>
    </div>

    <div class="w3-third w3-margin-bottom">
      <div class="w3-card-4">
        <img src="http://res.cloudinary.com/dxrvxsdaf/image/upload/v1520943331/Tanv33.gif" alt="Tanvir" style="width:100%">
        <div class="w3-container">
          <h3>Tanvir Ahmed</h3>
          <p class="w3-opacity">Devloper</p>
          <p>I Did Nothing Thanks To Sir And Google</p>
          <p><button class="w3-button w3-light-grey w3-block">Contact</button></p>
        </div>
      </div>
    </div>
<div class="w3-row w3-center w3-padding-16 w3-section w3-light-grey">
      <div class="w3-quarter w3-section">
        <span class="w3-xlarge">11+</span><br>
        Partners
      </div>
      <div class="w3-quarter w3-section">
        <span class="w3-xlarge">255+</span><br>
        Deleviery Done
      </div>
      <div class="w3-quarter w3-section">
        <span class="w3-xlarge">89+</span><br>
        Happy Clients
      </div>
      <div class="w3-quarter w3-section">
        <span class="w3-xlarge">150+</span><br>
        Meetings
      </div>
    </div>

          </div>
            
        </div>
        <div class="container">
        <div class="text-center center-block">
            <p class="txt-railway" style="color: white; font-size: 25px">- www.foodhub.com -</p>
            <a href="https://www.facebook.com/bootsnipp"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
	    <a href="https://twitter.com/bootsnipp"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a>
	    <a href="https://plus.google.com/+Bootsnipp-page"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a>
	    <a href="mailto:bootsnipp@gmail.com"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a>
        </div>
    
    </div>
       </div>

    </body>
</html>
