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
        
        <section class="breadcrumb-search parallex">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12 nopadding">
                        <div class="col-md-8 col-sm-12 col-md-offset-2 col-xs-12 nopadding">
                            <div class="search-form-contaner">
                                <form class="form-inline" method="post" action="">
                                    <div class="col-md-7 col-sm-7 col-xs-12 nopadding">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="cate_name" placeholder="工作关键字" value="">
                                            <i class="icon-magnifying-glass"></i>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-3 col-xs-12 nopadding">
                                        <div class="form-group">
                                            <select class="select-category form-control" name="cate_name" >
                                                <option label="选择工作类型"></option>
                                                <c:forEach items="${allsec}" var="second">
                                                	 <option value="${second.cate_id}">${second.cate_name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-sm-2 col-xs-12 nopadding">
                                        <div class="form-group form-action">
                                            <button type="button" class="btn btn-default btn-search-submit">搜索 <i class="fa fa-angle-right"></i> </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="categories">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">

                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="Heading-title black">
                                <h1>工作类别</h1>
                                <p>我们的工作主要有六大块，每块都有你想要的工作，应你所求</p>
                            </div>
                        </div>
                        <div class="col-md-12 col-sm-12 col-xs-12 nopadding">
                            <div id="cats-masonry">
                           
                            	<c:forEach var="map" items="${catelist}">
                            	<c:if test="${map.key.cate_state==1}">
                            	<div class="col-md-4 col-sm-6 col-xs-12">
                                    <div class="category-box">
                                        <div class="category-heading"> <a href="/recruit/search.action?fid=${map.key.cate_id}&no=1">${map.key.cate_name}</a></div>
                                        <ul class="">
                                        <c:forEach var="cate" items="${map.value}">
                                        <c:if test="${cate.cate_state==1}">
                                       		 <li><a href="/recruit/search1.action?cate_id=${cate.cate_id}&no=1"> ${cate.cate_name} <span>详情</span> </a></li>
                                        </c:if>
                                        </c:forEach>
                                           
                                        </ul>
                                    </div>
                                </div>
                            	</c:if>
                           		</c:forEach>
                            
                              
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

        <!-- FOR THIS PAGE ONLY -->
        <script src="<%=basePath%>js/imagesloaded.js"></script>
        <script src="<%=basePath%>js/isotope.min.js"></script>
        <script type="text/javascript">
            (function($) {
                "use strict";
                $('#cats-masonry').imagesLoaded(function() {
                    $('#cats-masonry').isotope({
                        layoutMode: 'masonry',
                        transitionDuration: '0.3s'
                    });
                });
            })(jQuery);
        </script>

        <!-- CORE JS -->
        <script type="text/javascript" src="<%=basePath%>js/custom.js"></script>

    </div>
</body>

</html>