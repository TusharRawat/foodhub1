<%-- 
    Document   : Proceed To Pay
    Created on : Mar 13, 2018, 5:49:40 PM
    Author     : Asus
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="cart.cart"%>
<%@page import="cart.cartimpdao"%>
<%@page import="java.util.List"%>
<%@page import="cart.cartdao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
    body{
        
       
    }
    .wrapper{
    background: #f7f7f7;
    opacity: 0.9;
}
.steps {
    margin-top: -41px;
    display: inline-block;
    float: right;
    font-size: 16px
}
.step {
    float: left;
    background: white;
    padding: 7px 13px;
    border-radius: 1px;
    text-align: center;
    width: 100px;
    position: relative
}
.step_line {
    margin: 0;
    width: 0;
    height: 0;
    border-left: 16px solid #fff;
    border-top: 16px solid transparent;
    border-bottom: 16px solid transparent;
    z-index: 1008;
    position: absolute;
    left: 99px;
    top: 1px
}
.step_line.backline {
    border-left: 20px solid #f7f7f7;
    border-top: 20px solid transparent;
    border-bottom: 20px solid transparent;
    z-index: 1006;
    position: absolute;
    left: 99px;
    top: -3px
}
.step_complete {
    background: #357ebd
}
.step_complete a.check-bc, .step_complete a.check-bc:hover,.afix-1,.afix-1:hover{
    color: #eee;
}
.step_line.step_complete {
    background: 0;
    border-left: 16px solid #357ebd
}
.step_thankyou {
    float: left;
    background: white;
    padding: 7px 13px;
    border-radius: 1px;
    text-align: center;
    width: 100px;
}
.step.check_step {
    margin-left: 5px;
}
.ch_pp {
    text-decoration: underline;
}
.ch_pp.sip {
    margin-left: 10px;
}
.check-bc,
.check-bc:hover {
    color: #222;
}
.SuccessField {
    border-color: #458845 !important;
    -webkit-box-shadow: 0 0 7px #9acc9a !important;
    -moz-box-shadow: 0 0 7px #9acc9a !important;
    box-shadow: 0 0 7px #9acc9a !important;
    background: #f9f9f9 url(../images/valid.png) no-repeat 98% center !important
}

.btn-xs{
    line-height: 28px;
}

/*login form*/
.login-container{
    margin-top:30px ;
}
.login-container input[type=submit] {
  width: 100%;
  display: block;
  margin-bottom: 10px;
  position: relative;
}

.login-container input[type=text], input[type=password] {
  height: 44px;
  font-size: 16px;
  width: 100%;
  margin-bottom: 10px;
  -webkit-appearance: none;
  background: #fff;
  border: 1px solid #d9d9d9;
  border-top: 1px solid #c0c0c0;
  /* border-radius: 2px; */
  padding: 0 8px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
}

.login-container input[type=text]:hover, input[type=password]:hover {
  border: 1px solid #b9b9b9;
  border-top: 1px solid #a0a0a0;
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
}

.login-container-submit {
  /* border: 1px solid #3079ed; */
  border: 0px;
  color: #fff;
  text-shadow: 0 1px rgba(0,0,0,0.1); 
  background-color: #357ebd;/*#4d90fe;*/
  padding: 17px 0px;
  font-family: roboto;
  font-size: 14px;
  /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#4787ed)); */
}

.login-container-submit:hover {
  /* border: 1px solid #2f5bb7; */
  border: 0px;
  text-shadow: 0 1px rgba(0,0,0,0.3);
  background-color: #357ae8;
  /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#357ae8)); */
}

.login-help{
  font-size: 12px;
}

.asterix{
    background:#f9f9f9 url(../images/red_asterisk.png) no-repeat 98% center !important;
}

/* images*/
ol, ul {
  list-style: none;
}
.hand {
  cursor: pointer;
  cursor: pointer;
}
.cards{
    padding-left:0;
}
.cards li {
  -webkit-transition: all .2s;
  -moz-transition: all .2s;
  -ms-transition: all .2s;
  -o-transition: all .2s;
  transition: all .2s;
  background-image: url('//c2.staticflickr.com/4/3713/20116660060_f1e51a5248_m.jpg');
  background-position: 0 0;
  float: left;
  height: 32px;
  margin-right: 8px;
  text-indent: -9999px;
  width: 51px;
}
.cards .mastercard {
  background-position: -51px 0;
}
.cards li {
  -webkit-transition: all .2s;
  -moz-transition: all .2s;
  -ms-transition: all .2s;
  -o-transition: all .2s;
  transition: all .2s;
  background-image: url('//c2.staticflickr.com/4/3713/20116660060_f1e51a5248_m.jpg');
  background-position: 0 0;
  float: left;
  height: 32px;
  margin-right: 8px;
  text-indent: -9999px;
  width: 51px;
}
.cards .amex {
  background-position: -102px 0;
}
.cards li {
  -webkit-transition: all .2s;
  -moz-transition: all .2s;
  -ms-transition: all .2s;
  -o-transition: all .2s;
  transition: all .2s;
  background-image: url('//c2.staticflickr.com/4/3713/20116660060_f1e51a5248_m.jpg');
  background-position: 0 0;
  float: left;
  height: 32px;
  margin-right: 8px;
  text-indent: -9999px;
  width: 51px;
}
.cards li:last-child {
  margin-right: 0;
}
/* images end */



