<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title></title>
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
              <a href="index.html"><img src="static/assets/img/logo.png" alt="" /></a>
            </div>
            <!-- end logo -->

            <!-- top menu -->
           <div class="navigation">
              <nav>
                <ul class="nav topnav">
                  <li  class="active">
                    <a href="index"><i class="icon-home"></i> Home </a>
                  </li>
                  <li class="dropdown">
                    <a href="#"><i class="icon-cog"></i> About <i class="icon-angle-down"></i></a>
                    <ul class="dropdown-menu">
                      <li><a href="about">About</a></li>
                      <li><a href="contact">Contact Us</a></li>
                      <li><a href="members">Members</a></li>                       
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
    <section id="intro">

      <div class="container">
        <div class="row">
          <div class="span12">
            <!-- Place somewhere in the <body> of your page -->
            <div id="mainslider" class="flexslider">
              <ul class="slides">
                <li data-thumb="static/assets/img/slides/flexslider/img1.jpg">
                  <img src="static/assets/img/slides/flexslider/img1.jpg" alt="" />
                  <div class="flex-caption primary">
                    <h2>Healthie</h2>
                    <p>Weight loss with clear results</p>
                  </div>
                </li>
                <li data-thumb="static/assets/img/slides/flexslider/img2.jpg">
                  <img src="static/assets/img/slides/flexslider/img2.jpg" alt="" />
                  <div class="flex-caption warning">
                    <h2>Diets just for you</h2>
                    <p>  With our breakfast, you can start off your day right. Grab something on the go from your favorite spot for lunch, stay satisfied between meal. We have quick ideas to make life easy for dinner</p>
                  </div>
                </li>
                <li data-thumb="static/assets/img/slides/flexslider/img3.jpg">
                  <img src="static/assets/img/slides/flexslider/img3.jpg" alt="" />
                  <div class="flex-caption success">
                    <h2>Life changing fitness program</h2>
                    <p> Ready for the fitness program? Start training today to see tangible result and get fit! New workouts, fitness plans and exercises are now available. invest some minutes every day and observe your body getting into the shape you aim for. Start with regular worm ups followed by exercises that will slim your entire body.
                  Plank, squat, ab are just a part of your routine.</p>
                  </div>
                </li>
                
                 <li data-thumb="static/assets/img/slides/flexslider/img4.jpg">
                  <img src="static/assets/img/slides/flexslider/img4.jpg" alt="" />
                  <div class="flex-caption warning">
                    <h2>Diets just for you</h2>
                    <p>  With our breakfast, you can start off your day right. Grab something on the go from your favorite spot for lunch, stay satisfied between meal. We have quick ideas to make life easy for dinner</p>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

    </section>
    <section id="maincontent">
      <div class="container">

        <div class="row">
          <div class="span12">
            <div class="call-action">

              <div class="text">
                <h2>We are committed to changing lives</h2>
                <p>
                 Make use of our online tools, and enter your goal.
                </p>
              </div>
              <div class="cta">
                <a class="btn btn-large btn-theme" href="#">
							<i class="icon-plane icon-white"></i>Sign up to Get Started </a>
              </div>

            </div>
            <!-- end tagline -->
          </div>
        </div>

        <div class="row">
          <div class="span3 features e_pulse">
            <img src="static/assets/img/dummies/img1.jpg" alt="" />
            <div class="box">
              <div class="divcenter">
                <a href="#"><i class="icon-circled icon-48 icon-magic active icon"></i></a>
                <h4>Amazing <br />Coconut pancakes</h4>
              </div>
            </div>
          </div>

          <div class="span3 features e_pulse">
            <img src="static/assets/img/dummies/img2.jpg" alt="" />
            <div class="box">
              <div class="divcenter">
                <a href="#"><i class="icon-circled icon-48 icon-briefcase icon"></i></a>
                <h4>Cinnamon-raisin baked <br />French toast</h4>
              </div>
            </div>
          </div>

          <div class="span3 features e_pulse">
            <img src="static/assets/img/dummies/img3.jpg" alt="" />
            <div class="box">
              <div class="divcenter">
                <a href="#"><i class="icon-circled icon-48 icon-cogs icon"></i></a>
                <h4>Omelette <br />with fresh Herbs</h4>
              </div>
            </div>
          </div>

          <div class="span3 features e_pulse">
            <img src="static/assets/img/dummies/img4.jpg" alt="" />
            <div class="box">
              <div class="divcenter">
                <a href="#"><i class="icon-circled icon-48 icon-bullhorn icon"></i></a>
                <h4>Pomegranate-Berry <br />Smoothie</h4>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="span12">
            <h4 class="rheading">Recent works<span></span></h4>
            <div class="row">
              <div class="span3">

                <p class="hidden-phone">
                                   Heathie is the weight-loss program that can help you live your best healthiest life.
                  Six-month pre-post study on 152 participants, conducted by the University of North Carolina at Chapel Hill, Weight Watchers
                  Sleep data and happiness data reported by trial participants after 6 months on Healthie based on the Pittburgh Sleep Quality
                  index and the Oxford Happiness Questionaire.

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
                            <p>Serenity theme</p>
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
                            <p>Dark apps</p>
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
                            <p>Mobile apps</p>
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
                            <p>Mobile template</p>
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
                            <p>Business theme</p>
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
                            <p>Portfolio graphic</p>
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
              <h5>Healthie living</h5>
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
