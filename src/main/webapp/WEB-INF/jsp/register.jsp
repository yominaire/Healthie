<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
              <li><a href="#">Home</a><i class="icon-angle-right"></i></li>
              <li class="active">Register</li>
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
            <article>
              <div class="heading">
                <h4>Register</h4>
              </div>
              
              <div class="row">
                <div class="span5">
                <form:form action="register" modelAttribute="users" method="post">
					
					<label>First Name</label>
					    <form:input type="text" class="form-control" path="fname"     
					    placeholder="First Name" />
					    <div class="has-error">
					<form:errors path="fname" class="alert-error"/>
					</div>
					    <label>Last Name</label>
					    <form:input type="text" class="form-control" path="lname"
					     placeholder="Last Name" /> 
					     <div class="has-error">
					<form:errors path="lname" class="alert-error"/>
					</div>   
					<label>E-mail</label>
					    <form:input type="email" class="form-control" path="email" 
					    placeholder="E-mail" />
					    <div class="has-error">
					<form:errors path="email" class="alert-error"/>
					</div>
					    <label>Re-enter Email</label>
					    <form:input type="email" class="form-control" path="email2"
					     placeholder="Re-enter Email" />
					     <div class="has-error">
					<form:errors path="email2" class="alert-error"/>
					</div>
					    <label>Password</label>
					    <form:input class="form-control" path="password" type="password" placeholder="Password" />
				    <div class="has-error">
					<form:errors path="password" class="alert-error"/>
					</div>
					    <div class="clearfix">
              			</div>
              			<input type="submit" value="Submit" class="btn btn-success">
					    
					    <a href="index" class="btn btn-danger">Cancel</a>
						
					</form:form>
              
                  
                </div>
                <div class="span7">
                  <aside>
                    <div class="widget">
                      <div class="project-widget">
                        <h4 class="rheading">Register and start a journey to a healthie living<span></span></h4>
                        
                      </div>
                    </div>
                  </aside>
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
  <script src="static/assets/js/portfolio/jquery.quicksand.js"></script>
  <script src="static/assets/js/portfolio/setting.js"></script>
  <script src="static/assets/js/animate.js"></script>

  <!-- Template Custom JavaScript File -->
  <script src="static/assets/js/custom.js"></script>

</body>

</html>
