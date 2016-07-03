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
  <link rel="icon" href="C:\Users\Deepanshu\Desktop\mobile.ico" type="image/x-icon">
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
<body>
  <nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <img class="img-resopnsive" src="images/Retail-eCommerce-Icon-300x300.png" width="50" hight="50" alt="" />
        <a class="navbar-brand" href="#">MyCorp Inc.</a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
      <form:form class="navbar-form navbar-right"  action="signin">
        <div class="form-group">
          <button type="submit" class="btn btn-success">Sign In</button>
        </div>
        </form:form>
        <form:form action="signup.jsp" class="navbar-form navbar-right"">
        <div class="form-group">
          <button type="submit" class="btn btn-success">Register</button>
        </div>
        </form:form>
      </div>
   </div>
 </nav>
      <div class="carousel slide" id="myCarousel" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
          <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <div class="item active">
            <img src="images/OIR_resizer.jpg" alt="Republic Of Gamers" width="1200" height="700">
            <div class="carousel-caption">
            <h2><font color="WHITE">Republic Of Gamers</font></h2>
            <p>Brand New ASUS ROG Machines</p>
        </div>
          </div>
          <div class="item">
            <img src="images/Resized-T1776.jpg" alt="Asus" width="1200" height="700">
            <div class="carousel-caption">
          <h2><font color="WHITE"> ASUS ROG G751</font></h2>
          <h3>Rule The Game</h3>
        </div>
          </div>
          <div class="item">
           <img src="images/Resized-VGDIX.jpg" alt="Gigabyte" width="1200" height="700">
            <div class="carousel-caption">
            <h2><font color="WHITE"> MSI</font></h2>
            <p>Play Hard, Stay Silent</p>
            </div>
          </div>
          <div class="item">
           <img src="images/alnwr17.jpg" alt="Alienware 17" width="1200" height="700">
           <div class="carousel-caption">
          <h2><font color="WHITE"> Alienware 17</font></h2>
          <h3>Supreme Machine</h3>
          <p>43.1cm (17) laptop, featuring Intel® Core™ i7 processors, dynamic overclocking and an FHD screen. Add an optional graphics amplifier for superior graphics and gameplay.</p>
        </div>
          </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
         <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
         <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
         <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <br><br>
 <div class="container text-center"><font color="black">
   <center><h2>You Wanted it<strong> So </strong>We Brought it<h2></center><br>
    <div class="row">
      <div class="col-md-4">
        <h3><b>Feel The Power Of Connection</b></h3>
        <img class="img-thumbnail" src="images/Resized-H7FD6.jpg" alt="Peripherals" width="300" height="400" />
        <h4>With Latest Gaming Peripherals</h4>
      </div>
      <div class="col-md-4">
        <h3><b>Harness The Power Of Gaming</b></h3>
        <img class="img-thumbnail" src="images/Resized-FZ8I9.jpg" width="300" height="400" alt="Accessories"/>
        <h4>With Best Gaming Accessories</h4>
      </div>
      <div class="col-md-4">
        <h3><b>Play Like A<br>Legend</b></h3>
        <img class="img-thumbnail" src="images/Gaming-News-GLV-Daily-Digest-for-July-30-2014.jpeg" alt="Battlefield 4" width="300" height="400" />
        <h4>Best Rated Titles</h4>
      </div>
    </div>
    </font>
    <hr>
    <footer align="right">
      <p ><font color="#555555">Email us at: admin@mycorp.com | Contact No.: 1800 3000 300 | &copy; MyCorp 2016, Inc.</font></p>
    </footer>
  </div>
</body>
</html>
