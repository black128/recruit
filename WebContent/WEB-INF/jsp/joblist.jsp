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
		<section class="breadcrumb-search parallex">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12 nopadding">
						<div
							class="col-md-8 col-sm-12 col-md-offset-2 col-xs-12 nopadding">
							<div class="search-form-contaner">
								<form class="form-inline" action="/recruit/search.action"
									method="post">
									<input type="hidden" name="no" value="1">
									<div class="col-md-7 col-sm-7 col-xs-12 nopadding">
										<div class="form-group">
											
											<input type="text" class="form-control" name="jobname"
												placeholder="岗位" value=""> <i
												class="icon-magnifying-glass"></i>
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

									<div class="col-md-2 col-sm-2 col-xs-12 nopadding">
										<div class="form-group form-action">
											<button type="submit"
												class="btn btn-default btn-search-submit">
												搜索<i class="fa fa-angle-right"></i>
											</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="categories-list-page light-grey">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12 nopadding">
						<div class="col-md-9 col-sm-12 col-xs-12">
							<h4 class="search-result-text">显示60项活跃工作中的10项</h4>
						</div>

						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="all-jobs-list-box2">

								<c:forEach items="${list}" var="job">
									<div class="job-box job-box-2">
										<div class="col-md-2 col-sm-2 col-xs-12 hidden-sm hidden-xs">
											<div class="comp-logo">
												<a href="/recruit/showjob.action?id=${job.jobid}"><img
													src="images/company/${job.company}.png"
													class="img-responsive" alt="scriptsbundle"> </a>
											</div>

										</div>
										<div class="col-md-10 col-sm-10 col-xs-12">
											<div class="job-title-box">
												<a href="/recruit/showjob.action?id=${job.jobid}">
													<div class="job-title">${job.jobname}(
														${job.cate_name} )</div>
												</a> <a href="#"><span class="comp-name">地点：${job.location}

												</span></a> <a href="/recruit/showjob.action?id=${job.jobid}"
													class="job-type jt-full-time-color"> <i
													class="fa fa-clock-o"></i>${job.jobtime}
												</a>
											</div>
											<p>
												是否和你的职业相符合呢? 如果符合那就来申请吧,你会得到你想要的那份荣誉....... <a
													href="/recruit/showjob.action?id=${job.jobid}">阅读 更多</a>
											</p>
										</div>
										<div class="job-salary">
											<i class="fa fa-money"></i>$ ${job.salary2} $
										</div>
									</div>

								</c:forEach>

							</div>
							<c:if test="${not empty list}">
								<div class="col-md-12 col-sm-12 col-xs-12 nopadding">
									<div class="pagination-box clearfix">
										<ul class="pagination">
											<li><a <c:if test="${page.pageNum==1}">href='#'</c:if>
												<c:if test="${page.pageNum!=1}">href="/recruit/search.action?no=${page.pageNum-1}&jobname=${job111.jobname}&fid=${job111.fid}&location1=${job111.location}&cate_id=${job111.cate_id}"" </c:if>
												aria-label="Previous"> <span aria-hidden="true">«</span>
											</a></li>

											<c:if test=""></c:if>

											<c:forEach begin="1" end="${page.pages}" var="i">

												<li <c:if test="${page.pageNum==i}">  class="active"</c:if>><a
													href="/recruit/search.action?no=${i}&jobname=${job111.jobname}&fid=${job111.fid}&location1=${job111.location}&cate_id=${job111.cate_id}">${i}</a></li>
												<c:if test=""></c:if>

											</c:forEach>
											<!-- <li class="active"><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">5</a></li> -->
											<li><a
												<c:if test="${page.pageNum==page.pages}">href='#'</c:if>
												<c:if test="${page.pageNum != page.pages }">href="/recruit/search.action?no=${page.pageNum+1}&jobname=${job111.jobname}&fid=${job111.fid}&location1=${job111.location}&cate_id=${job111.cate_id}"" </c:if>
												aria-label="Next"> <span aria-hidden="true">»</span>
											</a></li>
										</ul>
									</div>
								</div>

							</c:if>
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

		<!-- CORE JS -->
		<script type="text/javascript" src="js/custom.js"></script>

	</div>
</body>

</html>