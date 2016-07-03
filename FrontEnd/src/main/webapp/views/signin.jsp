<html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <link href="jumbotron.css" rel="stylesheet">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <title>MyCorp Inc.</title>
    <link rel="icon" href="C:\Users\Deepanshu\Desktop\mobile.ico" type="image/x-icon">
  <style media="screen">
      .margin {
        margin-bottom: 45px;
      }
      body {
      font: 20px Montserrat, sans-serif;
      line-height: 1.8;
      letter-spacing: 1.5;
      color: #555555;
      font-family: Montserrat, sans-serif;
      }
      #outPopUp {
	position: absolute;;
	width: 600px;
	height: 450px;
	z-index: 15;
  top: 30%;
	left: 45%;
	margin: -100px 0 0 -150px;
  border-spacing: 10px 10px;
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
p {
	font-family: "Segoe UI", Frutiger, "Frutiger Linotype", "Dejavu Sans", "Helvetica Neue", Arial, sans-serif;
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 20px;
}
container{
  width:709px;
  height: 409px
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
  </style>
 </head>
 <body>
  <nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
          <img class="img-resopnsive" src="images/Retail-eCommerce-Icon-300x300.png" width="50" hight="50" alt="" />
        <a class="navbar-brand" href="#">MyCorp Inc.</a>
      </div>
   </div>
 </nav>
   <div id="outPopUp">
      <center><h1><strong>MyCorp Login<strong></h1>
     <img width="60" hight="60" src="C:\Users\Deepanshu\Desktop\register-secure-security-user-login-icon--7.png" class="img-rounded" alt="User" />
   </center>
   <hr>
     <div class="row">
       <div class="col-sm-6">
       <h2><strong>Welcome,</strong></h2>
        <h3><b>Manage Your Orders</b></h3>
        <h4>Easily Track Orders, Create Returns</h4>
        <h3><b>Make Informed Decisions</b></h3>
        <h4>Enhanced Searches</h4>
       </div>
       <div class="col-sm-6">
         <form:form action="isValidUser" method="post">
           <div class="form-group">
            <label for="userID">User Name</label>
            <input type="text" class="form-control" name="userID" placeholder="User Name">
           </div>
           <div class="form-group">
           <label for="password">Password</label>
           <input type="text" class="form-control" name="password" placeholder="Password">
           </div>
           <div class="row text-center">
             <div class="col-sm-6">
             <div class="form-group">
               <button type="submit" name="submit" class="btn btn-success">Submit</button>
             </div>
           </div>
           <div class="col-sm-6">
             <div class="form-group text-center">
               <button type="reset" name="reset" class="btn btn-danger">Reset</button>
             </div>
           </div>
           </div>
         </form:form>
       </div>
     </div>
  </div>
  <div>
 </body>
</html>
