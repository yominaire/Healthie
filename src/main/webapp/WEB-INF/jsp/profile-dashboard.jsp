<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Healthie - My dashboard template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- styles -->
<link href="static/assets/css/bootstrap.css" rel="stylesheet">
<link href="static/assets/css/bootstrap-responsive.css" rel="stylesheet">
<link href="static/assets/css/prettyPhoto.css" rel="stylesheet">
<link href="static/assets/js/google-code-prettify/prettify.css"
	rel="stylesheet">
<link href="static/assets/css/flexslider.css" rel="stylesheet">

<link href="static/assets/css/style.css" rel="stylesheet">
<link href="static/assets/color/default.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Droid+Serif:400,600,400italic|Open+Sans:400,600,700"
	rel="stylesheet">

<!-- fav and touch icons -->
<link rel="shortcut icon" href="static/assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="static/assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="static/assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="static/assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="static/assets/ico/apple-touch-icon-57-precomposed.png">

<!-- =======================================================
    Theme Name: Lumia
    Theme URL: https://bootstrapmade.com/lumia-bootstrap-business-template/
    Author: BootstrapMade.com
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>


<body>
	<div id="wrapper" class="row">
		<header>
			<!-- Navbar
    ================================================== -->
			<div class="navbar navbar-static-top">
				<div class="navbar-inner">
					<div class="container">
						<!-- logo -->
						<div class="logo">
							<a href="index.html"> <img src="static/assets/img/logo.png"
								alt="" />
							</a>
						</div>
						<!-- end logo -->
						<!-- top menu -->
						<div class="navigation">
							<nav>
								<ul class="nav topnav">
									<li class="active"><a href="index"><i
											class="icon-home"></i> Home </a></li>
									<li class="dropdown"><a href="#"><i class="icon-cog"></i>
											About <i class="icon-angle-down"></i></a>
										<ul class="dropdown-menu">
											<li><a href="about">About</a></li>
											<li><a href="contact">Contact Us</a></li>
											<li><a href="members">Members</a></li>
										</ul></li>

									<li><a href="contact"><i class="icon-envelope-alt"></i>
											Contact </a></li>
									<c:choose>
										<c:when test="${not empty logedinUser}">
											<li class="dropdown"><a href="profile"><i
													class="icon-cog"></i> Profile <i class="icon-angle-down"></i></a>
												<ul class="dropdown-menu">
													<li><a href="profile">Profile</a></li>
													<li><a href="edituser-${logedinUser.id}"> Edit </a></li>

												</ul></li>
											<li class="nav-item"><a class="nav-link" id="logout"
												href="logout">Logout || ${logedinUser.fname}</a></li>
										</c:when>
										<c:otherwise>
											<li class="nav-item"><a id="signup" href="register">Register</a>
											</li>
											<li><a id="login" href="login">Login</a></li>
										</c:otherwise>
									</c:choose>

								</ul>
							</nav>
						</div>
						<!-- end menu -->
					</div>
				</div>
			</div>
		</header>
		<!-- Subintro
