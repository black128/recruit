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
<link rel="icon" href="<%=basePath%>images/favicon.ico"
	type="image/x-icon">

<!-- BOOTSTRAPE STYLESHEET CSS FILES -->
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">

<!-- JQUERY SELECT -->
<link href="<%=basePath%>css/select2.min.css" rel="stylesheet" />

<!-- JQUERY MENU -->
<link rel="stylesheet" href="<%=basePath%>css/mega_menu.min.css">

<!-- ANIMATION -->
<link rel="stylesheet" href="<%=basePath%>css/animate.min.css">

<!-- OWl  CAROUSEL-->
<link rel="stylesheet" href="<%=basePath%>css/owl.style.css">

<!-- TEMPLATE CORE CSS -->
<link rel="stylesheet" href="<%=basePath%>css/style.css">

<!--  REVOLUTION STYLE SETTING -->
<link href="js/revolution/css/settings.css" rel="stylesheet"
	type="text/css" />

<!-- FONT AWESOME -->
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/font-awesome.min.css">
<link rel="stylesheet" href="<%=basePath%>css/et-line-fonts.css"
	type="text/css">
<link rel="stylesheet" href="<%=basePath%>css/slideshowstyle.css"
	type="text/css">

<!-- Google Fonts -->
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,900,300"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700"
	rel="stylesheet" type="text/css">

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


	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-3 col-xs-12">
					<div class="footer_block">
						<a href="index.html" class="f_logo"><img
							src="<%=basePath%>images/logo.png" class="img-responsive"
							alt="logo"></a>
						<p>这是一个用情怀说话的时代，而当情怀用在招聘上，会产生什么化学反应...</p>
						<div class="social-bar">
							<ul>
								<li><a class="fa fa-twitter" href="#"></a></li>
								<li><a class="fa fa-pinterest" href="#"></a></li>
								<li><a class="fa fa-facebook" href="#"></a></li>
								<li><a class="fa fa-behance" href="#"></a></li>
								<li><a class="fa fa-instagram" href="#"></a></li>
								<li><a class="fa fa-linkedin" href="#"></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-2 col-xs-12">
					<div class="footer_block">
						<h4>高点击率</h4>
						<ul class="footer-links">
							<li><a href="<%=basePath%>index.action">主页</a></li>
							<li><a href="<%=basePath%>category/catelistjsp.action">工作</a></li>
							<li><a href="<%=basePath%>aboutus.action">关于我们</a></li>

							<li><a href="#">隐私</a></li>
							<li><a href="<%=basePath%>contactus.action">联系我们</a></li>
							<li><a href="#">条款和条件</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-md-4 col-xs-12">
					<div class="footer_block dark_gry">
						<h4>最近的帖子</h4>
						<ul class="recentpost">
							<li><span><a class="plus" href="#"><img
										src="<%=basePath%>images/footer/1.png" alt="" /><i>+</i></a></span>
								<p>
									<a href="<%=basePath%>blog-single.action">考试备战中，发奋图强为了更美好的明天</a>
								</p>
								<h3>Sep 15, 2016</h3></li>
							<li><span><a class="plus" href="#"><img
										src="<%=basePath%>images/footer/2.png" alt="" /><i>+</i></a></span>
								<p>
									<a href="<%=basePath%>blog-single.action">书籍是人类日进步的阶梯，在阶梯之上，我看到明媚的阳光</a>
								</p>
								<h3>Fab 10, 2016</h3></li>
							<li><span><a class="plus" href="#"><img
										src="<%=basePath%>images/footer/2.png" alt="" /><i>+</i></a></span>
								<p>
									<a href="<%=basePath%>blog-single.action">畅游书籍的海洋，让我感受来自大海的汹涌</a>
								</p>
								<h3>Fab 10, 2016</h3></li>

						</ul>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 col-xs-12">
					<div class="footer_block">
						<h4>联系方式</h4>
						<ul class="personal-info">
							<li><i class="fa fa-map-marker"></i>中国北京三里屯</li>
							<li><i class="fa fa-envelope"></i> Support@domain.com</li>
							<li><i class="fa fa-phone"></i> (0092)+ 124 45 78 678</li>
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
									<p>
										版权所有 ©2016 - 解释权归我们所有 -保留所有权利.  
									</p>
									<p>未经许可，禁止翻版</p>
								</div>
								<div class="col-md-12 col-sm-12 col-xs-12 hidden-xs hidden-sm">
									<ul class="footer-menu">
										<li><a href="#">在中国工作</a></li>
										<li><a href="#">在法国工作</a></li>
										<li><a href="#">在德国工作</a></li>
										<li><a href="#">在澳大利亚工作</a></li>
										<li><a href="#">在加拿大工作</a></li>

									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>





	<!-- JAVASCRIPT JS  -->
	<script type="text/javascript"
		src="<%=basePath%>js/jquery-2.2.3.min.js"></script>

	<!-- BOOTSTRAP CORE JS -->
	<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>

	<!-- JQUERY SELECT -->
	

	<!-- MEGA MENU -->
	<script type="text/javascript" src="<%=basePath%>js/mega_menu.min.js"></script>

	<!-- JQUERY EASING -->
	<script type="text/javascript" src="<%=basePath%>js/easing.js"></script>

	<!-- JQUERY COUNTERUP -->
	<script type="text/javascript" src="<%=basePath%>js/counterup.js"></script>

	<!-- JQUERY WAYPOINT -->
	<script type="text/javascript" src="<%=basePath%>js/waypoints.min.js"></script>

	<!-- Owl Carousel -->

	<!-- TEXT ROTATOR -->
	<script type="text/javascript" src="<%=basePath%>js/typed.js"></script>

	<!-- JQUERY REVEAL -->
	<script type="text/javascript"
		src="<%=basePath%>js/footer-reveal.min.js"></script>

	<!-- jQuery REVOLUTION Slider  -->
	<script
		src="<%=basePath%>js/revolution/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="<%=basePath%>js/revolution/js/jquery.themepunch.revolution.min.js"></script>

	<!-- CORE JS -->
	<script type="text/javascript" src="<%=basePath%>js/custom.js"></script>
	</div>
</body>

</html>