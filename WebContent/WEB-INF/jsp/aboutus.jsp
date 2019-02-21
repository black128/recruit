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
        <section class="job-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-7 co-xs-12 text-left">
                        <h3>关于我们</h3>
                    </div>
                    <div class="col-md-6 col-sm-5 co-xs-12 text-right">
                        <div class="bread">
                            <ol class="breadcrumb">
                                <li><a href="<%=basePath%>index">首页</a> </li>
                                <li class="active">关于我们</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="about-us">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                    	<div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="Heading-title-left black small-heading">
                                <h3>想要了解我们更多吗？</h3>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <p>1、公司概况：新饶网站策划，2007年，注册资金80万，员工12名，专业的设计策划团队，一家大学生创业公司；

2、发展状况：主要面向长沙中小企业，已经为上百家企业提供了网站策划服务；

3、公司文化：公司以“专注网站，用心服务”为核心价值，一切以用户需求为中心，希望通过专业水平和不懈努力，重塑企业网络形象，为企业产品推广文化发展提供服务指导；

4、公司主要产品：主要为企业提供网站策划，网站设计制作，网站推广优化等服务；销售业绩以及网络：为中小企业提供网站策划服务，先阶段主要面向长沙地区；

5、售后服务：新饶网站策划有详细的售后服务体系，提供终生策划指导服务。</p>
                            <blockquote>我们期待你的光临</blockquote>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12 hidden-sm"> <img src="<%=basePath%>images/about-us2.png" alt="" class="img-responsive"> </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="testimoniial-section light-grey">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="Heading-title black">
                            <h1>我们成功的故事</h1>
                            <p>在漫漫长路上，我们尝过人生的百味，我们身上的故事愿与大家一起分享</p>
                        </div>
                    </div>
                    <div class="owl-testimonial-2">
                        <div class="single_testimonial">
                            <h4>很好</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elitsed eiusmod tempor enim minim veniam quis notru.</p>
                            <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <img src="<%=basePath%>images/users/2s.jpg" alt="">
                            <h3 class="">艾米莉</h3>
                        </div>
                        <div class="single_testimonial">
                            <h4>太棒了！爱他</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elitsed eiusmod tempor enim minim veniam quis notru.</p>
                            <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <img src="<%=basePath%>images/users/3s.jpg" alt="">
                            <h3 class="">哈尼</h3>
                        </div>
                        <div class="single_testimonial">
                            <h4>非常高效，快速</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elitsed eiusmod tempor enim minim veniam quis notru.</p>
                            <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <img src="<%=basePath%>images/users/6s.jpg" alt="">
                            <h3 class="">吉斯蒂</h3>
                        </div>
                        <div class="single_testimonial">
                            <h4>Just fabulous</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elitsed eiusmod tempor enim minim veniam quis notru.</p>
                            <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <img src="<%=basePath%>images/users/7s.jpg" alt="">
                            <h3 class="">费兹</h3>
                        </div>
                        <div class="single_testimonial">
                            <h4>Very quick and Fast</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elitsed eiusmod tempor enim minim veniam quis notru.</p>
                            <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <img src="<%=basePath%>images/users/1s.jpg" alt="">
                            <h3 class="">劳拉</h3>
                        </div>
                        <div class="single_testimonial">
                            <h4>Awesome ! Loving It</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elitsed eiusmod tempor enim minim veniam quis notru.</p>
                            <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <img src="<%=basePath%>images/users/3s.jpg" alt="">
                            <h3 class="">马克</h3>
                        </div>
                        <div class="single_testimonial">
                            <h4>Just fabulous</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elitsed eiusmod tempor enim minim veniam quis notru.</p>
                            <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <img src="<%=basePath%>images/users/4s.jpg" alt="">
                            <h3 class="">大卫</h3>
                        </div>
                        <div class="single_testimonial">
                            <h4>Awesome ! Loving It</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elitsed eiusmod tempor enim minim veniam quis notru.</p>
                            <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <img src="<%=basePath%>images/users/3s.jpg" alt="">
                            <h3 class="">珍玛</h3>
                        </div>
                        <div class="single_testimonial">
                            <h4>Very quick and Fast</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elitsed eiusmod tempor enim minim veniam quis notru.</p>
                            <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <img src="<%=basePath%>images/users/6s.jpg" alt="">
                            <h3 class="">米勒</h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="team">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="Heading-title black">
                            <h1>我们的团队</h1>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="team-member">
                            <div class="team-img col-pic1"> <img src="<%=basePath%>images/team/1.png" alt="team member" class="img-responsive">
                                <div class="team-intro light-txt">
                                    <h5>Jhon Smith</h5>
                                    <span>founder &amp; ceo</span> </div>
                            </div>
                            <div class="team-hover">
                                <div class="desk">
                                    <h4>Hi There !</h4>
                                    <p>I love to my work and being an entrepreneur.</p>
                                </div>
                                <div class="s-link"> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-google-plus"></i></a> </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="team-member">
                            <div class="team-img col-pic1"> <img src="<%=basePath%>images/team/2.png" alt="team member" class="img-responsive">
                                <div class="team-intro light-txt">
                                    <h5>Emilly Copper</h5>
                                    <span>HR Manager</span> </div>
                            </div>
                            <div class="team-hover">
                                <div class="desk">
                                    <h4>Hi There !</h4>
                                    <p>I love to introduce myself as a hardcore Web Designer.</p>
                                </div>
                                <div class="s-link"> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-google-plus"></i></a> </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="team-member">
                            <div class="team-img"> <img src="<%=basePath%>images/team/3.png" alt="team member" class="img-responsive">
                                <div class="team-intro light-txt">
                                    <h5>James Anderson</h5>
                                    <span>Marketing Manager</span> </div>
                            </div>
                            <div class="team-hover">
                                <div class="desk">
                                    <h4>I love to design</h4>
                                    <p>I love to introduce myself as a hardcore Web Designer.</p>
                                </div>
                                <div class="s-link"> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-google-plus"></i></a> </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="team-member">
                            <div class="team-img col-pic1"> <img src="<%=basePath%>images/team/4.png" alt="team member" class="img-responsive">
                                <div class="team-intro light-txt">
                                    <h5>Marinton Smith</h5>
                                    <span>UI/UX Expert</span> </div>
                            </div>
                            <div class="team-hover">
                                <div class="desk">
                                    <h4>Hi There !</h4>
                                    <p>I love to introduce myself as a hardcore Web Designer.</p>
                                </div>
                                <div class="s-link"> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-google-plus"></i></a> </div>
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