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
  <title>Lumia - Multipurpose responsive bootstrap website template</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- styles -->
  <link href="static/assets/css/bootstrap.css" rel="stylesheet">
  <link href="static/assets/css/bootstrap-responsive.css" rel="stylesheet">
  <link href="static/assets/css/prettyPhoto.css" rel="stylesheet">
  <link href="static/assets/js/google-code-prettify/prettify.css" rel="stylesheet">
  <link href="static/assets/css/flexslider.css" rel="stylesheet">

  <link href="static/assets/css/style.css" rel="stylesheet">
  <link href="static/assets/color/default.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,600,400italic|Open+Sans:400,600,700" rel="stylesheet">

  <!-- fav and touch icons -->
  <link rel="shortcut icon" href="static/assets/ico/favicon.ico">
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="static/assets/ico/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="static/assets/ico/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="static/assets/ico/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="static/assets/ico/apple-touch-icon-57-precomposed.png">

  <!-- =======================================================
    Theme Name: Lumia
    Theme URL: https://bootstrapmade.com/lumia-bootstrap-business-template/
    Author: BootstrapMade.com
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>


<body>
  <div id="wrapper">
    <header>
      <!-- Navbar
    ================================================== -->
      <div class="navbar navbar-static-top">
        <div class="navbar-inner">
          <div class="container">
            <!-- logo -->
            <div class="logo">
              <a href="index.html">
								<img src="static/assets/img/logo.png" alt="" />
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
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li><a href="#">Home</a><i class="icon-angle-right"></i></li>
              <li class="active">profile detail</li>
            </ul>
          </div>
          <div class="span4">
            <div class="search">
              <form  class="input-append">
                <input class="search-form" id="appendedPrependedInput" type="text" placeholder="Search here.." />
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
            <article>
              <div class="heading">
                <h4>Welcome ${logedinUser.fname} ${logedinUser.lname}</h4>
              </div>
              <div class="clearfix">
              </div>
              <div class="row col-md-12">
                <div class="span4">
                  <aside>
                   <form:form  class="needs-validation" action="profile-update" modelAttribute="user" method="post">
                     <h4>Get your body mass Index</h4>
						<div class="form-row">
							<div class="col-md-4 mb-3">
								<label for="validationCustom01">Age</label>
								<input type="number" class="form-control input-medium" id="validationCustom01" placeholder="Age" name="age" required>
								<div class="valid-feedback">Looks good!</div>
							</div>
							<div class="col-md-4 mb-3">
								<label for="validationCustom02">Weight (lbs)</label> 
								<input type="number" class="form-control input-medium" id="validationCustom02" placeholder="Weight" name="weight" required>
								<div class="valid-feedback">Looks good!</div>
							</div>
						</div>
						
						<div class="form-row">
							<div class="col-md-4 mb-3">
								<label for="validationCustomUsername">Height (Feet)</label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text" id="inputGroupPrepend"></span>
									</div>
									<input type="text" class="form-control" id="validationCustomUsername" placeholder="height" name="height" aria-describedby="inputGroupPrepend" required>
									<div class="invalid-feedback">Please input your height</div>
								</div>
							</div>
							<div class="col-md-4 mb-3 ">
								<label for="validationCustom03">Gender</label> 
								<select class="form-control" id="validationCustom03" name="gender" required>
									<option value="male">Male</option>
									<option  value="female">Female</option>	
								</select>
								<div class="invalid-feedback"></div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12 mb-12">
								<input class="form-check-input form-control" type="checkbox" value="" id="invalidCheck" required> 
								<label class="form-check-label" for="invalidCheck"> Agree to terms and conditions </label>
								<div class="invalid-feedback">You must agree before submitting.</div>
							</div>
						</div>
						<button class="btn btn-primary" type="submit">Submit form</button>
					</form:form>
                  </aside>
                </div>
                <div class="span8">
                <div class="row">
		          <div class="span12">
		            <div class="row">
		              <div class="span4">
		               <div class="card" style="width: 18rem;">
							<img src="static/assets/img/dummies/workout.jpg" alt="...">
							<div class="card-body">
								<h5 class="card-title">Work Out</h5>
								<p class="card-text">The only Bad workout is the one that didn't happen</p>
								<a href="workout" class="btn btn-primary">Exercise</a>
							</div>
						</div>
		              </div>
		              <div class="span4">
		                <div class="card" style="width: 18rem;">
							<img src="static/assets/img/dummies/diet.jpg" alt="...">
							<div class="card-body">
								<h5 class="card-title">Diet</h5>
								<p class="card-text">Start where you are.Use what you have. Do what you can</p>
								<a href="diet" class="btn btn-primary">Nutrition</a>
							</div>
						</div>
		              </div>
		              
		              
		            </div>
		          </div>
                  
                </div>
                </div>
              </div>
            </article>
            <!-- end article full post -->
          </div>
        </div>
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
              <h5>Heathie Living</h5>
              <div class="flickr-badge">
                <script type="text/javascript" src="http://www.flickr.com/badge_code_v2.gne?count=9&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script>

              </div>
              <div class="clear"></div>
            </div>
          </div>
              <div class="clear"></div>
            </div>
          </div>
           <div class="span4">
            <div class="widget">
              <h5>How to find us</h5>
              <address>
								<i class="icon-home"></i> <strong>Healthie company, Inc.</strong><br>
								8614 Machester Rd, Saint Louis Mo 63031<br>
								</address>>
              </p>
            </div>
            <div class="widget">
              <ul class="social">
                <li><a href="#" data-placement="bottom" title="Twitter"><i class="icon-twitter icon-square icon-32"></i></a></li>
                <li><a href="#" data-placement="bottom" title="Facebook"><i class="icon-facebook icon-square icon-32"></i></a></li>
                <li><a href="#" data-placement="bottom" title="Linkedin"><i class="icon-linkedin icon-square icon-32"></i></a></li>
                <li><a href="#" data-placement="bottom" title="Pinterest"><i class="icon-pinterest icon-square icon-32"></i></a></li>
                <li><a href="#" data-placement="bottom" title="Google plus"><i class="icon-google-plus icon-square icon-32"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="verybottom">
        <div class="container">
          <div class="row">
            <div class="span6">
              <p>
                &copy; Healthie - All right reserved
              </p>
            </div>
            <div class="span6">
              <div class="pull-right">
                <div class="credits">
                  <!--
                    All the links in the footer should remain intact.
                    You can delete the links only if you purchased the pro version.
                    Licensing information: https://bootstrapmade.com/license/
                    Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Lumia
                  -->
                  Created by <a href="https://bootstrapmade.com/">Abayomi</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>

  </div>
  <!-- end wrapper -->
  <a href="#" class="scrollup"><i class="icon-chevron-up icon-square icon-48 active"></i></a>
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
