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
	<meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />
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


        <section class="job-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-7 co-xs-12 text-left">
                        <h3>个人简历</h3>
                    </div>
                    <div class="col-md-6 col-sm-5 co-xs-12 text-right">
                        <div class="bread">
                            <ol class="breadcrumb">
                                <li><a href="<%=basePath%>index.action">首页</a> </li>
                                <li class="active">个人简历</li>
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
                        <div class="col-md-4 col-sm-12 col-xs-12">
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
                                        <li  class="active">
                                            <a href="<%=basePath%>user/user_resume.action?pageNum=1&pageSize=5"> <i class="fa fa-file-o"></i>我的简历</a>
                                        </li>
                                        <li>
                                            <a href="<%=basePath%>user/user_job_applied.action?pageNum=1&pageSize=5"> <i class="fa  fa-list-ul"></i>工作申请</a>
                                        </li>
                                        <li>
                                            <a href="<%=basePath%>user/user_followed_companies.action"> <i class="fa  fa-bookmark-o"></i>跟随公司</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 col-sm-12 col-xs-12">
                            <div class="heading-inner first-heading">
                                <p class="title">我的简历</p>
                                <a href="javascript:void(0)"><span class="pull-right add-button btn-default" data-toggle="modal" data-target=".add-resume-modal">添加新简历</span></a>
                            </div>
                            <div class="resume-list">
                            	<div class="table-responsive">
                                    <table class="table  table-striped">
                                        <thead class="thead-inverse">
                                            <tr>
                                                <th>Sr. #</th>
                                                <th>简历标题</th>
                                                <th>预览</th>
                                                <th>删除</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach items="${page.list}" var="resume" varStatus="p">
                                            <tr>
                                                <th scope="row">${(page.pageNum-1)*page.pageSize+p.count}</th>
                                                <td>
                                                    <h5>${resume.resume_oname}</h5></td>
                                                <td><a class="btn btn-primary" href="<%=downloadPath%>/resume/${resume.resume_name}">预览 </a></td>
                                             
                                                <td><a class="btn btn-danger" href="javascript:void(0)" onclick="deleteResume('${resume.resume_id}')" > 删除 </a></td>
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
        								data:{
        									"resume_id":id,
        								},
        								success:function(data){
        									if("12"==data){
        										alert("删除成功");
        									}else{
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
                                     	<li> <span aria-hidden="true">共 [ ${page.total} ] 条记录,共 [ ${page.pages} ] 页 </span></li>
										<c:if test="${ page.pageNum > 1 }">
											<li>
												<span aria-hidden="true">
													<a href="<%=basePath%>user/user_resume.action?pageNum=${page.pageNum-1}&pageSize=5">前一页</a>
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
													<a href="<%=basePath%>user/user_resume.action?pageNum=${page.pageNum+1}&pageSize=5">后一页</a>
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
            <div class="clients-list light-blue">
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
		<form action="<%=basePath%>user/addResume.action" method="post" enctype="multipart/form-data">
        <div class="modal add-resume-modal" tabindex="-1" role="dialog" aria-labelledby="">
            <div class="modal-dialog modal-md" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">添加新简历</h4>
                    </div>
                    <div class="modal-body">
                        <div class="input-group image-preview form-group">
                            <input type="text" class="form-control image-preview-filename" disabled="disabled">
                            <span class="input-group-btn">
                            <button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                                <span class="glyphicon glyphicon-remove"></span> 取消
                            </button>
                            <div class="btn btn-default image-preview-input">
                                <span class="glyphicon glyphicon-folder-open"></span>
                                <span class="image-preview-input-title">选择文件</span>
                                 
                               		 <input type="file" accept="file_extension" name="resume" />
                             
                            </div>
                            </span>
                        </div>
                        <p>仅允许pdf和doc文件</p>
                    </div>
                    <div class="modal-footer">
                        <input type="submit" class="btn btn-default" value="保存简历" >
                    </div>
                </div>
            </div>
        </div>
		</form>
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