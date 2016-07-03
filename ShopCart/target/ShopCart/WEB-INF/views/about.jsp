<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
  <c:url value="/resources/images"  var="z"></c:url>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <title>About MyCorp Inc.</title>
  <link rel="icon" href="${z}/mobile.ico" type="image/x-icon">
  <style>
  .carousel-inner > .item > img,
  body {
      font: 20px Montserrat, sans-serif;
      line-height: 1.8;
      color: #f5f6f7;
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
   h2{
   letter-spacing: 3px;
   font-size: 40px;
   color: #111;
   font-family: Montserrat, sans-serif;
   }
   h3,h4{font-family: Montserrat, sans-serif;
      letter-spacing: 1px;
    }
  </style>
</head>


  <nav class="navbar navbar-default navbar-static-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
         <a class="navbar-brand" href="/ShopCart/"><font color="black"><strong>MyCorp Inc.</strong></font></a>
      </div>
      
      <div id="navbar" class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
         <li><a href="/ShopCart/" target="_self">Home</a></li>
         <li class="active"><a href="about" target="_self">About</a></li>
         <li><a href="contact" target="_self">Contact Us</a></li>
      </ul>
      
      </div>
   </div>
 </nav>

</body>
</html>