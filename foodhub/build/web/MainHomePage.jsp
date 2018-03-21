
<%@page import="cart.cart"%>
<%@page import="cart.cartimpdao"%>
<%@page import="cart.cartdao"%>
<%@page import="java.util.List"%>
<%@page import="category.category"%>
<%@page import="category.categorydao"%>
<%@page import="category.categoryimpdao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" integrity="sha256-MfvZlkHCEqatNoGiOXveE8FIwMzZg4W85qfrfIFBfYc= sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" integrity="sha256-MfvZlkHCEqatNoGiOXveE8FIwMzZg4W85qfrfIFBfYc= sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
   
   <style>
      .footer
      {
          
          margin-bottom: -10px;
          margin-top: 80px;
      }
      
  .sb_container{
	  	  overflow: hidden;
	  	  width: 300px;
	  	  vertical-align: middle;
	  	  white-space: nowrap;
	}
        	.sb_container input.search{ 
		  width: 280px; 
		  height: 50px; 
                  
		  background: white;
                  opacity: 1;
                  
		  border: none; 
		  font-size: 15pt; 
                  font-family: Book Antiqua;    
		  float: left; 
		  color: brown;
                  opacity: 0.8;
		  padding-left: 15px; 
		  -webkit-border-radius: 5px; 
		  -moz-border-radius: 5px; 
		  border-radius: 5px;
}
  .sb_container input.search::-webkit-input-placeholder { color: black;}
	  .sb_container input.search:-moz-placeholder { /* Firefox 18- */ color: white; }
	  .sb_container input.search::-moz-placeholder {  /* Firefox 19+ */ color: white; }
	  .sb_container input.search:-ms-input-placeholder {  color: white; }

          	.sb_container button.icon {
		  -webkit-border-top-right-radius: 5px; 
		  -webkit-border-bottom-right-radius: 5px; 
		  -moz-border-radius-topright: 5px; 
		  -moz-border-radius-bottomright: 5px; 
		  border-top-right-radius: 5px; 
		  border-bottom-right-radius: 5px; 
		  border: none; 
		  background: black; 
		  height: 50px; 
		  width: 50px; 
		  color: blue; 
		  opacity: 0; 
		  font-size: 10pt; 
		  -webkit-transition: all .55s ease; 
		  -moz-transition: all .55s ease; 
		  -ms-transition: all .55s ease; 
		  -o-transition: all .55s ease; 
		  transition: all .55s ease;
	}
        .sb_container:hover button.icon, .sb_container:active button.icon, .sb_container:focus button.icon{ 
		  outline: none; 
		  opacity: 0.8; 
                  
                 
		  margin-left: -70px;
		  background-image:url('http://res.cloudinary.com/dxrvxsdaf/image/upload/c_fit,h_50,w_98/v1519729263/search.jpg');    
		  background-repeat: no-repeat;  
		  background-position: center; 
	}

	.sb_container:hover button.icon:hover{ 
		  background: black;
		  background-image:url('http://res.cloudinary.com/dxrvxsdaf/image/upload/c_fit,h_50,w_98/v1519729263/search.jpg');    
		  background-repeat: no-repeat;background-position: center; 
	}
        
.vl
{
    border-top: 6px solid green;
    height: 30px;
}

      .bg-white {
  background-color: #ffffff !important;
}
.bg-grey {
  background-color: #eeeeee !important;
}
.bg-black {
  background-color: #555555 !important;
}
.bg-red {
  background-color: #f75353 !important;
}
.bg-green {
  background-color: #51d466 !important;
}
.bg-lblue {
  background-color: #32c8de !important;
}
.bg-blue {
  background-color: #609cec !important;
}
.bg-orange {
  background-color: #f78153 !important;
}
.bg-yellow {
  background-color: #fcd419 !important;
}
.bg-purple {
  background-color: #cb79e6 !important;
}
.bg-rose {
  background-color: #ff61e7 !important;
}
.bg-brown {
  background-color: #d08166 !important;
}

