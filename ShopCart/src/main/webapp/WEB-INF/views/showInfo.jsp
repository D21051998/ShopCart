<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Game Info</title>
<c:url value="/resources/images" var="z"></c:url>
<link rel="icon" href="${z}/info_512pxGREY.png" type="image/x-icon">
<style>

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

.bg-1 {
	background-color: #1abc9c; /* Green */
	color: #ffffff;
}

.carousel-inner img {
	-webkit-filter: grayscale(70%);
	filter: grayscale(70%);
	width: 100%; /* Set width to 100% */
	margin: auto;
}

.carousel-caption h3 {
	color: #fff !important;
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
.unselectable {
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( max-width : 1100px) {
	.carousel-caption {
		display: none;
		/* Hide the carousel text when the screen is less than 600 pixels wide */
	}
}

h2 {
	letter-spacing: 3px;
	font-size: 50px;
	color: #111;
	font-family: Montserrat, sans-serif;
}

h3, h4 {
	font-family: Montserrat, sans-serif;
	font-size: 30px;
	letter-spacing: 1px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<!-- <img class="img-resopnsive" src="${z}/Retail-eCommerce-Icon-300x300.png" width="50" hight="50" alt="" />-->
			<a class="navbar-brand" href="/ShopCart/home"><font color="black"><strong>MyCorp
						Inc.</strong></font></a>
		</div>

		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="/ShopCart/home" target="_self">Home</a></li>
				<li class="dropdown"><a href="#" role="button" class="dropdown-toggle"
					data-toggle="dropdown" target="_self">Inventory<span
						class="caret"></span></a>
				<ul class="dropdown-menu text-center">
				<li><font color="#000000">&nbsp;Choose From:</font></li>
				<li class="divider" role="seperator"></li>
				<li><a href="<c:url value='/showproduct/view/all'/> "><font color="#555555">All&nbsp;<span class="glyphicon glyphicon-menu-right"></span></font></a></li>
				<li class="divider" role="seperator"></li>
					<c:forEach items="${categoryList}" var="category">
                       
						<li><a href="<c:url value='showCategory/view/${category.name}' />" ><font color="#555555">${category.name}&nbsp;<span class="glyphicon glyphicon-menu-right"></span></font></a></li>

						</c:forEach>
				</ul>
				<li><a href="/ShopCart/about" target="_self">About</a></li>
				<li><a href="/ShopCart/contact" target="_self">Contact Us</a></li>

			</ul></li>
			<ul class="nav navbar-nav navbar-right">
			<c:if test="${empty userDetail}">
				<li><a href="signup"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="/ShopCart/signin"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</c:if>
			<c:if test="${!empty userDetail}">
			    <li><a href="#"><span
						class="glyphicon glyphicon-user"></span>&nbsp;${userDetail.name}</a></li>
			    <c:if test="${userDetail.role == 'ROLE_USER'}">
			       <li><a href="#">&nbsp;Cart(0)</a></li>
			    </c:if>
			    <c:if test="${userDetail.role == 'ROLE_ADMIN'}">
			       <li><a href="#">&nbsp;Cart(0)</a></li>
			       <li><a href="/ShopCart/adminPage"><span
						class="glyphicon glyphicon-wrench"></span>&nbsp;Admin Panel</a></li>
			    </c:if>
			    <li><a href="<c:url value="/logout" />"><span
						class="glyphicon glyphicon-log-out"></span>&nbsp;Logout</a></li>
						
			</c:if>
			</ul>
		</div>
	</div>
</nav>
	<br>
	<br><br><br><br><br>
	<div class="container">
		<div class="row">
		<div  class="col-md-6">
		<div class="embed-responsive embed-responsive-4by3">
		<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/${productDetail.url}?autoplay=1"></iframe>
		</div>
		</div>
		<div  class="col-md-6">
			<h3>
				<strong>Title:</strong><b>${productDetail.name}</b></h3>
			<h3>
				<strong>Category:</strong>${productDetail.category.name}</h3>
			<h3>
				<strong>Developer:</strong>${productDetail.description}</h3>
			<h3>
				<strong>Description:</strong>${productDetail.category.description}</h3>
			<h3>
				<strong>Supplier Available:</strong>${productDetail.supplier.name}</h3>
			<h3>
				<strong>Cost:</strong>${productDetail.price}</h3>
				<c:url var="addCart" value="/cart/add"></c:url>
			
		    <button   type="submit"   name="submit" class="btn btn-default">Add To Cart</button>
				<input type="hidden"
				name="_flowExecutionKey" value="${flowExecutionKey}" />
				</div>
		</div>
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
