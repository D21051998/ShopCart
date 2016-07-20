<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<link href="jumbotron.css" rel="stylesheet">
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>MyCorp Inc.</title>
<c:url value="/resources/images" var="z"></c:url>
<link rel="icon" href="C:\Users\Deepanshu\Desktop\mobile.ico"
	type="image/x-icon">
<style type="text/css">
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

h1 {
	font-family: "Segoe UI", Frutiger, "Frutiger Linotype", "Dejavu Sans",
		"Helvetica Neue", Arial, sans-serif;
	font-size: 35px;
	font-style: normal;
	font-variant: normal;
	font-weight: 500;
	line-height: 29.4px;
}

h3 {
	font-family: "Segoe UI", Frutiger, "Frutiger Linotype", "Dejavu Sans",
		"Helvetica Neue", Arial, sans-serif;
	font-size: 23px;
	font-style: normal;
	font-variant: normal;
	font-weight: 500;
	line-height: 21.4px;
}

h4 {
	font-family: "Segoe UI", Frutiger, "Frutiger Linotype", "Dejavu Sans",
		"Helvetica Neue", Arial, sans-serif;
	font-size: 16px;
	font-style: normal;
	font-variant: normal;
	font-weight: 500;
	line-height: 19.4px;
}

h2 {
	font-family: "Segoe UI", Frutiger, "Frutiger Linotype", "Dejavu Sans",
		"Helvetica Neue", Arial, sans-serif;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default ">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="/ShopCart/"><font color="black"><strong>MyCorp
							Inc.</strong></font></a>
			</div>
		</div>
	</nav>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2>
					<center>Create Your MyCorp Account</center>
				</h2>
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-4">
						<br>
						<br>
						<h2>Brace YourSelves</h2>
						<h3>Two More Steps...</h3>
						<h3>To Enter a New World.</h3>
					</div>
					<div class="col-md-6 ">
						<div class="row">
							<div class="col-md-1"></div>
							<dir class="col-md-7">
								<br>

								<h2>
									<strong> Fill In Your Details. </strong>
								</h2>
								<c:url var="addAction" value="/user/add"></c:url>
								<form:form action="${addAction}" commandName="user">
									<div class="form-group">
										<form:label path="name"> <spring:message text="Name" /></form:label>
										<input type="text" path="name"
											class="form-control" name="name">
									</div>
									<div class="form-group">
										<form:label path="username"> <spring:message text="UserName" /></form:label>
										<input type="text" path="username"
											class="form-control" name="username">
									</div>
									<div class="form-group">
										<form:label path="password"> <spring:message text="Password" /></form:label>
										<input type="password" path="password"
											class="form-control" name="password">
									</div>
									<div class="form-group">
										<form:label path="email"> <spring:message text="E Mail" /></form:label>
										<input type="text" path="email"
											class="form-control" name="email">
									</div>
									<div class="form-group">
										<form:label path="contact"> <spring:message text="Contact" /></form:label>
										<input type="text" path="contact"
											class="form-control" name="contact">
									</div>
									<div class="row">
										<div class="col-md-1"></div>
										<div class="col-md-3">
											<div class="form-group">
												<button class="btn btn-success" type="submit" name="submit">Submit</button>
											</div>
										</div>
										<div class="col-md-3"></div>
										<div class="col-md-3">
											<div class="form-group">
												<button class="btn btn-danger" type="reset" name="reset">Reset</button>
											</div>
										</div>
									</div>
								</form:form>
							</dir>
						</div>
					</div>
				</div>
			</div>
		</div>
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