/*
 * BOOTSTRAP
 */
.container{
    border: none;
}
.panel-footer{
    background:#fff;
}
.btn{
    border-radius: 1px;
}
.btn-sm, .btn-group-sm > .btn{
    border-radius: 1px;
}
.input-sm, .form-horizontal .form-group-sm .form-control{
    border-radius: 1px;
}

.panel-info {
    border-color: #999;
}

.panel-heading {
    border-top-left-radius: 1px;
    border-top-right-radius: 1px;
}
.panel {
    border-radius: 1px;
}
.panel-info > .panel-heading {
    color: #eee;
    border-color: #999;
}
.panel-info > .panel-heading {
    background-image: linear-gradient(to bottom, #555 0px, #888 100%);
}

hr {
    border-color: #999 -moz-use-text-color -moz-use-text-color;
}

.panel-footer {
    border-bottom-left-radius: 1px;
    border-bottom-right-radius: 1px;
    border-top: 1px solid #999;
}

.btn-link {
    color: #888;
}

hr{
    margin-bottom: 10px;
    margin-top: 10px;
}

/** MEDIA QUERIES **/
@media only screen and (max-width: 989px){
    .span1{
        margin-bottom: 15px;
        clear:both;
    }
}

@media only screen and (max-width: 764px){
    .inverse-1{
        float:right;
    }
}

@media only screen and (max-width: 586px){
    .cart-titles{
        display:none;
    }
    .panel {
        margin-bottom: 1px;
    }
}

.form-control {
    border-radius: 1px;
}

@media only screen and (max-width: 486px){
    .col-xss-12{
        width:100%;
    }
    .cart-img-show{
        display: none;
    }
    .btn-submit-fix{
        width:100%;
    }
    
}
/*
@media only screen and (max-width: 777px){
    .container{
        overflow-x: hidden;
    }
}*/
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
  #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
    </style>
    <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500">
    <style>
      #locationField, #controls {
        position: relative;
        width: 480px;
      }
      #autocomplete {
        position: absolute;
        top: 0px;
        left: 0px;
        width: 99%;
      }
      .label {
        text-align: right;
        font-weight: bold;
        width: 100px;
        color: #303030;
      }
      #address {
        
        background-color: #f0f0ff;
        width: 480px;
        padding-right: 2px;
      }
      #address td {
        font-size: 10pt;
      }
      .field {
        width: 100%;
      }
      .slimField {
        width: 80px;
      }
      .wideField {
        width: 200px;
      }
      #locationField {
        height: 40px;
        margin-bottom: 2px;
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
    <body  style="background-image: url(http://res.cloudinary.com/dxrvxsdaf/image/upload/c_fit,h_868,w_1366/v1519647198/1920x1080-data_out_35_164298675-food-wallpapers.jpg); background-attachment: fixed; ">
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
    </div>
        

<div class="container wrapper">
            <div class="row cart-head">
                <div class="container">
                <div class="row">
                    <p></p>
                </div>
                <div class="row">
                    <div style="display: table; margin: auto;">
                        <span class="step step_complete"> <a href="#" class="check-bc">Cart</a> <span class="step_line step_complete"> </span> <span class="step_line backline"> </span> </span>
                        <span class="step_thankyou check-bc step_complete">Thank you</span>
                    </div>
                </div>
                <div class="row">
                    <p></p>
                </div>
                </div>
            </div>    <hr>
            <div class="row cart-body">
                <form class="form-horizontal" method="post" action="address_to_cart">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-push-6 col-sm-push-6">
                    <!--REVIEW ORDER-->
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            Review Order <div class="pull-right"><small><a class="afix-1" href="#">Total</a></small></div>
                        </div>
           <%
          
          cartdao ctd=new cartimpdao();
          List<cart> lc=ctd.getCart();
          
            
         
         %>
                        <div class="panel-body">
