<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="ScriptsBundle">
<title>Opportunities A Mega Job Board Template</title>
<link rel="icon" href="images/favicon.ico" type="image/x-icon">

<!-- BOOTSTRAPE STYLESHEET CSS FILES -->
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">

<!-- JQUERY MENU -->
<link rel="stylesheet" href="<%=basePath%>css/mega_menu.min.css">

<!-- ANIMATION -->
<link rel="stylesheet" href="<%=basePath%>css/animate.min.css">

<!-- OWl  CAROUSEL-->
<link rel="stylesheet" href="<%=basePath%>css/owl.carousel.css">
<link rel="stylesheet" href="<%=basePath%>css/owl.style.css">

<!-- TEMPLATE CORE CSS -->
<link rel="stylesheet" href="<%=basePath%>css/style.css">

<!-- FOR THIS PAGE ONLY -->
<link href="<%=basePath%>css/select2.min.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=basePath%>css/jquery.tagsinput.min.css">

<!-- FONT AWESOME -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.min.css">
<link rel="stylesheet" href="<%=basePath%>css/et-line-fonts.css" type="text/css">

<!-- Google Fonts -->
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,900,300" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet" type="text/css">
<!-- JavaScripts -->
<script src="<%=basePath%>js/modernizr.js"></script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
<div class="page category-page">
<div id="spinner">
    <div class="spinner-img"> <img alt="Opportunities Preloader" src="<%=basePath%>images/loader.gif" />
        <h2>Please Wait.....</h2>
    </div>
</div>
   <jsp:include page="top.jsp"></jsp:include>
    <div class="clearfix"></div>

<div class="search">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12 nopadding">
                <div class="input-group">
                    <div class="input-group-btn search-panel">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"> <span id="search_concept">Filter By</span> <span class="caret"></span> </button>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">By Company</a></li>
                            <li><a href="#">By Function</a></li>
                            <li><a href="#">By City </a></li>
                            <li><a href="#">By Salary </a></li>
                            <li><a href="#">By Industry</a></li>
                        </ul>
                    </div>
                    <input type="hidden" name="search_param" value="all" id="search_param">
                    <input type="text" class="form-control search-field" name="x" placeholder="Search term...">
                    <span class="input-group-btn">
                    <button class="btn btn-default" type="button"><span class="fa fa-search"></span></button>
                    </span> </div>
            </div>
        </div>
    </div>
</div>
<section class="error-page bg-img parallex">
<div class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="error-container">
                <h1>${msg}</h1>
                <p></p>
                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                    
                </div>
            </div>
        </div>
    </div>
    </section>
    <div class="fixed-footer">
       <jsp:include page="footer.jsp"></jsp:include>
    </div>
    <script language=javascript>
          setTimeout('window.location="<%=basePath%>index.action"',2000)
     </script>
    <a href="#" class="scrollup"><i class="fa fa-chevron-up"></i></a>

    <!-- JAVASCRIPT JS  --> 
    <script type="text/javascript" src="<%=basePath%>js/jquery-2.2.3.min.js"></script> 
 
    <!-- BOOTSTRAP CORE JS --> 
    <script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script> 
    
    <!-- JQUERY SELECT --> 
    <script type="text/javascript" src="<%=basePath%>js/select2.min.js"></script> 
    
    <!-- MEGA MENU --> 
    <script type="text/javascript" src="<%=basePath%>js/mega_menu.min.js"></script> 
    
    <!-- JQUERY EASING --> 
    <script type="text/javascript" src="<%=basePath%>js/easing.js"></script> 
    
    <!-- JQUERY COUNTERUP --> 
    <script type="text/javascript" src="<%=basePath%>js/counterup.js"></script> 
    
    <!-- JQUERY WAYPOINT --> 
    <script type="text/javascript" src="<%=basePath%>js/waypoints.min.js"></script> 
    
    <!-- JQUERY REVEAL --> 
    <script type="text/javascript" src="<%=basePath%>js/footer-reveal.min.js"></script> 
    
    <!-- Owl Carousel --> 
    <script type="text/javascript" src="<%=basePath%>js/owl-carousel.js"></script> 
    
    <!-- CORE JS --> 
    <script type="text/javascript" src="<%=basePath%>js/custom.js"></script> 
</div>
</body>
</html>