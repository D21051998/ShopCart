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
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Insert title here</title>
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
				<li><a href="<c:url value='showproduct/view/all'/> "><font color="#555555">All&nbsp;<span class="glyphicon glyphicon-menu-right"></span></font></a></li>
				<li class="divider" role="seperator"></li>
					<c:forEach items="${categoryList}" var="category">
                       
						<li><a href="<c:url value='category/view/${category.name}' />"><font color="#555555">${category.name}&nbsp;<span class="glyphicon glyphicon-menu-right"></span></font></a></li>

						</c:forEach>
				</ul>
				<li><a href="about" target="_self">About</a></li>
				<li><a href="contact" target="_self">Contact Us</a></li>

			</ul></li>
			<ul class="nav navbar-nav navbar-right">
			<c:if test="${empty userDetail}">
				<li><a href="/ShopCart/signup"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="/ShopCart/signin"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</c:if>
			<c:if test="${!empty userDetail}">
			    <li><a href="#"><span
						class="glyphicon glyphicon-user"></span>&nbsp;${userDetail.name}</a></li>
			    <c:if test="${userDetail.role == 'ROLE_USER'}">
			       <li><a href="#"><span
						class="glyphicon glyphicon-user"></span>&nbsp;Login Type: User</a></li>
			    </c:if>
			    <c:if test="${userDetail.role == 'ROLE_ADMIN'}">
			       <li><a href="adminPage"><span
						class="glyphicon glyphicon-user"></span>&nbsp;Login Type: ADMIN</a></li>
			    </c:if>
			</c:if>
			</ul>
		</div>
	</div>
</nav>
<div class="table-responsive">
<table class="table">
<caption>Products Available</caption>
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
<td><a href="<c:url value='info/${product.id}' />" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-info-sign"></span>
        </a></td>
</tbody>
</c:forEach>
</table>
</div>

</body>
</html>