<%
 ArrayList al=new ArrayList();
 
    int money=0;
             for(cart cnn : lc )
        {
            
money+=cnn.getPrice()*cnn.getQuantity();
 %>
                            <div class="form-group">
                                
                                <div class="col-sm-3 col-xs-3">
                                    <img class="img-responsive" src="<%=cnn.getImage()%>" />
                                    <input type="hidden" value="<%=cnn.getId()%>" name="items">
                                </div>
                                <div class="col-sm-6 col-xs-6">
                                    <div class="col-xs-12"><%=cnn.getFood_item()%></div>
                                    <div class="col-xs-12"><small><%=cnn.getDescription()%></small></div>
                                    <div class="col-xs-12"><small>Quantity:<span><%=cnn.getQuantity()%></span></small></div>
                               
                                </div>
                                <div class="col-sm-3 col-xs-3 text-right">
                                    <h6><span>₹</span><%=cnn.getPrice()*cnn.getQuantity()%></h6>
                                </div>
                            </div>
                                <%
                                }
                                %>
                            
                            <div class="form-group"><hr /></div>
                            <div class="form-group">
                                <div class="col-xs-12">
                                    <strong>Sub Total</strong>
                                    <div class="pull-right"><span>₹</span><%=money%> <span></span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--REVIEW ORDER END-->
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-pull-6 col-sm-pull-6">
                    <!--SHIPPING METHOD-->
                    <div class="panel panel-info">
                        <div class="panel-heading">Address</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <h4>Shipping Address</h4>
                                </div>
                            </div>
                        </div>
                    
                        
                            
                              <div id="locationField">
                                  <input id="autocomplete" required="" name="address" placeholder="Enter your address"
             onFocus="geolocate()" type="text"></input>
    </div>
<br>

    <table id="address">
      <tr>
        <td class="label">Street address</td>
        <td class="slimField"><input class="col-md-12" class="field" required="" name="address" id="street_number"
             ></input></td>
        <td class="wideField" colspan="2"><input class="field" id="route" disabled="true" readonly="true" name="address"
             ></input></td>
      </tr>
      <tr>
        <td class="label">City</td>
        <!-- Note: Selection of address components in this example is typical.
             You may need to adjust it for the locations relevant to your app. See
             https://developers.google.com/maps/documentation/javascript/examples/places-autocomplete-addressform
        -->
        <td class="wideField" colspan="3"><input class="col-md-12" name="address" disabled="true" readonly="true" required="" class="field" id="locality"
              ></input></td>
      </tr>
      <tr>
        <td class="label">State</td>
        <td class="slimField"><input class="field" class="col-md-12" required="State.?" disabled="true" readonly="true" name="address"
              id="administrative_area_level_1" ></input></td>
        <td class="label">Zip code</td>
        <td class="wideField"><input class="field" disabled="true" readonly="true" class="col-md-12"   id="postal_code"
              ></input></td>
      </tr>
      <tr>
        <td class="label">Country</td>
        <td class="wideField" colspan="3"><input class="field" name="address" disabled="true" readonly="true" required="Country.?" class="col-md-12"
              id="country" ></input></td>
      </tr>
    </table>

                            </div>                            
                        </div>
                    </div>
                    <!--SHIPPING METHOD END-->
                    <!--CREDIT CART PAYMENT-->
                    
            <div class="footerNavWrap clearfix">
                <center>	<div class="btn btn-info btn-fyi" id='back'><span class="glyphicon glyphicon-chevron-left"></span> CONTINUE SHOPPING</div>
                                                   <input type="Submit"   class="btn btn-success"><span class="glyphicon glyphicon-chevron-right"></span>
                                                </center>	<br>			
            </div>
                    </form><!--CREDIT CART PAYMENT END-->
                </div>
           
     
                                
                
            </div>
                                
            
   
                                	
    
 <script>
      // This example displays an address form, using the autocomplete feature
      // of the Google Places API to help users fill in the information.

      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

      var placeSearch, autocomplete;
      var componentForm = {
        street_number: 'short_name',
        route: 'long_name',
        locality: 'long_name',
        administrative_area_level_1: 'short_name',
        country: 'long_name',
        postal_code: 'short_name'
      };

      function initAutocomplete() {
        // Create the autocomplete object, restricting the search to geographical
        // location types.
        autocomplete = new google.maps.places.Autocomplete(
            /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
            {types: ['geocode']});

        // When the user selects an address from the dropdown, populate the address
        // fields in the form.
        autocomplete.addListener('place_changed', fillInAddress);
      }

      function fillInAddress() {
        // Get the place details from the autocomplete object.
        var place = autocomplete.getPlace();

        for (var component in componentForm) {
          document.getElementById(component).value = '';
          document.getElementById(component).disabled = false;
        }

        // Get each component of the address from the place details
        // and fill the corresponding field on the form.
        for (var i = 0; i < place.address_components.length; i++) {
          var addressType = place.address_components[i].types[0];
          if (componentForm[addressType]) {
            var val = place.address_components[i][componentForm[addressType]];
            document.getElementById(addressType).value = val;
          }
        }
      }

      // Bias the autocomplete object to the user's geographical location,
      // as supplied by the browser's 'navigator.geolocation' object.
      function geolocate() {
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var geolocation = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };
            var circle = new google.maps.Circle({
              center: geolocation,
              radius: position.coords.accuracy
            });
            autocomplete.setBounds(circle.getBounds());
          });
        }
      }
      $("#back").click(function ()
      {
        window.location.href="MainHomePage.jsp"; 
      });
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBDZ2XMmcN6SdcrIBjtPot_7RLlt58n4ro&libraries=places&callback=initAutocomplete"
        async defer></script>
    </body>
</html>
