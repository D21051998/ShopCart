<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="/ShopCart/">Go Home:</a>
	<h1>Add a Supplier</h1>
	<div class="container">
		<c:url var="addAction" value="/supplier/add"></c:url>
		<form:form action="${addAction}" commandName="supplier">
			<table>
				<tr>
					<td><form:label path="id">
							<spring:message text="ID" />
						</form:label></td>
					<c:choose>
						<c:when test="${!empty supplier.id}">
							<td><form:input path="id" pattern=".{3,6}" disabled="true"
									readonly="true" title="id should contain 3 to 6 characters" />
							</td>
						</c:when>
						<c:otherwise>
							<td><form:input path="id" pattern=".{3,6}" required="true"
									title="id should contain 3 to 6 characters" /></td>
						</c:otherwise>
					</c:choose>
				</tr>
				<tr>
					<form:input path="id" hidden="true" />
					<td><form:label path="name">
							<spring:message text="name">
							</spring:message>
						</form:label></td>
					<td><form:input path="name" required="true" /></td>

				</tr>
				<tr>
					<td><form:label path="address">
							<spring:message text="address">
							</spring:message>
						</form:label></td>
					<td><form:input path="address" required="true" /></td>
				</tr>
				<tr>
					<td colspan="2"><c:if test="${!empty supplier.name}">
							<input type="submit"
								value="<spring:message text="Edit Supplier"/>" />
						</c:if> <c:if test="${empty supplier.name}">
							<input type="submit"
								value="<spring:message text="Add Supplier"/>" />
						</c:if></td>
				</tr>
			</table>
		</form:form>
		<h3>Category List</h3>
		<c:if test="${!empty supplierList}">
			<div class="table-responsive text-center">
				<table border="1" class="table text-center">
					<tr>
						<th>Supplier ID</th>
						<th>Supplier Name</th>
						<th>Supplier Address</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
					<c:forEach items="${supplierList}" var="supplier">
						<tr>
							<td>${supplier.id}</td>
							<td>${supplier.name}</td>
							<td>${supplier.address}</td>
							<td><a href="<c:url value='supplier/edit/${supplier.id}' />">Edit</a></td>
							<td><a
								href="<c:url value='supplier/remove/${supplier.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
	</div>
	</c:if>
	</div>

</body>
</html>