
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
  <title>Healthie contact us today</title>
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
                  <li>
                    <a href="index"><i class="icon-home"></i> Home </a>
                  </li>
                  <li class="dropdown">
                    <a href="#"><i class="icon-cog"></i> About <i class="icon-angle-down"></i></a>
                    <ul class="dropdown-menu">
                      <li><a href="about">About</a></li>
                      <li   class="active"><a href="contact">Contact Us</a></li>                      
                    </ul>
                  </li>                  
                                   
                  <li class="active">
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
              <li><a href="index">Home</a><i class="icon-angle-right"></i></li>
              <li class="active">${msg}</li>
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
          <div class="span4">
            <aside>
              <div class="widget">
                <h4 class="rheading">Get in touch with us<span></span></h4>
                <ul>
                  <li><label><strong>Phone : </strong></label>
                    <p>
                      (314) 337-1504
                    </p>
                  </li>
                  <li><label><strong>Email : </strong></label>
                    <p>
                      info@healthie.com
                    </p>
                  </li>
                  <li><label><strong>Address : </strong></label>
                    <p>
                      8614 Machester Rd, Saint Louis Mo 63031
                    </p>
                  </li>
                </ul>
              </div>
              <div class="widget">
                <h4 class="rheading">Find us on social networks<span></span></h4>
                <ul class="social-links">
                  <li><a href="#" title="Twitter"><i class="icon-square icon-32 icon-twitter"></i></a></li>
                  <li><a href="#" title="Facebook"><i class="icon-square icon-32 icon-facebook"></i></a></li>
                  <li><a href="#" title="Google plus"><i class="icon-square icon-32 icon-google-plus"></i></a></li>
                  <li><a href="#" title="Linkedin"><i class="icon-square icon-32 icon-linkedin"></i></a></li>
                  <li><a href="#" title="Pinterest"><i class="icon-square icon-32 icon-pinterest"></i></a></li>
                </ul>
              </div>
            </aside>
          </div>
          <div class="span8">
            <!-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d22864.11283411948!2d-73.96468908098944!3d40.630720240038435!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sbg!4v1540447494452" width="100%" height="380" frameborder="0" style="border:0" allowfullscreen></iframe>
 -->
 			<!-- <iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=5556%20kindle%20hill%20memphis%20tn%2038141&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.utilitysavingexpert.com">Utility Saving Expert</a></div><style>.mapouter{position:relative;text-align:right;height:500px;width:600px;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}</style> -->
 			
 			<div class="mapouter"><div class="gmap_canvas"><iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=8614%20Manchester%20Rd%2063144&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.utilitysavingexpert.com">Utility Saving Expert</a></div><style>.mapouter{position:relative;text-align:right;height:500px;width:600px;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}</style></div>
            <div class="spacer30">
            </div>

            <div id="sendmessage">Your message has been sent. Thank you!</div>
            <div id="errormessage"></div>
            <form action="sendmail" method="post" role="form" class="contactForm">
              <div class="row">
                <div class="span4 form-group">
                  <input type="text" class="input-block-level" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                  <div class="validation"></div>
                </div>

                <div class="span4 form-group">
                  <input type="email" class="input-block-level" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                  <div class="validation"></div>
                </div>
                
                <div class="span8 form-group">
                  <textarea class="input-block-level" name="msg" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                  <div class="validation"></div>
                  <div class="text-center">
                    <button class="btn btn-theme" type="submit">Send a message</button>
                  </div>
                </div>
              </div>
            </form>
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
                <i class="icon-phone"></i> (314)337-1504 <br>
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

  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Custom JavaScript File -->
  <script src="static/assets/js/custom.js"></script>

</body>

</html>
