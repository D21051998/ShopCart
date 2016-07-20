<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<title>MyCorp Inc.</title>
<link rel="icon" href="${z}/mobile.ico" type="image/x-icon">
<style>
.carousel-inner>.item>img, body {
	font: 20px Montserrat, sans-serif;
	line-height: 1.8;
	color: #f5f6f7;
}
#map {
        width: 100%;
        height: 400px;
        background-color: grey;
      }

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

.carousel-inner img {
	width: 100%; /* Set width to 100% */
	margin: auto;
}

.carousel-caption h3 {
	color: #fff !important;
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
	font-size: 40px;
	color: #111;
	font-family: Montserrat, sans-serif;
}

h3 {
	font-family: Montserrat, sans-serif;
	letter-spacing: 1px;
	font-size:xx-large;
	color: #000;
}
h4{
	font-family: Montserrat, sans-serif;
	letter-spacing: 1px;
	font-size:x-large;
	color: #000;
	}
p {
	font-family:monospace;
	color: #000;
}
</style>
<script>
function initialize() {
	  var mapProp = {
	    center:new google.maps.LatLng(28.599875,77.081362),
	    zoom:13,
	    mapTypeId:google.maps.MapTypeId.ROADMAP
	  };
	  var map=new google.maps.Map(document.getElementById("googleMap"), mapProp);
	}
	google.maps.event.addDomListener(window, 'load', initialize);
</script>
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
			<li><a href="about" target="_self">About</a></li>
			<li class="active"><a href="contact" target="_self">Contact
					Us</a></li>
		</ul>

	</div>
</div>
</nav>
<div class="container">
<div class="row">
<div class="col-md-6">
	<h3>Project Owner / Developer:</h3>
	<p><font size="6"><strong>Deepanshu Jain</strong></font></p>
	<h4>&nbsp;Contact No:</h4>
	<p><strong>+91 8527 062062</strong></p>
	<h4>&nbsp;E Mail:</h4>
	<p><strong>deepanshujain1234@live.com</strong></p>
	
	<h3>Runtime:</h3>
	<p><font size="6"><strong>Apache Tomcat v8</strong></font></p>
	<h3>Enviroment:</h3>
	<p><font size="6"><strong>Eclipse</strong></font></p>
	<h3>Framework:</h3>
	<p><font size="6"><strong>Spring MVC</strong></font></p>
<br>
</div>
<div class="col-md-6">
<h2>See Me Here:</h2>

 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3503.0004303406936!2d77.08257191852417!3d28.599763902476568!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3667498d4c09637f!2sMahavir+Enclave!5e0!3m2!1sen!2sin!4v1468773772123" width="700" height="550" frameborder="0" style="border:0" allowfullscreen></iframe>
</div></div>
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