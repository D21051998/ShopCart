<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:url value="/resources/images" var="z"></c:url>
<link rel="icon" href="${z}/edit.png" type="image/x-icon">
<title>Supplier CRUD</title>
<style>
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}
body {
  padding-top: 50px;
}


/*
 * Global add-ons
 */

.sub-header {
  padding-bottom: 10px;
  border-bottom: 1px solid #eee;
}

/*
 * Top navigation
 * Hide default border to remove 1px line.
 */
.navbar-fixed-top {
  border: 0;
}

/*
 * Sidebar
 */

/* Hide for mobile, show later */
.sidebar {
  display: none;
}
@media (min-width: 768px) {
  .sidebar {
    position: fixed;
    top: 51px;
    bottom: 0;
    left: 0;
    z-index: 1000;
    display: block;
    padding: 20px;
    overflow-x: hidden;
    overflow-y: auto; /* Scrollable contents if viewport is shorter than content. */
    background-color: #f5f5f5;
    border-right: 1px solid #eee;
  }
}

/* Sidebar navigation */
.nav-sidebar {
  margin-right: -21px; /* 20px padding + 1px border */
  margin-bottom: 20px;
  margin-left: -20px;
}
.nav-sidebar > li > a {
  padding-right: 20px;
  padding-left: 20px;
}
.nav-sidebar > .active > a,
.nav-sidebar > .active > a:hover,
.nav-sidebar > .active > a:focus {
  color: #fff;
  background-color: #428bca;
}


/*
 * Main content
 */

.main {
  padding: 20px;
}
@media (min-width: 768px) {
  .main {
    padding-right: 40px;
    padding-left: 40px;
  }
}
.main .page-header {
  margin-top: 0;
}


/*
 * Placeholder dashboard ideas
 */

.placeholders {
  margin-bottom: 30px;
  text-align: center;
}
.placeholders h4 {
  margin-bottom: 0;
}

.form-signin {
	max-width: 330px;
	padding: 15px;
	margin: 0 auto;
}

.form-signin .form-signin-heading, .form-signin .checkbox {
	margin-bottom: 10px;
}

.form-signin .checkbox {
	font-weight: normal;
}

.form-signin .form-control {
	position: relative;
	height: auto;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	padding: 10px;
	font-size: 16px;
}

.form-signin .form-control:focus {
	z-index: 2;
}

.form-signin input[type="text"] {
	margin-bottom: -1px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.placeholder {
  margin-bottom: 20px;
}
.placeholder img {
  display: inline-block;
  border-radius: 50%;
}
.navbar {
	padding-top: 7px;
	padding-bottom: 15px;
	border: 0;
	border-radius: 0;
	margin-bottom: 0;
	font-size: 12px;
	letter-spacing: 2px;
}
.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.container-fluid{padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
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
			<a class="navbar-brand" href="/ShopCart/"><font color="black"><strong>MyCorp
						Inc.</strong></font></a>
		</div>
	</div>
</nav>
<div class="container-fluid">
 <div class="row">
		<div class="col-sm-3 col-md-2 sidebar">
			<ul class="nav nav-sidebar">
				<li ><a href="adminPage">Admin Panel</a></li>
				<li></li>
				<li ><a href="product">Products</a></li>
				<li><a href="category">Category</a></li>
				<li class="active"><a href="supplier">Supplier<span
						class="sr-only">(current)</span></a></li>
				<li><a href="/ShopCart/">Site Home</a></li>
			</ul>
		</div>
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"> 
		<div class="container">
   
	<h1>Add a Supplier</h1>
	<div class="container">
		<c:url var="addAction" value="/supplier/add"></c:url>
		<form:form action="${addAction}" class="form-signin" commandName="supplier">
			<table class="table">
				<tr>
				<div class="form-group">
					<td><form:label path="id">
							<spring:message text="ID" />
						</form:label></td>
					<c:choose>
						<c:when test="${!empty supplier.id}">
							<td><form:input path="id" pattern=".{3,6}" disabled="true"
									readonly="true" title="id should contain 3 to 6 characters" class="form-control"
										style="width:250px !important;"/>
							</td>
							
						</c:when>
						<c:otherwise>
							<td><form:input path="id" pattern=".{3,6}" required="true"
									title="id should contain 3 to 6 characters" class="form-control"
										style="width:250px !important;"/></td>
									<td><form:errors path="id" cssClass="error" /></td>
						</c:otherwise>
					</c:choose>
					</div>
				</tr>
				<tr>
				<div class="form-group">
					<form:input path="id" hidden="true" />
					<td><form:label path="name">
							<spring:message text="Name">
							</spring:message>
						</form:label></td>
					<td><form:input path="name" required="true" class="form-control"
										style="width:250px !important;"/></td>
					<td><form:errors path="name" cssClass="error" /></td>
					</div>
				</tr>
				<tr>
				<div class="form-group">
					<td><form:label path="address">
							<spring:message text="Address">
							</spring:message>
						</form:label></td>
					<td><form:input path="address" required="true" class="form-control"
										style="width:250px !important;"/></td>
					<td><form:errors path="address" cssClass="error" /></td>
				</div>
				</tr>
				<tr>
				<div class="form-group">
					<td colspan="2"><c:if test="${!empty supplier.name}">
							<input type="submit"
								value="<spring:message text="Edit Supplier"/>" class="btn btn-default"
										style="width:250px !important;"/>
						</c:if> <c:if test="${empty supplier.name}">
							<input type="submit"
								value="<spring:message text="Add Supplier"/>" class="btn btn-default"
										style="width:250px !important;"/>
						</c:if></td>
						</div>
				</tr>
			</table>
		</form:form>
		<h3>Supplier List</h3>
		<c:if test="${!empty supplierList}">
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
					<tr>
						<th>Supplier ID</th>
						<th>Supplier Name</th>
						<th>Supplier Address</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
					</thead>
					<c:forEach items="${supplierList}" var="supplier">
						<tbody>
						<tr>
							<td>${supplier.id}</td>
							<td>${supplier.name}</td>
							<td>${supplier.address}</td>
							<td><a href="<c:url value='supplier/edit/${supplier.id}' />">Edit</a></td>
							<td><a
								href="<c:url value='supplier/remove/${supplier.id}' />">Delete</a></td>
						</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>
	</div>
	</c:if>
	</div>
</div></div>
</div>
</body>
</html>