<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- JQUERY MENU -->
    <link rel="stylesheet" href="css/mega_menu.min.css">

    <!-- ANIMATION -->
    <link rel="stylesheet" href="css/animate.min.css">

    <!-- OWl  CAROUSEL-->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.style.css">

    <!-- TEMPLATE CORE CSS -->
    <link rel="stylesheet" href="css/style.css">

    <!-- FOR THIS PAGE ONLY -->
    <link href="css/select2.min.css" rel="stylesheet" />

    <!-- FONT AWESOME -->
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/et-line-fonts.css" type="text/css">

    <!-- Google Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,900,300" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet" type="text/css">
	
    <!-- JavaScripts -->
    <script src="js/modernizr.js"></script>
	
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
            <div class="spinner-img"> <img alt="Opportunities Preloader" src="images/loader.gif" />
                <h2>Please Wait.....</h2>
            </div>
        </div>
           <jsp:include page="top.jsp"></jsp:include>
    <div class="clearfix"></div>

        <section class="job-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-7 co-xs-12 text-left">
                        <h3>Contact Us</h3>
                    </div>
                    <div class="col-md-6 col-sm-5 co-xs-12 text-right">
                        <div class="bread">
                            <ol class="breadcrumb">
                                <li><a href="<%=basePath%>index.action">首页</a> </li>
                                <li class="active">联系我们</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="contact-us ">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="row">
                            <div class="col-md-8 col-sm-12 col-xs-12">
                                <div class="Heading-title-left black small-heading">
                                    <h3>Get In Touch With us</h3>
                                </div>
                                <form class="row">

                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group">
                                            <label>名字 <span class="required">*</span></label>
                                            <input placeholder="" class="form-control" type="text">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group">
                                            <label>邮箱 <span class="required">*</span></label>
                                            <input placeholder="" class="form-control" type="email">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group">
                                            <label>电话 <span class="required">*</span></label>
                                            <input placeholder="" class="form-control" type="text">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-12">
                                        <div class="form-group">
                                            <label>主题 <span class="required">*</span></label>
                                            <input placeholder="" class="form-control" type="text">
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-sm-12">
                                        <div class="form-group">
                                            <label>问题描述 <span class="required">*</span></label>
                                            <textarea cols="6" rows="8" placeholder="" class="form-control"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12 col-sm-12">
                                        <a href="<%=basePath%>successmsg.action" class="btn btn-default"> 发送联系方式 <i class="fa fa-angle-right"></i> </a>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-4 col-sm-12 col-xs-12">
                                <div class="Heading-title-left black small-heading">
                                    <h3>Contact Detail</h3>
                                </div>
                                <div class="contact_block-2">
                                    <div class="content-block-box">
                                        <div class="icon-box">
                                            <i class="icon-map-pin"></i>
                                        </div>
                                        <div class="detail-box">
                                            <p>102 PT Naino Street</p>
                                            <p>West smash road TW 456,</p>
                                            <p>London, UK</p>
                                        </div>
                                    </div>

                                </div>
                                <div class="contact_block-2">
                                    <div class="content-block-box">
                                        <div class="icon-box">
                                            <i class=" icon-phone"></i>
                                        </div>
                                        <div class="detail-box">
                                            <p><b class="pull-left">Help Line</b><a href="tel:+99 333 1234567" class="pull-right">+99 333 1234567</a></p>
                                            <p><b class="pull-left">Enquires</b><a href="tel:+99 333 1234567" class="pull-right">+91 456 3692587</a></p>
                                            <p><b class="pull-left">Fax</b><a href="tel:+99 333 1234567" class="pull-right">+93 798 7412589</a></p>
                                        </div>
                                    </div>

                                </div>
                                <div class="contact_block-2">
                                    <div class="content-block-box">
                                        <div class="icon-box">
                                            <i class="icon-document"></i>
                                        </div>
                                        <div class="detail-box">
                                            <p><a href="mailto:contact@scriptsbundle.com">contact@scriptsbundle.com</a></p>
                                            <p><a href="mailto:resume@user.com">admin@scriptsbundle.com</a></p>
                                            <p><a href="mailto:resume@user.com">info@scriptsbundle.com</a></p>
                                        </div>
                                    </div>

                                </div>
                                <ul class="social-network social-circle onwhite">
                                    <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div id="map-contact"></div>
        <div class="fixed-footer">
            <jsp:include page="footer.jsp"></jsp:include>
        </div>

        <a href="#" class="scrollup"><i class="fa fa-chevron-up"></i></a>

        <!-- JAVASCRIPT JS  -->
        <script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>

        <!-- BOOTSTRAP CORE JS -->
        <script type="text/javascript" src="js/bootstrap.min.js"></script>

        <!-- JQUERY SELECT -->
        <script type="text/javascript" src="js/select2.min.js"></script>

        <!-- MEGA MENU -->
        <script type="text/javascript" src="js/mega_menu.min.js"></script>

        <!-- JQUERY EASING -->
        <script type="text/javascript" src="js/easing.js"></script>

        <!-- JQUERY COUNTERUP -->
        <script type="text/javascript" src="js/counterup.js"></script>

        <!-- JQUERY WAYPOINT -->
        <script type="text/javascript" src="js/waypoints.min.js"></script>

        <!-- JQUERY REVEAL -->
        <script type="text/javascript" src="js/footer-reveal.min.js"></script>

        <!-- Owl Carousel -->
        <script type="text/javascript" src="js/owl-carousel.js"></script>

        <!-- GOOGLE MAP -->
        <!--<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>-->
        <!--<script type="text/javascript" src="js/map.js"></script>-->

        <!-- CORE JS -->
        <script type="text/javascript" src="js/custom.js"></script>

    </div>
</body>

</html>