/* Button classes */
.btn {
    border-radius: 2px;
	position: relative;
}
.btn.btn-no-border {
	border: 0px !important;
}
/* Button colors */
.btn.btn-white {
	background: #ffffff;
	color: #666666;
	border: 1px solid #dddddd;
}
.btn.btn-white:hover,
.btn.btn-white:focus,
.btn.btn-white.active,
.btn.btn-white:active {
	background: #f7f7f7;
	color: #666666;
}
.btn.btn-grey {
	background: #eeeeee;
	color: #666666;
	border: 1px solid #d5d5d5;
}
.btn.btn-grey:hover,
.btn.btn-grey:focus,
.btn.btn-grey.active,
.btn.btn-grey:active {
	background: #d5d5d5;
	color: #999;
}
.btn.btn-black {
	color: #ffffff;
	background: #666666;
	border: 1px solid #4d4d4d;
}
.btn.btn-black:hover,
.btn.btn-black:focus,
.btn.btn-black.active,
.btn.btn-black:active {
	background: #4d4d4d;
	color: #ffffff;
}
.btn.btn-red {
	color: #ffffff;
	background: #ed5441;
	border: 1px solid #e52d16;
}
.btn.btn-red:hover,
.btn.btn-red:focus,
.btn.btn-red.active,
.btn.btn-red:active {
	color: #ffffff;
	background: #e52d16;
}
.btn.btn-green {
	color: #ffffff;
	background: #51d466;
	border: 1px solid #30c247;
}
.btn.btn-green:hover,
.btn.btn-green:focus,
.btn.btn-green.active,
.btn.btn-green:active {
	background: #30c247;
	color: #ffffff;
}
.btn.btn-lblue {
	color: #ffffff;
	background: #32c8de;
	border: 1px solid #1faabe;
}
.btn.btn-lblue:hover,
.btn.btn-lblue:focus,
.btn.btn-lblue.active,
.btn.btn-lblue:active {
	background: #1faabe;
	color: #ffffff;
}
.btn.btn-blue {
	color: #ffffff;
	background: #609cec;
	border: 1px solid #3280e7;
}
.btn.btn-blue:hover,
.btn.btn-blue:focus,
.btn.btn-blue.active,
.btn.btn-blue:active {
	background: #3280e7;
	color: #ffffff;
}
.btn.btn-orange {
	color: #ffffff;
	background: #f8a841;
	border: 1px solid #f69110;
}
.btn.btn-orange:hover,
.btn.btn-orange:focus,
.btn.btn-orange.active,
.btn.btn-orange:active {
	background: #f69110;
	color: #ffffff;
}
.btn.btn-yellow {
	background: #fcd419;
	color: #ffffff;
	border: 1px solid #dfb803;
}
.btn.btn-yellow:hover,
.btn.btn-yellow:focus,
.btn.btn-yellow.active,
.btn.btn-yellow:active {
	background: #dfb803;
	color: #ffffff;
}
.btn.btn-purple {
	background: #cb79e6;
	color: #ffffff;
	border: 1px solid #ba4ede;
}
.btn.btn-purple:hover,
.btn.btn-purple:focus,
.btn.btn-purple.active,
.btn.btn-purple:active {
	background: #ba4ede;
	color: #ffffff;
}
.btn.btn-rose {
	background: #ff61e7;
	color: #ffffff;
	border: 1px solid #ff2edf;
}
.btn.btn-rose:hover,
.btn.btn-rose:focus,
.btn.btn-rose.active,
.btn.btn-rose:active {
	background: #ff2edf;
	color: #ffffff;
}
.btn.btn-brown {
	background: #d08166;
	color: #ffffff;
	border: 1px solid #c4613f;
}
.btn.btn-brown:hover,
.btn.btn-brown:focus,
.btn.btn-brown.active,
.btn.btn-brown:active {
	background: #c4613f;
	color: #ffffff;
}

