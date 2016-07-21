<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false"%>
<html>
<head>
<c:url value="/resources/images" var="z"></c:url>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>MyCorp Inc.</title>
<link rel="icon" href="${z}/mobile.ico" type="image/x-icon">
<style>
.carousel-inner>.item>img, body {
	font: 20px Montserrat, sans-serif;
	line-height: 1.8;
	color: #f5f6f7;
	max-height:800px !important;
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
	-webkit-filter: grayscale(70%);
	filter: grayscale(70%);
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

@media ( max-width : 1100px) {
	.carousel-caption {
		display: none;
		/* Hide the carousel text when the screen is less than 600 pixels wide */
	}
}

h2 {
	letter-spacing: 3px;
	font-size: 50px;
	color: #111;
	font-family: Montserrat, sans-serif;
}

h3, h4 {
	font-family: Montserrat, sans-serif;
	font-size: 30px;
	letter-spacing: 1px;
}
</style>
</head>


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
                       
						<li><a href="<c:url value='showCategory/view/${category.name}' />"><font color="#555555">${category.name}&nbsp;<span class="glyphicon glyphicon-menu-right"></span></font></a></li>

						</c:forEach>
				</ul>
				<li><a href="about" target="_self">About</a></li>
				<li><a href="contact" target="_self">Contact Us</a></li>

			</ul></li>
			<ul class="nav navbar-nav navbar-right">
			<c:if test="${empty userDetail}">
				<li><a href="signup"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="signin"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</c:if>
			<c:if test="${!empty userDetail}">
			    <li><a href="#"><span
						class="glyphicon glyphicon-user"></span>&nbsp;${userDetail.name}</a></li>
			    <c:if test="${userDetail.role == 'ROLE_USER'}">
			       <li><a href="#">&nbsp;Cart(0)</a></li>
			    </c:if>
			    
			    <c:if test="${userDetail.role == 'ROLE_ADMIN'}">
			       <li><a href="adminPage"><span
						class="glyphicon glyphicon-wrench"></span>&nbsp;Admin Panel</a></li>
			    </c:if>
			    <li><a href="<c:url value="/logout" />"><span
						class="glyphicon glyphicon-log-out"></span>&nbsp;Logout</a></li>
			</c:if>
			</ul>
		</div>
	</div>
</nav>
<br />
<br />

<div class="carousel slide" id="myCarousel" data-ride="carousel">
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
		<li data-target="#myCarousel" data-slide-to="3"></li>
		<li data-target="#myCarousel" data-slide-to="4"></li>
		<li data-target="#myCarousel" data-slide-to="5"></li>
		<li data-target="#myCarousel" data-slide-to="6"></li>
	</ol>
	<div class="carousel-inner" role="listbox">
		<div class="item active">
			<img src="${z}/titanfall.jpg" alt="Republic Of Gamers" width="1200"
				height="600">
			<div class="carousel-caption">
				<h2>
					<font color="WHITE">Titan Fall</font>
				</h2>
				<h3>DISPATCHES FROM THE FRONTIER</h3>
				<p>Go multiplayer, Go REAL!</p>
			</div>
		</div>
		<div class="item">
			<img src="${z}/BF!.jpg" alt="Asus" width="1200" height="600">
			<div class="carousel-caption">
				<h2>
					<font color="WHITE">Battlefield 1</font>
				</h2>
				<h3>WAR ON EPIC SCALE</h3>
				<p>
					Take The battle from the scenic Italian coast to the scorching
					Arbian Deserts.<br>Describe classic Battlefield gameplay.
				</p>
			</div>
		</div>
		<div class="item">
			<img src="${z}/COD.jpg" alt="Gigabyte" width="1200" height="600">
			<div class="carousel-caption">
				<h2>
					<font color="WHITE">CALL OF DUTY: BLACK OPS III</font>
				</h2>
				<h4>How Far will You Go?</h4>
				<p>Experience new breed of Black Ops Soldier with futuristic
					Bio-Techs.</p>
			</div>
		</div>
		<div class="item">
			<img src="${z}/syndicate.jpg" alt="Alienware 17" width="1200"
				height="600">
			<div class="carousel-caption">
				<h2>
					<font color="WHITE">Assassins Creed: Syndicate</font>
				</h2>
				<h3>Oppression Has To End</h3>
				<p>London, 1868. In the heart of Industrial Revolution, embody
					the relentless Assassin Jacob Frye to fight those who exploit the
					less privileged in the name of progress.</p>
			</div>
		</div>
		<div class="item">
			<img src="${z}/for honor.jpg" alt="Gigabyte" width="1200"
				height="600">
			<div class="carousel-caption">
				<h2>
					<font color="WHITE">For Honor</font>
				</h2>
				<h3>Dive Into The Battlefield</h3>
				<p>
					Embody legendary warriors from three different factions: <br>
					The Chosen, The Legions, The Warborn
				</p>
			</div>
		</div>
		<div class="item">
			<img src="${z}/primal.jpg" alt="Gigabyte" width="1200" height="600">
			<div class="carousel-caption">
				<h2>
					<font color="WHITE">Far Cry: Primal</font>
				</h2>
				<h3>From Prey To Predator</h3>
				<p>
					You Have One Goal:<br> Survival in the world where you are the
					prey.<br>
				</p>
			</div>
		</div>
		<div class="item">
			<img src="${z}/halo.jpg" alt="Gigabyte" width="1200" height="600">
			<div class="carousel-caption">
				<h2>
					<font color="WHITE">Halo: Spartan Strike</font>
				</h2>
				<h3>Challange Your Enemies. Strike Fast. Be A Spartan</h3>
				<p>Experience a Spartan Soldier in this classified ONI
					simulation that starts during the events of Halo 2 on New Mombasa
					in 2552.</p>
			</div>
		</div>
	</div>


	<a class="left carousel-control" href="#myCarousel" role="button"
		data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
		aria-hidden="true"></span> <span class="sr-only">Previous</span>
	</a> <a class="right carousel-control" href="#myCarousel" role="button"
		data-slide="next"> <span class="glyphicon glyphicon-chevron-right"
		aria-hidden="true"></span> <span class="sr-only">Next</span>
	</a>
</div>
<br>
<br>
<div class="container text-center">
	<font color="black">
		<center>
			<h2>
				All <strong>Titles</strong><br> <strong>One</strong> Location<br>
				<br> <b>#GameOn</b>
			</h2>
		</center> <br>
		<div class="row">
			<div class="col-md-4">
				<h3>
					<b>EA Sports</b>
				</h3>
				<img class="img-thumbnail" src="${z}/nhl17.jpg" alt="Peripherals"
					width="300" height="400" />
				<h5>
					<strong>NHL 17, NBA LIVE, FIFA 17 and more.</strong>
				</h5>
			</div>
			<div class="col-md-4">
				<h3>
					<b>2K Czech</b>
				</h3>
				<img class="img-thumbnail" src="${z}/mf11.jpg" width="300"
					height="400" alt="Accessories" />
				<h5>
					<strong>Mafia 2, Hidden & Dangerous, VietCong 2.</strong>
				</h5>
			</div>

			<div class="col-md-4">
				<h3>
					<b>Ubisoft</b>
				</h3>
				<a href="showproduct/view/all"> <img class="img-thumbnail" src="${z}/wg2.jpg"
					alt="Battlefield 4" width="300" height="400" /></a>
				<h5>
					<strong>WatchDogs 2, Assassins Creed, Far Cry, and more.</strong>
				</h5>

			</div>

		</div>
	</font>
	<br>
	<h2>Latest Releases</h2>
	<div class="embed-responsive embed-responsive-16by9">
      <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/GE2BkLqMef4?autoplay=1"></iframe>
    </div>
	
	<hr>
	
	<footer align="right">
		<p>
			<font color="#555555">Email us at: admin@mycorp.com | Contact
				No.: 1800 3000 300 | &copy; MyCorp 2016, Inc.</font>
		</p>
	</footer>
</div>
</body>
</html>