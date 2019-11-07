<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />



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
    <!-- Subintro
================================================== -->
    <section id="subintro">
      <div class="container">
        <div class="row">
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li><a href="#">Portfolio</a><i class="icon-angle-right"></i></li>
              <li class="active">Profile</li>
            </ul>
          </div>
          <div class="span4">
            <div class="search">              
  			<form class="input-append"  action="search" method="post">
                <input class="search-form" name="lname" id="appendedPrependedInput" type="text" placeholder="Search here.." />
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
        
             <table class="table table-striped table-hover">
             <thead class="thead-dark">
             <tr class="text-success">
             <th>#</th>
             <th>Image</th>
             <th>
           
             </th>  
             <th>
             Names
             </th>             
             <c:if test="${logedinUser.role eq 'ADMIN'}">
              <th>Role</th>
              <th>Action</th>
             </c:if>
             </tr>
             </thead>
             
             <tbody>
             <c:forEach var="item" items="${list}" >
             <tr>
             <td>${list.indexOf(item)+1}.</td> 
             <td>
              <c:choose>
			  <c:when test="${not empty item.image}"> 
			  <a href="user-${item.id}">
			   <img src="${contextPath}//users//carhire//${item.id}//${item.image}" width="70" height="50"/>
			  </a>
			    </c:when>
				<c:otherwise>
				No image     
				</c:otherwise>
				</c:choose>      
			   </td> 
               <td>
               <div class="inner col-md-12">
				<div class="btn-group"> 
				<i class="far fa-user-circle"> ${item.lname} ${item.fname} </i> 
				<a href="#" class="dropdown-toggle active" data-toggle="dropdown" href="#">
				<span class="glyphicon glyphicon-chevron-down"></span>
				</a>
				<ul class="dropdown-menu col-md-12 text-left">
				<li class="divider text-success"></li>
				<li>&nbsp;<i class="fa fa-key"></i>
				${item.role}
				</li>
				<li>&nbsp;<i class="fas fa-calendar-plus"></i>
				<fmt:formatDate value="${item.createdDate}" type="date" pattern="MMM-dd-yyyy"/>
				</ul>
				</div>
				</div>      
				</td>
                <td>
                ${item.lname} ${item.fname} [${item.role}]     
				</td>
				<c:if test="${logedinUser.role eq 'ADMIN'}"> 
	            <td> 
				<form method="POST" action="editrole" >     
				    <input type="hidden" name="id" value="${item.id}" />      
				    <select onchange="this.form.submit()" name="role" class="form-control">
				  <option value="${item.role}">${item.role}</option>
				  <option value="USER">USER </option>
				  <option value="DBA">DBA</option>
				  <option value="ADMIN">ADMIN</option>  
				</select> 
				</form>
				</td>
				
			    <td>          
		         <a href="deleteuser-${item.id}" onclick="confirmed(); return false;" class="btn btn-danger">
		          Delete <i class="far fa-trash-alt"></i></a>
		         <a href="edituser-${item.id}" class="btn btn-success">
		          Edit <i class="fa fa-edit"></i></a>
		         <br> 
		         </td>
		         </c:if>
		         
                </tr>
             
             </c:forEach>
             
             </tbody>
             
             </table>
 
          
        </div>
        
        <div class="row">
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
                <li><a href="#">How we do all stuff</a></li>
                <li><a href="#">Our recent works</a></li>
                <li><a href="#">Press releases</a></li>
                <li><a href="#">Get in touch with us</a></li>
              </ul>
            </div>
          </div>
          <div class="span4">
            <div class="widget">
              <h5>Flickr photostream</h5>
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
								<i class="icon-home"></i> <strong>Lumia company, Inc.</strong><br>
								X104 Awesome ville, Suite AB12<br>
								Jakarta 12420 Indonesia
								</address>
              <p>
                <i class="icon-phone"></i> (123) 456-7890 - (123) 555-8890<br>
                <i class="icon-envelope-alt"></i> email@domainname.com
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
                &copy; Lumia - All right reserved
              </p>
            </div>
            <div class="span6">
              <div class="pull-right">
                <div class="credits">
                  
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
