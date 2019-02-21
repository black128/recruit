<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String downloadPath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
	String basePath = downloadPath + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ScriptsBundle">
    <title>Opportunities A Mega Job Board Template</title>
    <link rel="icon" href="<%=basePath%>images/favicon.ico" type="image/x-icon">

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
    <link href="<%=basePath%>http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,900,300" rel="stylesheet" type="text/css">
    <link href="<%=basePath%>https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet" type="text/css">
	
    <!-- JavaScripts -->
    <script src="<%=basePath%>js/modernizr.js"></script>
	
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="<%=basePath%>https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="<%=basePath%>https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
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


        <section class="job-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-7 co-xs-12 text-left">
                        <h3>找的工作</h3>
                    </div>
                    <div class="col-md-6 col-sm-5 co-xs-12 text-right">
                        <div class="bread">
                            <ol class="breadcrumb">
                                <li><a href="<%=basePath%>index.action">首页</a> </li>
                                <li class="active">找的工作</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="dashboard-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12 nopadding">
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="profile-card">
                                <div class="banner">
                                    <img src="<%=basePath%>images/building.jpg" alt="" class="img-responsive">
                                </div>
                                <div class="user-image">
                                    <img src="<%=downloadPath%>/img/${user.user_img}" class="img-responsive img-circle" alt="">
                                </div>
                                <div class="card-body">
                                    <h3>${user.user_name}</h3>
                                    <span class="title">A web Designer</span>
                                </div>
                                <ul class="social-network social-circle onwhite">
                                    <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#" class="icoLinkedin" title="Linkedin +"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                            <div class="profile-nav">
                                <div class="panel">
                                   <ul class="nav nav-pills nav-stacked">
                                        <li>
                                            <a href="<%=basePath%>user/user_dashboard.action"> <i class="fa fa-user"></i>详细资料</a>
                                        </li>
                                        <li>
                                            <a href="<%=basePath%>user/user_edit_profile.action"> <i class="fa fa-edit"></i>修改资料</a>
                                        </li>
                                        <li>
                                            <a href="<%=basePath%>user/user_resume.action?pageNum=1&pageSize=5"> <i class="fa fa-file-o"></i>我的简历</a>
                                        </li>
                                        <li  class="active">
                                            <a href="<%=basePath%>user/user_job_applied.action?pageNum=1&pageSize=5"> <i class="fa  fa-list-ul"></i>工作申请</a>
                                        </li>
                                        <li>
                                            <a href="<%=basePath%>user/user_followed_companies.action"> <i class="fa  fa-bookmark-o"></i>跟随公司</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                       <div class="col-md-8 col-sm-8 col-xs-12">
                            <div class="heading-inner first-heading">
                                <p class="title">申请的工作</p>
                            </div>
                            <div class="all-jobs-list-box2">
                                <c:forEach items="${page.list}" var="job">
                                <div class="job-box job-box-2">
                                    <div class="col-md-2 col-sm-2 col-xs-12 hidden-xs hidden-sm">
                                        <div class="comp-logo">
                                            <a href="<%=basePath%>showjob.action?id=${job.jobid}"><img src="<%=basePath%>images/company/${job.company}.png" class="img-responsive" alt="scriptsbundle"> </a>
                                        </div>

                                    </div>
                                    <div class="col-md-10 col-sm-10 col-xs-12">
                                        <div class="job-title-box">
                                            <a href="<%=basePath%>showjob.action?id=${job.jobid}">
                                                <div class="job-title">${job.jobname}</div>
                                            </a>
                                            <a href="<%=basePath%>showjob.action?id=${job.jobid}"><span class="comp-name">${job.location}</span></a>
                                            <a href="<%=basePath%>showjob.action?id=${job.jobid}" class="job-type jt-full-time-color">
                                                <c:if test="${job.state==0}">等待回复</c:if>
                                                <c:if test="${job.state==1}">申请成功，请等待联系</c:if>
                                                <c:if test="${job.state==2}">Sorry,您已被拒绝</c:if>
                                            </a>
                                        </div>
                                        <p>${job.dic}<a href="<%=basePath%>showjob.action?id=${job.jobid}">查看更多</a> </p>
                                    </div>
                                    <div class="job-salary">
                                        <i class="fa fa-money"></i>$${job.salary2}
                                    </div>
                                </div>
                             </c:forEach>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12 nopadding">
                                <div class="pagination-box clearfix">
                                    <ul class="pagination">
                                        <ul class="pagination">
                                     	<li> <span aria-hidden="true">共 [ ${page.total} ] 条记录,共 [ ${page.pages} ] 页 </span></li>
										<c:if test="${ page.pageNum > 1 }">
											<li>
												<span aria-hidden="true">
													<a href="<%=basePath%>user/user_job_applied.action?pageNum=${page.pageNum-1}&pageSize=5">前一页</a>
												</span>
											</li>
										</c:if>
										<c:if test="${ page.pageNum <=1 }">
											<li><span aria-hidden="true">[ 前一页 ]</span></li>
										</c:if>
										<li>
											<span aria-hidden="true">当前第 [${page.pageNum} ] 页</span>
										</li>
										<c:if test="${ page.pageNum < page.pages }">
											<li>
												<span aria-hidden="true">
													<a href="<%=basePath%>user/user_job_applied.action?pageNum=${page.pageNum+1}&pageSize=5">后一页</a>
												</span>
											</li>
										</c:if>
										<c:if test="${ page.pageNum >= page.pages }">
											<li><span aria-hidden="true">[ 后一页 ]</span></li>
										</c:if>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="brand-logo-area clients-bg">
            <div class="clients-list">
                <div class="client-logo">
                    <a href="#"><img src="<%=basePath%>images/clients/client_1.png" class="img-responsive" alt="Brand Image" /></a>
                </div>
                <div class="client-logo">
                    <a href="#"><img src="<%=basePath%>images/clients/client_2.png" class="img-responsive" alt="Brand Image" /></a>
                </div>
                <div class="client-logo">
                    <a href="#"><img src="<%=basePath%>images/clients/client_3.png" class="img-responsive" alt="Brand Image" /></a>
                </div>
                <div class="client-logo">
                    <a href="#"><img src="<%=basePath%>images/clients/client_4.png" class="img-responsive" alt="Brand Image" /></a>
                </div>
                <div class="client-logo">
                    <a href="#"><img src="<%=basePath%>images/clients/client_1.png" class="img-responsive" alt="Brand Image" /></a>
                </div>
                <div class="client-logo">
                    <a href="#"><img src="<%=basePath%>images/clients/client_2.png" class="img-responsive" alt="Brand Image" /></a>
                </div>
                <div class="client-logo">
                    <a href="#"><img src="<%=basePath%>images/clients/client_3.png" class="img-responsive" alt="Brand Image" /></a>
                </div>
                <div class="client-logo">
                    <a href="#"><img src="<%=basePath%>images/clients/client_4.png" class="img-responsive" alt="Brand Image" /></a>
                </div>
            </div>
        </div>

        <div class="fixed-footer">
            <footer class="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 col-md-3 col-xs-12">
                            <div class="footer_block">
                                <a href="<%=basePath%>index.html" class="f_logo"><img src="<%=basePath%>images/logo-footer.png" class="img-responsive" alt="logo"></a>
                                <p>Aoluptas sit aspernatur aut odit aut fugit, sed elits quias horisa hinoe magni  magni dolores eos qui ratione volust luptatem sequised .</p>
                                <div class="social-bar">
                                    <ul>
                                        <li>
                                            <a class="fa fa-twitter" href="#"></a>
                                        </li>
                                        <li>
                                            <a class="fa fa-pinterest" href="#"></a>
                                        </li>
                                        <li>
                                            <a class="fa fa-facebook" href="#"></a>
                                        </li>
                                        <li>
                                            <a class="fa fa-behance" href="#"></a>
                                        </li>
                                        <li>
                                            <a class="fa fa-instagram" href="#"></a>
                                        </li>
                                        <li>
                                            <a class="fa fa-linkedin" href="#"></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-2 col-xs-12">
                            <div class="footer_block">
                                <h4>Hot Links</h4>
                                <ul class="footer-links">
                                    <li>
                                        <a href="#">Home</a>
                                    </li>
                                    <li>
                                        <a href="#">Jobs</a>
                                    </li>
                                    <li>
                                        <a href="#">About Us</a>
                                    </li>

                                    <li>
                                        <a href="#">Privacy</a>
                                    </li><li>
                                        <a href="#">Contact Us</a>
                                    </li>
                                    <li>
                                        <a href="#">Term & Conditions</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 col-xs-12">
                            <div class="footer_block dark_gry">
                                <h4>Recent Posts</h4>
                                <ul class="recentpost">
                                    <li>
                                        <span><a class="plus" href="#"><img src="<%=basePath%>images/footer/1.png" alt="" /><i>+</i></a></span>
                                        <p><a href="#">Fusce gravida tortor felis, ac dictum risus sagittis</a></p>
                                        <h3>Sep 15, 2016</h3>
                                    </li>
                                    <li>
                                        <span><a class="plus" href="#"><img src="<%=basePath%>images/footer/2.png" alt="" /><i>+</i></a></span>
                                        <p><a href="#">Fusce gravida tortor felis, ac dictum risus sagittis</a></p>
                                        <h3>Fab 10, 2016</h3>
                                    </li>
                                    <li>
                                        <span><a class="plus" href="#"><img src="<%=basePath%>images/footer/2.png" alt="" /><i>+</i></a></span>
                                        <p><a href="#">Fusce gravida tortor felis, ac dictum risus sagittis</a></p>
                                        <h3>Fab 10, 2016</h3>
                                    </li>

                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-3 col-xs-12">
                            <div class="footer_block">
                                <h4>Contact Information</h4>
                                <ul class="personal-info">
                                    <li><i class="fa fa-map-marker"></i> 3rd Floor,Link Arcade Model Town, BBL, USA.</li>
                                    <li><i class="fa fa-envelope"></i> Support@domain.com</li>
                                    <li><i class="fa fa-phone"></i> (0092)+ 124 45 78 678 </li>
                                    <li><i class="fa fa-clock-o"></i> Mon - Sun: 8:00 - 16:00</li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
            </footer>
            <section class="footer-bottom-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="footer-bottom">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <p>Copyright ©2016 - Opportunities A Mega Job Board Template - All rights Reserved. Made By <a href="<%=basePath%>http://themeforest.net/user/scriptsbundle"> ScriptsBundle </a></p>
                                            <p>Reproduction of material from scriptsBundle without permission is strictly prohibited. </p>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12 hidden-xs hidden-sm">
                                            <ul class="footer-menu">
                                                <li>
                                                    <a href="#">Jobs in australia</a>
                                                </li>
                                                <li>
                                                    <a href="#">Jobs in malaysia</a>
                                                </li>
                                                <li>
                                                    <a href="#">Jobs in england</a>
                                                </li>
                                                <li>
                                                    <a href="#">Jobs in saudi arabia</a>
                                                </li>
                                                <li>
                                                    <a href="#">Jobs in south africa</a>
                                                </li>
                                                <li>
                                                    <a href="#">Jobs in saudi Pakistan</a>
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