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
  <nav id="menu-1" class="mega-menu fa-change-black" data-color=""> 
        <section class="menu-list-items"> 
            <ul class="menu-logo">
                <li> <a href="index.html"> <img src="<%=basePath%>images/logo.png" alt="logo" class="img-responsive"> </a> </li>
            </ul>
            <ul class="menu-links pull-right">
                <li><a href="javascript:void(0)"> 快速浏览 <i class="fa fa-angle-down fa-indicator"></i></a> 
                    <ul class="drop-down-multilevel">
                    	<li><a href="<%=basePath%>index.action">首页</a></li>
                        <li><a href="<%=basePath%>login.action">加入我们</a></li>
                        <li><a href="<%=basePath%>aboutus.action">关于我们 </a> 
                            
                        </li>
                        <li><a href="<%=basePath%>contactus.action">联系我们</a> </li>
                        <li><a href="<%=basePath%>category/catelistjsp.action">查看工作的种类</a>  </li>
                        
                        <li><a href="<%=basePath%>search.action?no=1">查看全部工作</a> </li>
                        
                		<c:if test="${not empty user}">
                     		<li><a href="<%=basePath%>user/user_dashboard.action">个人信息</a> </li>
                		</c:if>
                    </ul>
                </li>
              
                
                <c:if test="${empty user}">
                        <li><a href="<%=basePath%>login.action">登录</a></li>
                </c:if>
                <c:if test="${not empty user}">
                	<li><a href="javascript:void(0)">${user.user_name}<i class="fa fa-angle-down fa-indicator"></i></a> 
                    	<ul class="drop-down-multilevel">
                     		<li><a href="<%=basePath%>user/user_dashboard.action">个人信息</a></li>
                     		<li><a href="<%=basePath%>user/changePassword.action">修改密码</a></li>
                      	</ul>
                     <li><a href="<%=basePath%>logout.action">退出</a></li>
                </c:if>
            </ul>
        </section>
    </nav>

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