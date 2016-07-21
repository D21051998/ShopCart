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
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<title>All Products</title>
<c:url value="/resources/images" var="z"></c:url>
<link rel="icon" href="${z}/inventory.png" type="image/x-icon">
<style type="text/css">
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
	font-size: 30px;
	font-family: Montserrat, sans-serif;
	letter-spacing: 1px;
}

h4 {
	font-family: Montserrat, sans-serif;
	letter-spacing: 1px;
}

p {
	font-size: 20px;
}
</style>

</head>
<body ng-app="myApp">
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
				<li class="dropdown"><a href="#" role="button"
					class="dropdown-toggle" data-toggle="dropdown" target="_self">Inventory<span
						class="caret"></span></a>
					<ul class="dropdown-menu text-center">
						<li><font color="#000000">&nbsp;Choose From:</font></li>
						<li class="divider" role="seperator"></li>
						<li><a href="<c:url value='showproduct/view/all'/> "><font
								color="#555555">All&nbsp;<span
									class="glyphicon glyphicon-menu-right"></span></font></a></li>
						<li class="divider" role="seperator"></li>
						<c:forEach items="${categoryList}" var="category">

							<li><a
								href="<c:url value='showCategory/view/${category.name}' />"><font
									color="#555555">${category.name}&nbsp;<span
										class="glyphicon glyphicon-menu-right"></span></font></a></li>
						</c:forEach>
					</ul>
				<li><a href="/ShopCart/about" target="_self">About</a></li>
				<li><a href="/ShopCart/contact" target="_self">Contact Us</a></li>

			</ul>
			</li>
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${empty userDetail}">
					<li><a href="/ShopCart/signup"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="/ShopCart/signin"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</c:if>
				<c:if test="${!empty userDetail}">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;${userDetail.name}</a></li>
					<c:if test="${userDetail.role == 'ROLE_USER'}">
						<li><a href="#">&nbsp;Cart(0)</a></li>
					</c:if>

					<c:if test="${userDetail.role == 'ROLE_ADMIN'}">
						<li><a href="adminPage"><span
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
	<br>
	
	<script>
	 angular.module('myApp',[]).controller('ctrl',function($scope){
		 $scope.products = ${productList}
	 });
	</script>
	<div class="container">
	  <div class="form-group form-group-sm">
	   <div class="col-sm-10">
	    <input type="text" class="form-control" placeholder="Search" ng-model="searchProducts">
	   </div>
	  </div>
	</div>
	
	<div ng-app="myApp" ng-controller="ctrl" class="container" style="padding-top:60px">
	 <table class="table table-striped table-responsive">
	  <thead>
	   <th>Product Name</th>
	   <th>Product Catgory</th>
	   <th>Price</th>
	   <th>Info</th>
	  </thead>
	  <tbody>
	   <tr ng-repeat="x in products  | filter:searchProducts">
	   <td>{{x.id}}</td>
	    <td>{{x.name}}</td>
	    <td>{{x.category.name}}</td>
	    <td>{{x.price}}</td>
	    </tr>
	  </tbody>
	 </table>
	</div>
	<br><br><br><br>
	<div class="row">
        <div class="col-lg-4 col-lg-offset-4">
            <input type="search" id="container-search" value="" class="form-control" placeholder="Search...">
        </div>
    </div>
	<div class="container" >
	
		<div class="table-responsive">
			<table class="table table-striped" >
				<caption>
					<h1>Available Inventory</h1>
				</caption>
				<thead>
					<th>Product Name</th>
					<th>Product Category</th>
					<th>Price</th>
					<th>Info</th>
				</thead>
				<c:forEach items="${productList}" var="product">
					<tbody>
						<td>${product.name}</td>
						<td>${product.category.name}</td>
						<td>${product.price}</td>
						<td><a href="<c:url value='info/${product.id}' />"
							class="btn btn-info btn-lg"> <span
								class="glyphicon glyphicon-info-sign"></span>
						</a></td>
					</tbody>
				</c:forEach>
			</table>
		</div>
	</div>
	<footer class="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3>&copy; MyCorp ShopCart Inc.</h3>
			</div>
			<div align="right" class="col-md-6">
				&nbsp;<a href="https://www.facebook.com/Axel1998Blaze"
					target="_blank"><img src="${z}/facebook-1024-black.png"
					height="50px" width="50px" class="img-rounded"></a> &nbsp;<a
					href="https://twitter.com/deeepanshu2105" target="_blank"><img
					src="${z}/twitter-512.png" height="45px" class="img-rounded"
					width=45px"></a> &nbsp;<a
					href="https://www.instagram.com/deeepanshujain/" target="_blank"><img
					src="${z}/instagram-4096-black.png" height="50px"
					class="img-rounded" width="50px"></a>
				</p>
			</div>
		</div>
	</div>

	</footer>
</body>
</html>