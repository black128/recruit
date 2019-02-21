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
    <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">

    <!-- JQUERY SELECT -->
    <link href="<%=basePath%>css/select2.min.css" rel="stylesheet" />
	
    <!-- JQUERY MENU -->
    <link rel="stylesheet" href="<%=basePath%>css/mega_menu.min.css">

    <!-- ANIMATION -->
    <link rel="stylesheet" href="<%=basePath%>css/animate.min.css">

    <!-- OWl  CAROUSEL-->
    <link rel="stylesheet" href="<%=basePath%>css/owl.carousel.css">
    <link rel="stylesheet" href="<%=basePath%>css/owl.style.css">

    <!-- TEMPLATE CORE CSS -->
    <link rel="stylesheet" href="<%=basePath%>css/style.css">

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
            <div class="spinner-img">
                <img alt="Opportunities Preloader" src="<%=basePath%>images/loader.gif" />
                <h2>Please Wait.....</h2>
            </div>
        </div>

            <jsp:include page="top.jsp"></jsp:include>
    <div class="clearfix"></div>

        <div class="clearfix"></div>
        <section class="job-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-7 co-xs-12 text-left">
                        <h3>Blog Post Full Width</h3>
                    </div>
                    <div class="col-md-6 col-sm-5 co-xs-12 text-right">
                        <div class="bread">
                            <ol class="breadcrumb">
                                <li><a href="<%=basePath%>index.action">主页</a> </li>
                                <li><span>个人博客</span> </li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="categories-list-page light-grey">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12 nopadding">

                        <div class="col-md-8 col-sm-8 col-xs-12 col-md-offset-2 col-sm-offset-2">
                            <div class="blog-post">
                                <div class="post-img">
                                    <img src="<%=basePath%>images/blog/1.jpg" alt="" class="img-responsive">
                                </div>
                                <div class="blog-single">
                                    <div class="post-info">
                                        <a href="">August 30, 2016</a>
                                        <a href="#">23 comments</a>
                                    </div>
                                    <h3 class="post-title">
							 Sketch Designing Artists are beauty: A report
                        </h3>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam neque tempora odit atque repellat est molestiae perferendis.Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.
                                    </p>
                                    <p>
                                        Lesed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in repreh. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt incididunt ut labore et d mollit anim id est laborum.
                                    </p>
                                    <blockquote>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis maxime, perferendis nostrum. Repellat nobis aperiam rerum in modi, ea, minus nemo consequuntur. Nemo, error aliquam accusamus nisi, ratione quaerat veritatis!
                                    </blockquote>
                                    <p>
                                        Lesed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in repreh. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt incididunt ut labore et d mollit anim id est laborum.
                                    </p>
                                    <div class="tagcloud">
                                        <i class="fa fa-tags"></i>
                                        <a href="#">#food</a>
                                        <a href="#">#gedgets</a>
                                        <a href="#">#news</a>
                                        <a href="#">#fair</a>
                                        <a href="#">#politics</a>
                                        <a href="#">#technology</a>
                                    </div>
                                </div>
                            </div>
                            <div class="heading"><span class="title">Coments (45)</span></div>
                            <div class="comments-container ">
                                <ul>
                                    <li class="comment-box">
                                        <div class="col-md-2 col-sm-3 col-xs-3 comment-author-image">
                                            <img src="<%=basePath%>images/users/1.jpg" class="img-circle img-responsive" alt="Blog Comments Image 1">
                                        </div>
                                        <div class="col-md-10 col-sm-9 col-xs-9">
                                            <h4>Alexander Mahone</h4>
                                            <div class="news-date"> February 12, 2016</div>
                                            <p>Maecenas faucibus mollis interdum. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper.</p>
                                            <div class="comment-reply">
                                                <h6><a href="#" class="active-color">Reply</a></h6>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="comment-box">
                                        <div class="col-md-2 col-sm-3 col-xs-3 comment-author-image">
                                            <img src="<%=basePath%>images/users/2.jpg" class="img-circle img-responsive" alt="">
                                        </div>
                                        <div class="col-lmd-10 col-sm-9 col-xs-9">
                                            <h4>Alexander Mahone</h4>
                                            <div class="news-date"> February 15, 2016</div>
                                            <p>Maecenas faucibus mollis interdum. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper.</p>
                                            <div class="comment-reply">
                                                <h6><a href="#" class="active-color">Reply</a></h6>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="comment-box">
                                        <div class="col-md-2 col-sm-3 col-xs-3">
                                            <img src="<%=basePath%>images/users/1.jpg" class="img-circle img-responsive" alt="Blog Comments Image 1">
                                        </div>
                                        <div class="col-lmd-10 col-sm-9 col-xs-9">
                                            <h4>Alexander Mahone</h4>
                                            <div class="news-date"> February 12, 2016</div>
                                            <p>Maecenas faucibus mollis interdum. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper.</p>
                                            <div class="comment-reply">
                                                <h6><a href="#write-comment" class="active-color">Reply</a></h6>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <div class="commentform">
                                    <form class="row">
                                        <div class="col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <label>Comment <span class="required">*</span></label>
                                                <textarea cols="6" rows="8" placeholder="" class="form-control"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>Name <span class="required">*</span></label>
                                                <input type="text" placeholder="" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <label>Email <span class="required">*</span></label>
                                                <input type="email" placeholder="" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-12 col-sm-12">
                                            <button class="btn btn-default pull-right">Publish Comment <i class="fa fa-angle-right"></i></button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <div class="fixed-footer">
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
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