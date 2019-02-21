<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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

<!-- JQUERY SELECT -->
<link href="css/select2.min.css" rel="stylesheet" />

<!-- JQUERY MENU -->
<link rel="stylesheet" href="css/mega_menu.min.css">

<!-- ANIMATION -->
<link rel="stylesheet" href="css/animate.min.css">

<!-- OWl  CAROUSEL-->
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.style.css">

<!-- TEMPLATE CORE CSS -->
<link rel="stylesheet" href="css/style.css">

<!-- FONT AWESOME -->
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/et-line-fonts.css" type="text/css">

<!-- Google Fonts -->
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,900,300"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700"
	rel="stylesheet" type="text/css">

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
			<div class="spinner-img">
				<img alt="Opportunities Preloader" src="images/loader.gif" />
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
								<button type="button" class="btn btn-default dropdown-toggle"
									data-toggle="dropdown">
									<span id="search_concept">Filter By</span> <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">By Company</a></li>
									<li><a href="#">By Function</a></li>
									<li><a href="#">By City </a></li>
									<li><a href="#">By Salary </a></li>
									<li><a href="#">By Industry</a></li>
								</ul>
							</div>
							<input type="hidden" name="search_param" value="all"
								id="search_param"> <input type="text"
								class="form-control search-field" name="x"
								placeholder="Search term..."> <span
								class="input-group-btn">
								<button class="btn btn-default" type="button">
									<span class="fa fa-search"></span>
								</button>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<section class="job-breadcrumb">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-7 co-xs-12 text-left">
						<h3>${dic.cate_name}-${dic.jobname}</h3>
					</div>
					<div class="col-md-6 col-sm-5 co-xs-12 text-right">
						<div class="bread">
							<ol class="breadcrumb">

								<li class="active">工作 细节</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="single-job-section">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="col-md-8 col-sm-8 col-xs-12">
							<div class="single-job-page-2 job-short-detail">
								<div class="heading-inner">
									<p class="title">职位 描述</p>
								</div>
								<div class="job-desc job-detail-boxes">
									<p>${dic.dic}</p>
									<div class="heading-inner">
										<p class="title">工作规范:</p>
									</div>
									<ul class="desc-points">
										<li><i class="fa fa-caret-right "></i>能准时上下班.</li>
										<li><i class="fa fa-caret-right "></i>遇到问题你应该能够小心谨慎地处理它.</li>
										<li><i class="fa fa-caret-right "></i> 需要不断更新和与耗材的交互.</li>
										<li><i class="fa fa-caret-right "></i>
											您还应确保所有相关进程的功能正常运行.</li>
										<li><i class="fa fa-caret-right "></i> 你因该在短时间内了解公司的基本流程.</li>
									</ul>

									<div class="heading-inner">
										<p class="title">技术指导:</p>
									</div>
									<ul class="desc-points">
										<li><i class="fa fa-caret-right "></i>
											您应该能够执行给定订单或客户的所有相关商品推销活动.</li>
										<li><i class="fa fa-caret-right "></i> 你应该能够小心谨慎地处理它.</li>
										<li><i class="fa fa-caret-right "></i>
											部分职责是准备样品和预算，并且两者都是批准的.</li>
										<li><i class="fa fa-caret-right "></i> 需要不断更新和与耗材的交互.</li>
										<li><i class="fa fa-caret-right "></i>
											您还应确保所有相关进程的功能正常运行.</li>
									</ul>
								</div>

							</div>
						</div>
						<div class="col-md-4 col-sm-4 col-xs-12">
							<div class="widget">
								<div class="widget-heading">
									<span class="title">简短 描述</span>
								</div>
								<ul class="short-decs-sidebar">
									<li>
										<div>
											<h4>工作类型:</h4>
										</div>
										<div>
											<i class="fa fa-bars"></i>${dic.jobtype}
										</div>
									</li>
									<li>
										<div>
											<h4>工作名:</h4>
										</div>
										<div>
											<i class="fa fa-bars"></i>${dic.jobname}
										</div>
									</li>

									<li>
										<div>
											<h4>所在地:</h4>
										</div>
										<div>
											<i class="fa fa-bars"></i>${dic.location}
										</div>
									</li>



									<li>
										<div>
											<h4>工 作 经 验:</h4>
										</div>
										<div>
											<i class="fa fa-clock-o"></i>${dic.jobtime}
										</div>
									</li>

									<li>
										<div>
											<h4>发表 于:</h4>
										</div>
										<div>
											<i class="fa fa-calendar"></i>10 May, 2016
										</div>
									</li>

									<li>
										<div>
											<h4>提 供 薪 水:</h4>
										</div>
										<div>
											<i class="fa fa-dollar"></i>$ ${dic.salary2}/month
										</div>
									</li>
								</ul>
							</div>
							<aside>
								<div class="apply-job">


									<c:if test="${empty user}">
										<a class="btn btn-default" href="/recruit/userlogin.action"><i
											class="fa fa-upload"></i> 申
												请 职 位 </a>
									</c:if>

									<c:if test="${not empty user}">
									<a class="btn btn-default" data-toggle="modal" href="#"
										data-target="#myModal"><i class="fa fa-upload"></i> 
										申 请 职位 </a>

									</c:if>
								</div>

								<div class="company-detail">
									<div class="company-img">
										<img src="images/company/${dic.company}.png"
											class="img-responsive" alt="">
									</div>
									<div class="company-contact-detail">
										<table>
											<tr>
												<th>公司名:</th>
												<td><c:if test="${dic.company=='1'}">中国  Alibaba</c:if>
													<c:if test="${dic.company=='2'}">澳大利亚  Tioen</c:if> <c:if
														test="${dic.company=='3'}">加拿大  Sineom</c:if> <c:if
														test="${dic.company=='4'}">德国  DAdun</c:if>
														<c:if
														test="${dic.company=='5'}">法国  SAFd</c:if>
														</td>
											</tr>
											<tr>
												<th>邮箱:</th>
												<td>admin@confidential.com</td>
											</tr>
											<tr>
												<th>电话:</th>
												<td>+99 333 1234567</td>
											</tr>
											<tr>
												<th>网址:</th>
												<td>www.caplvwebsite.com</td>
											</tr>
											<tr>
												<th>地址:</th>
												<td>2nd Downtown street, hellon city, vatnaam</td>
											</tr>
										</table>
									</div>
								</div>
							</aside>
							<div class="single-job-map">
								<div id="map-contact"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>



		<div class="brand-logo-area clients-bg">
			<div class="clients-list">
				<div class="client-logo">
					<a href="#"><img src="images/clients/client_1.png"
						class="img-responsive" alt="Brand Image" /></a>
				</div>
				<div class="client-logo">
					<a href="#"><img src="images/clients/client_2.png"
						class="img-responsive" alt="Brand Image" /></a>
				</div>
				<div class="client-logo">
					<a href="#"><img src="images/clients/client_3.png"
						class="img-responsive" alt="Brand Image" /></a>
				</div>
				<div class="client-logo">
					<a href="#"><img src="images/clients/client_4.png"
						class="img-responsive" alt="Brand Image" /></a>
				</div>
				<div class="client-logo">
					<a href="#"><img src="images/clients/client_1.png"
						class="img-responsive" alt="Brand Image" /></a>
				</div>
				<div class="client-logo">
					<a href="#"><img src="images/clients/client_2.png"
						class="img-responsive" alt="Brand Image" /></a>
				</div>
				<div class="client-logo">
					<a href="#"><img src="images/clients/client_3.png"
						class="img-responsive" alt="Brand Image" /></a>
				</div>
				<div class="client-logo">
					<a href="#"><img src="images/clients/client_4.png"
						class="img-responsive" alt="Brand Image" /></a>
				</div>
			</div>
		</div>

		<div class="fixed-footer">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>

		<a href="#" class="scrollup"><i class="fa fa-chevron-up"></i></a>
		<div class="modal fade apply-job-modal" id="myModal">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-body contact-form-container">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true"><i class="fa fa-close"></i></span>
						</button>
						<div class="job-modal">
							<h2>想 申 请 这 份 工 作 吗？</h2>
						</div>
						<form method="post" id="job-form" action="/recruit/applyjob.action">
						
						
							<input type="hidden" name="jobid" value="${dic.jobid}"> 
							<input type="hidden" name="user_id" value="${user.user_id}">
							<div class="row clearfix">
								<div class="column col-md-12 col-sm-12 col-xs-12">
									<div class="form-group">
										<input type="text" class="form-control" name="user_name"
											value="${user.user_name}" placeholder=" 姓 名 " required>
									</div>
									<div class="form-group">
										<input type="email" class="form-control" name="user_email"
											value="${user.user_email}" placeholder="邮箱" required>
									</div>
								</div>
								
								<div class="column col-md-12 col-sm-12 col-xs-12">
									<div class="form-group">
										<textarea name="message" rows="6" class="form-control"
											placeholder="展 示 自 己" required></textarea>
									</div>
								</div>
								<div class="col-md-12 col-xs-12">
									<div class="text-center">
										<button type="submit" class="btn btn-default btn-block">
											立 即 申 请</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
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

		<!-- FOR THIS PAGE ONLY -->
		<!--<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>-->
		<!--<script type="text/javascript" src="js/map.js"></script>-->

		<!-- CORE JS -->
		<script type="text/javascript" src="js/custom.js"></script>

	</div>
</body>

</html>