================================================== -->
		<section id="subintro">
			<div class="container">
				<div class="row">
					<div class="span8">
						<ul class="breadcrumb">
							<li><a href="#"><i class="icon-home"></i></a><i
								class="icon-angle-right"></i></li>
							<li><a href="#">Profile</a><i class="icon-angle-right"></i></li>
							<li><a href="http://localhost:8500/carsale/profile">update</a><i
								class="icon-angle-right"></i></li>
							<li class="active">Dashboard</li>
						</ul>
					</div>
					<div class="span4">
						<div class="search">
							<form class="input-append" action="search" method="post">
								<input class="search-form" name="lname"
									id="appendedPrependedInput" type="text"
									placeholder="Search here.." />
								<button class="btn btn-dark" type="submit">Search</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section id="maincontent">
			<div class="container">
				<div class="row">
					<div class="span12">
						<h2>${logedinUser.fname} ${logedinUser.lname}
							</h2>

					</div>
				</div>

				<div>
					<h3>Your BMI is
					<fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${bmi}" />
					</h3>
				</div>


				<div class="row">
					<ul class="portfolio-area da-thumbs">
						<c:forEach var="item" items="${filesname}">
							<li class="portfolio-item" data-id="id-0" data-type="web">
								<div class="span4">
									<div class="thumbnail">
										<div class="image-wrapp">
											<img
												src="${contextPath}//users//carhire//${logedinUser.id}//1.jpg"
												alt="Portfolio name" title="" />
											<article class="da-animate da-slideFromRight">
												<a class="zoom" data-pretty="prettyPhoto"
													href="static/assets/img/dummies/big1.jpg"> <i
													class="icon-zoom-in icon-rounded icon-48 active"></i>
												</a> <a href="portfolio-detail.html"> <i
													class="icon-link icon-rounded icon-48 active"></i>
												</a>
												<div class="hidden-tablet">
													<p>${logedinUser.fname}</p>
												</div>
											</article>
										</div>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
				<!-- <div class="row">
          <div class="span12">
            <div class="pagination">
              <ul>
                <li><a href="#">Prev</a></li>
                <li><a href="#">1</a></li>
                <li class="active"><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">Next</a></li>
              </ul>
            </div>
          </div>
        </div> -->
			</div>
		</section>
		<!-- Footer
 ================================================== -->
		<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="span4">
						<div class="widget">
							<h5>Interesting pages</h5>
							<ul class="regular">
								<li><a href="#">About our company</a></li>
								<li><a href="#">Your daily Goal</a></li>
								<li><a href="#">The right Exercise</a></li>
								<li><a href="#">The right Food</a></li>
								<li><a href="#">Get in touch with us</a></li>
							</ul>
						</div>
					</div>
					<div class="span4">
						<div class="widget">
							<h5>Healthie living</h5>
							<div class="flickr-badge">
								<script type="text/javascript"
									src="http://www.flickr.com/badge_code_v2.gne?count=9&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script>

							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="span4">
						<div class="widget">
							<h5>How to find us</h5>
							<address>
								<i class="icon-home"></i> <strong>Healthie company,
									Inc.</strong><br> 8614 Machester Rd, Saint Louis MO 63031<br>

							</address>
							<p>
								<i class="icon-phone"></i> (314) 337-1504<br> <i
									class="icon-envelope-alt"></i> info@healthie.com
							</p>
						</div>
						<div class="widget">
							<ul class="social">
								<li><a href="#" data-placement="bottom" title="Twitter"><i
										class="icon-twitter icon-square icon-32"></i></a></li>
								<li><a href="#" data-placement="bottom" title="Facebook"><i
										class="icon-facebook icon-square icon-32"></i></a></li>
								<li><a href="#" data-placement="bottom" title="Linkedin"><i
										class="icon-linkedin icon-square icon-32"></i></a></li>
								<li><a href="#" data-placement="bottom" title="Pinterest"><i
										class="icon-pinterest icon-square icon-32"></i></a></li>
								<li><a href="#" data-placement="bottom" title="Google plus"><i
										class="icon-google-plus icon-square icon-32"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="verybottom">
				<div class="container">
					<div class="row">
						<div class="span6">
							<p>&copy; Healthie - All right reserved</p>
						</div>
						<div class="span6">
							<div class="pull-right">
								<div class="credits"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>

	</div>
	<!-- end wrapper -->
	<a href="#" class="scrollup"><i
		class="icon-chevron-up icon-square icon-48 active"></i></a>
	<script src="static/assets/js/jquery.js"></script>
	<script src="static/assets/js/raphael-min.js"></script>
	<script src="static/assets/js/jquery.easing.1.3.js"></script>
	<script src="static/assets/js/bootstrap.js"></script>
	<script src="static/assets/js/google-code-prettify/prettify.js"></script>
	<script src="static/assets/js/jquery.elastislide.js"></script>
	<script src="static/assets/js/jquery.prettyPhoto.js"></script>
	<script src="static/assets/js/jquery.flexslider.js"></script>
	<script src="static/assets/js/jquery-hover-effect.js"></script>
	<script src="static/assets/js/portfolio/jquery.quicksand.js"></script>
	<script src="static/assets/js/portfolio/setting.js"></script>
	<script src="static/assets/js/animate.js"></script>

	<!-- Template Custom JavaScript File -->
	<script src="static/assets/js/custom.js"></script>

</body>



</html>
