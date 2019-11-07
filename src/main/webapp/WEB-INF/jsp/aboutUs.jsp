
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Healthie -</title>
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
    Theme Name: Healthie
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
              <a href="index.html"><img src="static/assets/img/logo.png" alt="" /></a>
            </div>
            <!-- end logo -->
            <!-- top menu -->
            <div class="navigation">
              <nav>
                <ul class="nav topnav">
                  <li>
                    <a href="index"><i class="icon-home"></i> Home </a>
                  </li>
                  <li class="dropdown">
                    <a href="#" class="active"><i class="icon-cog"></i> About <i class="icon-angle-down"></i></a>
                    <ul class="dropdown-menu">
                      <li><a href="about">About</a></li>
                      <li><a href="contact">Contact Us</a></li>                      
                    </ul>
                  </li>                  
                                   
                  <li>
                    <a href="contact"><i class="icon-envelope-alt"></i> Contact </a>
                  </li>
                   <c:choose>
				    <c:when test="${not empty logedinUser}">
				    <li class="dropdown">
                    <a href="profile"><i class="icon-cog"></i>  Profile <i class="icon-angle-down"></i></a>
                    <ul class="dropdown-menu">
                      <li><a href="profile">Profile</a></li>
                      <li><a href="edituser-${logedinUser.id}">
					  Edit
					  </a>
					  </li>
                                           
                      </ul>
                     </li> 
				        <li class="nav-item">
				          <a class="nav-link" id="logout" href="logout">Logout || ${logedinUser.fname}</a>
				        </li>
				    </c:when>
				    <c:otherwise>
				    <li class="nav-item">
				          <a id="signup" href="register">Register</a>
				        </li>
				        <li>
				          <a id="login" href="login">Login</a>
				        </li>
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
              <li><a href="#">Pages</a><i class="icon-angle-right"></i></li>
              <li class="active">About us</li>
            </ul>
          </div>
          <div class="span4">
            <div class="search">
              <form class="input-append">
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
            <h2>Welcome to Healthie</h2>
            <h5><i class="icon-coffee icon-circled icon-32 active"></i> For the ninth year in a row, Heathie has been rated #1 by US News as the best diet/exercise for weight loss.</h5>
          </div>
        </div>
        <div class="row">
          <div class="span6">
            <!-- start: Accordion -->
            <div class="accordion" id="accordion2">
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle active" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
							<i class="icon-minus"></i> Health Manager</a>
                </div>
                <div id="collapseOne" class="accordion-body collapse in">
                  <div class="accordion-inner">
                  </div>
                </div>
              </div>
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
							<i class="icon-plus"></i> Diet that fit your lifestyle</a>
                </div>
                <div id="collapseTwo" class="accordion-body collapse">
                  <div class="accordion-inner">
                  With our breakfast, you can start off your day right. Grab something on the go from your favorite spot for lunch, stay satisfied between meal. We have quick ideas to make life easy for dinner
                  </div>
                </div>
              </div>
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
							<i class="icon-plus"></i> Life changing fitness program </a>
                </div>
                <div id="collapseThree" class="accordion-body collapse">
                  <div class="accordion-inner">
                  Ready for the fitness program? Start training today to see tangible result and get fit! New workouts, fitness plans and exercises are now available. invest some minutes every day and observe your body getting into the shape you aim for. Start with regular worm ups followed by exercises that will slim your entire body.
                  Plank, squat, ab are just a part of your routine.
                  </div>
                </div>
              </div>
            </div>
            <!--end: Accordion -->
          </div>
          <div class="span6">
            <div class="centered">
              <!-- <img src="static/assets/img/dummies/about-img1.png" alt="" /> -->
            </div>
          </div>
        </div>
        <div class="row">
          <div class="span12">
            <h4 class="rheading">Recent works<span></span></h4>
            <div class="row">
              <div class="span3">
                <p class="hidden-phone">
                  With our proven DietExercise system and 200+ exercises plus ZeroPoint foods you don't have to track, you'll reach your wellness goals while eating what you love.
                </p>
                <a href="#" class="btn btn-theme">Read More</a>
              </div>
              <div class="span9">
                <div id="latest-work" class="carousel btleft">
                  <div class="carousel-wrapper">
                    <ul class="da-thumbs">
                      <li>
                        <img src="static/assets/img/dummies/work1.jpg" alt="" />
                        <article class="da-animate da-slideFromRight">
                          <a class="zoom" data-pretty="prettyPhoto" href="static/assets/img/dummies/big1.jpg">
									<i class="icon-zoom-in icon-rounded icon-48 active"></i>
									</a>
                          <a href="portfolio-detail.html">
									<i class="icon-link icon-rounded icon-48 active"></i>
									</a>
                          <div class="hidden-tablet">
                            <p>
                              Serenity theme
                            </p>
                          </div>
                        </article>
                      </li>
                      <li>
                        <img src="static/assets/img/dummies/work2.jpg" alt="" />
                        <article class="da-animate da-slideFromRight">
                          <a class="zoom" data-pretty="prettyPhoto" href="static/assets/img/dummies/big1.jpg">
									<i class="icon-zoom-in icon-rounded icon-48 active"></i>
									</a>
                          <a href="portfolio-detail.html">
									<i class="icon-link icon-rounded icon-48 active"></i>
									</a>
                          <div class="hidden-tablet">
                            <p>
                              Dark apps
                            </p>
                          </div>
                        </article>
                      </li>
                      <li>
                        <img src="static/assets/img/dummies/work3.jpg" alt="" />
                        <article class="da-animate da-slideFromRight">
                          <a class="zoom" data-pretty="prettyPhoto" href="static/assets/img/dummies/big1.jpg">
									<i class="icon-zoom-in icon-rounded icon-48 active"></i>
									</a>
                          <a href="portfolio-detail.html">
									<i class="icon-link icon-rounded icon-48 active"></i>
									</a>
                          <div class="hidden-tablet">
                            <p>
                              Mobile apps
                            </p>
                          </div>
                        </article>
                      </li>
                      <li>
                        <img src="static/assets/img/dummies/work4.jpg" alt="" />
                        <article class="da-animate da-slideFromRight">
                          <a class="zoom" data-pretty="prettyPhoto" href="static/assets/img/dummies/big1.jpg">
									<i class="icon-zoom-in icon-rounded icon-48 active"></i>
									</a>
                          <a href="portfolio-detail.html">
									<i class="icon-link icon-rounded icon-48 active"></i>
									</a>
                          <div class="hidden-tablet">
                            <p>
                              Mobile template
                            </p>
                          </div>
                        </article>
                      </li>
                      <li>
                        <img src="static/assets/img/dummies/work5.jpg" alt="" />
                        <article class="da-animate da-slideFromRight">
                          <a class="zoom" data-pretty="prettyPhoto" href="static/assets/img/dummies/big1.jpg">
									<i class="icon-zoom-in icon-rounded icon-48 active"></i>
									</a>
                          <a href="portfolio-detail.html">
									<i class="icon-link icon-rounded icon-48 active"></i>
									</a>
                          <div class="hidden-tablet">
                            <p>
                              Business theme
                            </p>
                          </div>
                        </article>
                      </li>
                      <li>
                        <img src="static/assets/img/dummies/work6.jpg" alt="" />
                        <article class="da-animate da-slideFromRight">
                          <a class="zoom" data-pretty="prettyPhoto" href="static/assets/img/dummies/big1.jpg">
									<i class="icon-zoom-in icon-rounded icon-48 active"></i>
									</a>
                          <a href="portfolio-detail.html">
									<i class="icon-link icon-rounded icon-48 active"></i>
									</a>
                          <div class="hidden-tablet">
                            <p>
                              Portfolio graphic
                            </p>
                          </div>
                        </article>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
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
          <div class="span4">
            <div class="widget">
              <h5>How to find us</h5>
              <address>
								<i class="icon-home"></i> <strong>Healthie company, Inc.</strong><br>
								8614 Machester Rd, Saint Louis Mo 63031<br>
								
								</address>
              <p>
                <i class="icon-phone"></i> (314) 337-1504<br>
                <i class="icon-envelope-alt"></i> info@healthie.com
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
                  Created by <a href="https://bootstrapmade.com/">Abayomi Jegede</a>
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
  <script src="static/assets/js/animate.js"></script>

  <!-- Template Custom JavaScript File -->
  <script src="static/assets/js/custom.js"></script>

</body>

</html>
