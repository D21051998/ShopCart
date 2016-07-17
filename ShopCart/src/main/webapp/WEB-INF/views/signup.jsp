<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <link href="jumbotron.css" rel="stylesheet">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <title>MyCorp Inc.</title>
    <c:url value="/resources/images" var="z"></c:url>
    <link rel="icon" href="C:\Users\Deepanshu\Desktop\mobile.ico" type="image/x-icon">
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

body > .container {
  padding: 60px 15px 0;
}
.container .text-muted {
  margin: 20px 0;
}

.footer > .container {
  padding-right: 15px;
  padding-left: 15px;
}

code {
  font-size: 80%;
}
  h1 {
	font-family: "Segoe UI", Frutiger, "Frutiger Linotype", "Dejavu Sans", "Helvetica Neue", Arial, sans-serif;
	font-size: 35px;
	font-style:normal;
	font-variant:normal;
	font-weight: 500;
	line-height: 29.4px;
}
h3 {
	font-family: "Segoe UI", Frutiger, "Frutiger Linotype", "Dejavu Sans", "Helvetica Neue", Arial, sans-serif;
	font-size: 23px;
	font-style: normal;
	font-variant: normal;
	font-weight: 500;
	line-height: 21.4px;
}
h4 {
	font-family: "Segoe UI", Frutiger, "Frutiger Linotype", "Dejavu Sans", "Helvetica Neue", Arial, sans-serif;
	font-size: 16px;
	font-style: normal;
	font-variant: normal;
	font-weight: 500;
	line-height: 19.4px;
}
    h2{font-family: "Segoe UI", Frutiger, "Frutiger Linotype", "Dejavu Sans", "Helvetica Neue", Arial, sans-serif;
}
    </style>
</head>
<body>
  <nav class="navbar navbar-default ">
    <div class="container">
      <div class="navbar-header">
        <a class="navbar-brand" href="/ShopCart/"><font color="black"><strong>MyCorp Inc.</strong></font></a>
      </div>
   </div>
 </nav>
 <br><br>
 <div class="container">
<div class="row">
<div class="col-md-12">
	<h2><center> Create Your MyCorp Account </center></h2>
	<div class="row">
	        <div class="col-md-1"></div>
			<div class="col-md-4">
			<br><br>
			    <h2><strong>Create One Account</strong></h2>
			    <h3>And Become Pro Gamer.</h3>
			    <br>
			    <h2><strong>Buy|Sell</strong></h2>
			    <h3>Buy And Sell New Peripherals,</h3>
			    <h3>And Accessories.</h3>
			    <br>
			    <h2><strong>Up-To-Date</strong></h2>
			    <h3>Play Latest Titles.</h3>
			</div>
			<div class="col-md-6 ">
				<div class="row">
					<div class="col-md-1"></div>
					<dir class="col-md-7">
					<br><br><br>
					<h2><strong> Fill In Your Details. </strong></h2>
						<form:form action="register" method="post">
							<div class="form-group">
							    <label for="fName">Full Name</label>
								<input type="text" class="form-control" name="name">
							</div>
							
							<div class="form-group">
								<label for="username">User Name</label>
								<input type="text" class="form-control" name="username">
							</div>
							<div class="form-group">
							    <label for="password">Password</label>
							    <input type="password" class="form-control" name="password">
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

<!-- <div class="container">
   <footer align="right">
      <p><font color="#555555" size="5">Email us at: admin@mycorp.com | Contact No.: 1800 3000 300 | &copy; MyCorp 2016, Inc.</font></p>
    </footer>
  </div> -->
  
  
     <!--  <footer class="footer"> -->
   <%--    <div class="row footer">
       <div class="col-md-2"></div>
        <div class="col-md-2">
        <h3>&copy;MyCorp ShopCart Inc.</h3>
        </div>
      <div class="col-md-4">
       Follow Us On:
       <div>
          <a href="https://www.facebook.com/Axel1998Blaze" target="_blank"><img src="${z}/facebook-1024-black.png" height="50px" width="50px" class="img-responsive" ></a>
          <a href="https://twitter.com/deeepanshu2105" target="_blank"><img src="${z}/twitter-512.png" height="45px" class="img-responsive" width=45px"></a>
          <a href="https://www.instagram.com/deeepanshujain/" target="_blank"><img src="${z}/instagram-4096-black.png" height="50px" class="img-responsive" width="50px"></a>
     </div>
        </div> --%>
        <div class="container-fluid footer">
  <div class="row">
   <div class="col-lg-3 col-md-4 col-xs-6 thumb">
     <h1>MyCorp Inc.</h1>
    </div>
    <div class="col-lg-3 col-md-4 col-xs-6 thumb">
     <a class="thumbnail" href="#">
     <img class="img-responsive"  height="50px" width="50px" src="${z}/facebook-1024-black.png" alt="car5"></a>
    </div>
    <div class="col-lg-3 col-md-4 col-xs-6 thumb">
     <a class="thumbnail" href="/ShoppingCart/resources/img/car5.jpg">
     <img class="img-responsive"  height="50px" width="50px" src="${z}/twitter-512.png" alt="car6"></a>
    </div>
    <div class="col-lg-3 col-md-4 col-xs-6 thumb">
     <a class="thumbnail" href="/ShoppingCart/resources/img/car6.jpg">
     <img class="img-responsive"  height="50px" width="50px" src="${z}/instagram-4096-black.png" alt="car7"></a>
    </div>
   
  </div>
</div>
       </div>
    <!-- </footer> -->
  
</body>
</html>