.shop-items{
	max-width:1150px;
	margin:10px auto;
	padding:0px 20px;
}
.shop-items .item {
	position: relative;
	max-width: 360px;
	margin: 15px auto;
	padding: 5px;
	text-align: center;
	border-radius: 4px;
	overflow: hidden;
	border:2px solid #eee;
}
.shop-items .item:hover{	
	border:2px solid #32c8de;
}
.shop-items .item img {
	width: 100%;
	max-width: 360px;
	margin: 0 auto;
	border: 1px solid #eee;
	border-radius: 3px;
}
.shop-items .item  .item-dtls h4 {
	margin-top: 13px;
	margin-bottom: 10px;
	text-transform: uppercase;
}
.shop-items .item  .item-dtls .price {
	display: block;
	margin-bottom: 13px;
	font-size: 25px;
}
.shop-items .item  .ecom {
	position: absolute;
	top: 100%;
	left: 0;
	width: 100%;
	padding-bottom:10px;
	padding-top: 10px;
	-webkit-transition: all 0.35s ease-in;
	-moz-transition: all 0.35s ease-in;
	-ms-transition: all 0.35s ease-in;
	-o-transition: all 0.35s ease-in;
	transition: all 0.35s ease-in;
}
.shop-items .item:hover  .ecom { 
	margin-top: -50px; 
}
.shop-items .item  .ecom  a.btn{
	border:1px solid #fff;
	color:#fff;
	background:transparent;
	-webkit-transition: all 0.35s ease-in;
	-moz-transition: all 0.35s ease-in;
	-ms-transition: all 0.35s ease-in;
	-o-transition: all 0.35s ease-in;
	transition: all 0.35s ease-in;
}
.shop-items .item  .ecom  a.btn:hover{
	background:#fff;
	color:#777;
}   
      .social:hover {
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
    
body
{
    margin: 0;
    padding: 0;
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
    
    <script>
//var accounting = [];
//var employees = {};
//
//var ii=0;
//console.log(employees);
        </script>
 </head>
<body style="background-image: url(http://res.cloudinary.com/dxrvxsdaf/image/upload/c_fit,h_828,w_1366/v1519647198/1920x1080-data_out_35_164298675-food-wallpapers.jpg);background-attachment: fixed " >
                 <div class="loader">
  <img id="loading-image" src="image/tumblr_ovb4wsRPFP1vr5geto1_500.gif" alt=""/>
                </div>
    
    <div id="faltu">
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
        <li class="active"><a href="#">Home</a></li>
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
       <li>
           <a href="#" class="dropdown-toggle" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-shopping-cart"></span><span class="badge" id="cart_value"></span></a>
         
          
 
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <center> <h4 class="modal-title">Cart Item</h4></center>
          
        </div>
          <div class="modal-body" id="cartley">
          
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
 
               
         <tr class="delete_cart<%=cnn.getId()%>">
     
                    
                    
                    <td><img style="width:100%;height: auto;" id="ajax_image" src="<%=cnn.getImage()%>" ></td>
                    
                    <td id="ajax_food_item"><%=cnn.getFood_item()%></td>
                    <td id="ajax_description"><%=cnn.getDescription()%></td>
                    <td id="ajax_price"><%=cnn.getPrice()%></td>
                    <td id="ajax_quantity"><%=cnn.getQuantity()%></td>
                    <td><a href=# id="<%=cnn.getId()%>"><i class="material-icons" style="font-size:30px; color: Orange;">delete</i></a></td>
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
                

          
          <div id=""></div>
        </div>
        <div class="modal-footer">
            <button type="button" onclick="window.location.href='Proceed To Pay.jsp'" class="btn btn-success" data-dismiss="modal">Proceed To Pay</button>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
      </div>
    </div>
  </div>
      
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
    </div>
    </div><!-- /.navbar-collapse -->
  <!-- /.container-fluid -->
  
 </nav>
       
                 
<!--<center>  <div class="sb_container">
	  	  <input type="text" placeholder="Search..." id="sew_searchBox" onkeyup="myFunction()" class="search"> </input>
	  	  <button class="icon" onclick="keyotiSearchBox.doSearch()"></button>
     </div></center>
    <div id="sew_searchResultControl"></div>-->
    
    
    <%
    categorydao cd=new categoryimpdao();
    List<category> list=cd.getCategory();
    

%>    
<center><h1 class="mainPageMealPlanHeading">
        <span style="text-decoration:line-through; color:red;"> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </span>
&nbsp;&nbsp;
<span style='font-family: "cursive";color: black; font-stretch: "extra-expanded"'>Top Meal Plans</span>
&nbsp;&nbsp;
<span style="text-decoration:line-through; color:red;"> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </span>

    </h1></center>
   
   <div >   
    <div class="shop-items" >
	<div class="container-fluid">
            <%
                int i=0;
                
            for(category c:list)
                
{
    int value=i++;
    int buy=i++;

%>
    	<div class="col-md-4" >
            <div class="item" style="background-color: #ffffff;opacity: 0.8;  ">
            <img class="img-responsive" id="<%=c.getImage()%>" src="<%=c.getImage()%>" alt="Image Not Loaded">
	<div class="item-dtls">
            

            <h4 id="<%=c.getUsername()%>"><%=c.getUsername()%></h4>
        <div class="vl"></div>
        <p id="<%=c.getDescription()%>"><%=c.getDescription()%></p>
	<span class="price lblue" id="<%=c.getPrice()%>"><%=c.getPrice()%></span>
	</div>
       
	<div class="ecom bg-lblue">
            <a class="btn" id="<%=value%>">Add to cart</a>
            <a class="btn" id="<%=buy%>" href="buy.jsp?cart_id=<%=c.getId()%>">Buy</a>
	</div>
        </div>
	</div>
        
        
       <div class="modal fade" id="myModal<%=c.getPrice()%>" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="font-family:Bauhaus 93; size:100"><center>FoodHub</center></h4>
        </div>
        <center><div class="modal-body">
            Please Confirm The Quantity:
            <input type="number" name="quantity" min="1" max="7" id="<%=c.getId()%>"  ><br>
            </div></center>
        <div class="modal-footer">
            <button type="button" class="btn btn-success" id="addTOcart<%=c.getId()%>"  data-dismiss="modal" >Add to cart</button>
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
       
        
        <script>
             $("#<%=value%>").click(function ()
             {
                             $("#myModal<%=c.getPrice()%>").modal();
             });
                    $("#addTOcart<%=c.getId()%>").click(function()
                {
                 var quantity=$("#<%=c.getId()%>").val();
                 console.log(quantity);
                     var value1=document.getElementById("<%=c.getImage()%>").src;
                    var value2="<%=c.getUsername()%>";
                    var value3="<%=c.getDescription()%>";
                    var value4="<%=c.getPrice()%>";
                    
                    
                      $.ajax
        (
        {
            url:"add_to_cart",
            data:{id:<%=c.getId()%>,image:value1,food_item:value2,description:value3,price:value4,quanti:quantity},
            type:'post',
            cache:false,
            dataType: 'application/json',
            success:function(html)
            {
                alert("data inserted");
               console.log(id,image,food_item,description,price,quanti);
            },
            error:function(responce){
               
                console.log("All The Value Are Right There");
                console.log(<%=c.getId()%>,value1,value2,value3,value4,quantity);
                
    $("#ajax_image").setAttribute("src").append(value1);
                $("#ajax_food_item").append(value2);
                $("#ajax_description").append(value3);
                $("#ajax_price").append(value4);
                $("#ajax_quantity").append(quantity);
       
    }
        }
    );
    
//    var item;            
//     
//    accounting.push({ 
//         value1,
//         value2,
//         value3,
//        value4
//    });
//       
// 
//
//    console.log(accounting[ii]);
//           
//  
//var cart=++ii;
//
//document.getElementById("cart_value").innerHTML=cart;


                });
             </script>
<!--                <script>
                 $("#<%=buy%>").click( function ()
                 {
                     var value1=document.getElementById("<%=c.getImage()%>").src;
                    var value2="<%=c.getUsername()%>";
                    var value3="<%=c.getDescription()%>";
                    var value4="<%=c.getPrice()%>";
                      $.ajax
        (
        {
            url:"add_to_cart_buy",
            data:{id:<%=c.getId()%>,image:value1,food_item:value2,description:value3,price:value4},
            type:'post',
            cache:false,
            success:function(response)
            {
               console.log(response);
            },
            error:function(){
   //             alert('Unexpexted Error');
       
    }
        }
    ); 
                     }
                     
            );
                 </script>
      -->
      <% }%>
      
      
          
      
      
        </div>
      
      
      
    <div class="">
        <div class="text-center center-block">
            <p class="txt-railway" style="color:white; font-size:30px;">- www.foodhub.com -</p>
            
                        <a href="https://www.facebook.com/bootsnipp"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
	    <a href="https://twitter.com/bootsnipp"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a>
	    <a href="https://plus.google.com/+Bootsnipp-page"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a>
	    <a href="mailto:bootsnipp@gmail.com"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a>


        </div>
    
    </div>
    </div>
</div>
        
        </div>
        
</body>
</html>
