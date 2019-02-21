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

    <!--  REVOLUTION STYLE SETTING -->
    <link href="js/revolution/css/settings.css" rel="stylesheet" type="text/css" />

    <!-- FONT AWESOME -->
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=basePath%>css/et-line-fonts.css" type="text/css">
    <link rel="stylesheet" href="<%=basePath%>css/slideshowstyle.css" type="text/css">

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
    <div class="page">
        <div id="spinner">
            <div class="spinner-img"> <img alt="Opportunities Preloader" src="<%=basePath%>images/loader.gif" />
                <h2>Please Wait.....</h2>
            </div>
        </div>
        <header id="header2" class="navbar transparent-header fa-change-white">
            <jsp:include page="top.jsp"></jsp:include>
        </header>
        <section class="slidershow-bg parallex">
            <div class="container">
                <div class="row">
                    <ul class="cb-slideshow">
                        <li><span>Image 01</span></li>
                        <li><span>Image 02</span></li>
                        <li><span>Image 03</span></li>
                        <li><span>Image 04</span></li>
                    </ul>
                    <div class="col-md-10 col-sm-12 col-md-offset-1 col-xs-12 nopadding">
                        <div class="search-form-contaner">
                            <h1 class="search-main-title"> 一百万   &nbsp   个成功案例。Start Yours Today</h1>
                            <form class="form-inline" action="/recruit/search.action" method="post" >
                            	<input type="hidden" value="1" name="no">
                                <div class="col-md-4 col-sm-4 col-xs-12 nopadding">
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="jobname" placeholder="岗位" value="">
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-12 nopadding">
                                    <div class="form-group">
                                       <select class="select-category form-control" name="fid" >
                                        	<!-- 搜索类别 -->
                                            <option label="选择工作类型"></option>
                                              <c:forEach items="${flist}" var="second">
                                                	<option value="${second.cate_id}">${second.cate_name}</option>
                                              </c:forEach>
                                               <!-- 搜索类别 -->
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-12 nopadding">
                                    <div class="form-group">
                                        <select class="select-location form-control" name="location">
                                           <option label="选择工作地点"></option>
                                            <option value="中国">中国</option>
                                            <option value="澳大利亚">澳大利亚</option>
                                            <option value="加拿大">加拿大</option>
                                            <option value="法国">法国</option>
                                            <option value="德国">德国</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-2 col-sm-2 col-xs-12 nopadding">
                                    <div class="form-group form-action">
  
                                        <button type="submit" class="btn btn-default btn-search-submit">搜索 <i class="fa fa-angle-right"></i></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>      
        <section class="category-section-3 light-blue">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="Heading-title black">
                            <h1>浏 览 分 类</h1>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium</p>
                        </div>
                    </div>
                    <!-- 工作分类 -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
                    	<c:forEach var="map" items="${catelist}">
                    	<c:if test="${map.key.cate_state==1}">
                    	 <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="category-section-3-box">
                                <div class="category-section-3-box-inner"> <i class="icon-browser"></i>
                                    <h4><a href="${map.key.cate_id}"> ${map.key.cate_name} </a></h4>
                                    </div>
                                <div class="category-section-3-box-over-text animated fadeIn">
                                 <c:forEach var="cate" items="${map.value}">
                                 <c:if test="${cate.cate_state==1}">
                                      <h4><a href='/recruit/search1.action?cate_id=${cate.cate_id}&no=1'>${cate.cate_name}</a></h4>
                                 </c:if>
                                 </c:forEach>                                  
                                </div>
                            </div>
                        </div>
                    	</c:if>
                    	</c:forEach>
                    
                        <div class="col-md-12 col-sm-12 col-xs-12">
                    	<div class="load-more-btn">
                        	<button class="btn-default"><a href="<%=basePath%>category/catelistjsp.action">查看全部</a><i class="fa fa-angle-right"></i> </button>
                        </div>
                    </div>
                    </div>
                    <!-- 工作分类 -->
                </div>
            </div>
        </section>
        <section class="employe-section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12 nopadding hidden-sm">
                        <div class="employe-img-section-right"></div>
                    </div>
                    <div class="col-md-6 col-sm-12 col-xs-12 nopadding">
                        <div class="employe-detail-section">
                            <h5>梦想开始的地方</h5>
                            <h2>你在找工作吗？<br>
                          		  那这里就是完美的地方</h2>
                            <p>这是一个用情怀说话的时代，而当情怀用在招聘上，你开在迷茫吗？你还在为没有找到工作而迷茫吗？那你现在看到了一个值得你去驻足一看的好地方，这里有你所有想要的所有工作，位高权重责任轻，数钱数到手抽筋</p>
                            <a href="<%=basePath%>category/catelistjsp.action" class="btn-default btn btn-employe-section">查看全部</a>
                       </div>
                    </div>
                </div>
            </div>
        </section>
       
        <section class="blog-posts-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12 nopadding">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="Heading-title black">
                            <h1>博客专区</h1>
                            <p>这里看人生百态</p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="blog-post">
                            <div class="post-img"> <a href="<%=basePath%>blog-single.action"> <img src="<%=basePath%>images/blog/1.jpg" alt="" class="img-responsive"> </a> </div>
                            <div class="post-info"> <a href="<%=basePath%>blog-single.action">Aug 30, 2016</a> <a href="#">23 comments</a> </div>
                            <h3 class="post-title"> <a href="<%=basePath%>blog-single.action"> 考试备战中，发奋图强为了更美好的明天 </a> </h3>
                            <p class="post-excerpt"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam neque tempora odit 
                                atque repellat est molestiae perferendis. </p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="blog-post">
                            <div class="post-img"> <a href="<%=basePath%>blog-single.action"> <img src="<%=basePath%>images/blog/2.jpg" alt="" class="img-responsive"> </a> </div>
                            <div class="post-info"> <a href="<%=basePath%>blog-single.action">august 30, 2016</a> <a href="#">90 comments</a> </div>
                            <h3 class="post-title"> <a href="<%=basePath%>blog-single.action">书籍是人类日进步的阶梯，在阶梯之上，我看到明媚的阳光 </a> </h3>
                            <p class="post-excerpt"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam neque tempora odit 
                                atque repellat est molestiae perferendis. </p>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="blog-post">
                            <div class="post-img"> <a href="<%=basePath%>blog-single.action"> <img src="<%=basePath%>images/blog/3.jpg" alt="" class="img-responsive"> </a> </div>
                            <div class="post-info"> <a href="<%=basePath%>blog-single.action">august 02, 2016</a> <a href="#">10 comments</a> </div>
                            <h3 class="post-title"> <a href="<%=basePath%>blog-single.action">畅游书籍的海洋，让我感受来自大海的汹涌 </a> </h3>
                            <p class="post-excerpt"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam neque tempora odit 
                                atque repellat est molestiae perferendis. </p>
                        </div>
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                    	<div class="load-more-btn">
                        	<button class="btn-default"><a href="<%=basePath%>category/catelistjsp.action">查看更多</a> <i class="fa fa-angle-right"></i> </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
        
		<jsp:include page="footer.jsp"></jsp:include>
        
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

        <!-- Owl Carousel -->
        <script type="text/javascript" src="<%=basePath%>js/owl-carousel.js"></script>

        <!-- TEXT ROTATOR -->
        <script type="text/javascript" src="<%=basePath%>js/typed.js"></script>

        <!-- JQUERY REVEAL -->
        <script type="text/javascript" src="<%=basePath%>js/footer-reveal.min.js"></script>

        <!-- jQuery REVOLUTION Slider  -->
        <script src="<%=basePath%>js/revolution/js/jquery.themepunch.tools.min.js"></script>
        <script src="<%=basePath%>js/revolution/js/jquery.themepunch.revolution.min.js"></script>
        
        <!-- CORE JS -->
        <script type="text/javascript" src="<%=basePath%>js/custom.js"></script>
    </div>
</body>

</html>