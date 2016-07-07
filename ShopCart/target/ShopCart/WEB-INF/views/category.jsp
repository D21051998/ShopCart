<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
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
<title>Insert title here</title>

</head>
<body>
<div class="container text-center">
<a href="/ShopCart/">Go Home:</a>
	<h1>Add a Category</h1>
	<c:url var="addAction" value="/category/add"></c:url>
	<form:form action="${addAction}" commandName="category">
		<table>
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<c:choose>
					<c:when test="${!empty category.id}">
						<td><form:input path="id" disabled="true" readonly="true" />
						</td>
					</c:when>
					<c:otherwise>
						<td><form:input path="id" pattern=".{4,7}" required="true"
								title="id should contain 6 ti 7 characters" /></td>
					</c:otherwise>
				</c:choose>
			</tr>
			<tr>
				<form:input path="id" hidden="true" />
				<td><form:label path="name">
						<spring:message text="name"></spring:message>
					</form:label></td>
				<td><form:input path="name" required="true" /></td>
			</tr>
			<tr>
				<td><form:label path="description">
						<spring:message text="Description" />
					</form:label></td>
				<td><form:input path="description" required="true" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty category.name}">
						<input type="submit"
							value="<spring:message text="Edit Category"/>" />
					</c:if> <c:if test="${empty category.name}">
						<input type="submit" value="<spring:message text="Add Category"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
	<h3>Category List</h3>
	<c:if test="${!empty categoryList}">
			<div class="table-responsive text-center">
				<table border="1"  class="table text-center">
					<tr>
						<th>Category ID</th>
						<th>Category Name</th>
						<th>Category Description</th>
						<th>Edit</th>
						<th>Delete</th>

					</tr>
					<c:forEach items="${categoryList}" var="category">
						<tr>
							<td>${category.id}</td>
							<td>${category.name}</td>
							<td>${category.description}</td>
							<td><a href="<c:url value='category/edit/${category.id}' />">Edit</a></td>
							<td><a href="<c:url value='category/remove/${category.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</c:if>
</body>
</html>