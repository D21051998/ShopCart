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