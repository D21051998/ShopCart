<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/resources/images" var="z"></c:url>
<%@page isELIgnored="false" %>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>About MyCorp Inc.</title>
<link rel="icon" href="${z}/mobile.ico" type="image/x-icon">
<style>

.margin {
	margin-bottom: 45px;
}

.bg-2 {
	background-color: #474e5d; /* Dark Blue */
	color: #ffffff;
}

.bg-3 {
	background-color: #ffffff; /* White */
	color: #555555;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
}


.navbar {
	padding-top: 15px;
	padding-bottom: 15px;
	border: 0;
	border-radius: 0;
	margin-bottom: 0;
	font-size: 12px;
	letter-spacing: 2px;
}

/* Sticky footer styles
-------------------------------------------------- */
html {
	position: relative;
	min-height: 100%;
}

body {
	/* Margin bottom by footer height */
	margin-bottom: 60px;
}

.footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	/* Set the fixed height of the footer here */
	height: 60px;
	background-color: #f5f5f5;
}

/* Custom page CSS
-------------------------------------------------- */
/* Not required for template or sticky footer method. */
body>.container {
	padding: 60px 15px 0;
}

.container .text-muted {
	margin: 20px 0;
}

.footer>.container {
	padding-right: 15px;
	padding-left: 15px;
}

code {
	font-size: 80%;
}

.bg-1 {
	background-color: #1abc9c; /* Green */
	color: #ffffff;
}

.unselectable {
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

h2 {
	letter-spacing: 3px;
	font-size: 50px;
	color: #111;
	font-family: Montserrat, sans-serif;
}

h3 {

font-size:30px;
	font-family: Montserrat, sans-serif;
	letter-spacing: 1px;
}
 h4 {
	font-family: Montserrat, sans-serif;
	letter-spacing: 1px;
}
p{
font-size:20px;
}
</style>
</head>
<nav class="navbar navbar-default navbar-static-top">
<div class="container">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#navbar" aria-expanded="false"
			aria-controls="navbar">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="/ShopCart/"><font color="black"><strong>MyCorp
					Inc.</strong></font></a>
	</div>
	<div id="navbar" class="navbar-collapse collapse">
		<ul class="nav navbar-nav">
			<li><a href="/ShopCart/" target="_self">Home</a></li>
			<li class="active"><a href="about" target="_self">About</a></li>
			<li><a href="contact" target="_self">Contact Us</a></li>
		</ul>
	</div>
	
</div>
</nav>
<div class="container"><br>
<h2 class="text-center">MyCorp ShopCart Inc.&#174;</h2>
<p><br><strong>ShopCart</strong>, Best Latest Valuable And What left? Well, read our reviews. </p>
<br>
<h3>Our Motto:<strong> Play Like Warrior, Live Like Legend.</strong></h3>
<br>
<p>We are known .....because you know what we do, Right?</p><br>
<h3>Any Title, Genre, Platform, Developer</h3>
<p>Warriors, Soldiers, or a Hungry Beast | From Commandos to Call Of Duty <br>
Soccer, Tennis, or BasketBall | From Fifa to NHL<br>
Zombies, Devils, or Beasts | From Resident Evil to ZombieLand<br>
XBox, Wi, or Nintendo | From Sony to Microsoft<br>
Even from kids to maniacs.<br>
<br>
Experience The Game Before Global Launch with Latest Trailers.
</p><br>
<hr>
</div>
<footer class="footer">
	<div class="container">
	<div class="row">
  <div class="col-md-6"><h3>&copy; MyCorp ShopCart Inc.</h3></div>
  <div align="right" class="col-md-6">
          &nbsp;<a href="https://www.facebook.com/Axel1998Blaze" target="_blank"><img src="${z}/facebook-1024-black.png" height="50px" width="50px" class="img-rounded" ></a>
          &nbsp;<a href="https://twitter.com/deeepanshu2105" target="_blank"><img src="${z}/twitter-512.png" height="45px" class="img-rounded" width=45px"></a>
          &nbsp;<a href="https://www.instagram.com/deeepanshujain/" target="_blank"><img src="${z}/instagram-4096-black.png" height="50px" class="img-rounded" width="50px"></a>
  </p></div>
</div></div>

</footer>

</body>
</html>