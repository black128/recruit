<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String downloadPath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta http-equiv="Content-Type"
	content="multipart/form-data; charset=utf-8" />
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
<link rel="stylesheet" href="<%=basePath%>css/owl.carousel.css">
<link rel="stylesheet" href="<%=basePath%>css/owl.style.css">

<!-- TEMPLATE CORE CSS -->
<link rel="stylesheet" href="<%=basePath%>css/style.css">

<!-- FONT AWESOME -->
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/font-awesome.min.css">
<link rel="stylesheet" href="<%=basePath%>css/et-line-fonts.css"
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

	<div class="page category-page">
		<div id="spinner">
			<div class="spinner-img">
				<img alt="Opportunities Preloader"
					src="<%=basePath%>images/loader.gif" />
				<h2>Please Wait.....</h2>
			</div>
		</div>

		<section class="dashboard-body">
			<div class="container">
				<div class="row">

					<div class="heading-inner first-heading">
						<p class="title">简历</p>
						
					</div>
					<div class="resume-list">
						<div class="table-responsive">
							<table class="table  table-striped">
								<thead class="thead-inverse">
									<tr>
										<th>Sr. #</th>
										<th>简历标题</th>
										<th>查看简历</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${page.list}" var="resume" varStatus="p">
										<tr>
											<th scope="row">${(page.pageNum-1)*page.pageSize+p.count}</th>
											<td>
												<h5>${resume.resume_oname}</h5>
											</td>
											<td><a class="btn btn-primary"
												href="<%=downloadPath%>/resume/${resume.resume_name}">查看
											</a></td>

										</tr>
									</c:forEach>
								</tbody>

							</table>
						</div>
					</div>

					<script type="text/javascript">

        						function deleteResume(id){
        							$.ajax({
        								type:"post",
        								url:"<%=basePath%>user/deleteResume.action",
								data : {
									"resume_id" : id,
								},
								success : function(data) {
									if ("12" == data) {
										alert("删除成功");
									} else {
										alert("删除失败");
									}
									window.location.reload();
								},
							});
						}
					</script>
					<div class="col-md-12 col-sm-12 col-xs-12 nopadding">
						<div class="pagination-box clearfix">
							<ul class="pagination">
								<li><span aria-hidden="true">共 [ ${page.total} ]
										条记录,共 [ ${page.pages} ] 页 </span></li>
								<c:if test="${ page.pageNum > 1 }">
									<li><span aria-hidden="true"> <a
											href="<%=basePath%>user/user_resume.action?pageNum=${page.pageNum-1}&pageSize=5">前一页</a>
									</span></li>
								</c:if>
								<c:if test="${ page.pageNum <=1 }">
									<li><span aria-hidden="true">[ 前一页 ]</span></li>
								</c:if>
								<li><span aria-hidden="true">当前第 [${page.pageNum} ]
										页</span></li>
								<c:if test="${ page.pageNum < page.pages }">
									<li><span aria-hidden="true"> <a
											href="<%=basePath%>user/user_resume.action?pageNum=${page.pageNum+1}&pageSize=5">后一页</a>
									</span></li>
								</c:if>
								<c:if test="${ page.pageNum >= page.pages }">
									<li><span aria-hidden="true">[ 后一页 ]</span></li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>


	</div>
</body>
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
<script type="text/javascript"
	src="<%=basePath%>js/footer-reveal.min.js"></script>

<!-- Owl Carousel -->
<script type="text/javascript" src="<%=basePath%>js/owl-carousel.js"></script>

<!-- CORE JS -->
<script type="text/javascript" src="<%=basePath%>js/custom.js"></script>
</html>