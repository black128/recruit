<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

<head>


<style type="text/css">
.ioioi {
	margin-left: 100px;
	margin-top: -30px;
}
</style>

<title>欢迎页面-X-admin2.0</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="<%=basePath%>css/font.css">
<link rel="stylesheet" href="<%=basePath%>css/xadmin.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>lib/layui/layui.js"
	charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>js/xadmin.js"></script>

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath%>css/mega_menu.min.css">
<link rel="stylesheet" href="<%=basePath%>css/animate.min.css">
<link rel="stylesheet" href="<%=basePath%>css/owl.carousel.css">
<link rel="stylesheet" href="<%=basePath%>css/owl.style.css">
<link rel="stylesheet" href="<%=basePath%>css/style.css">
<link href="<%=basePath%>css/select2.min.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=basePath%>css/jquery.tagsinput.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/font-awesome.min.css">
<link rel="stylesheet" href="<%=basePath%>css/et-line-fonts.css"
	type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700,900,300"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700"
	rel="stylesheet" type="text/css">
<script src="<%=basePath%>js/modernizr.js"></script>


</head>

<body>
	<section class="post-job">
		<div class="ioioi">
			<div class="row">
				<div class="col-md-10 col-sm-10 col-xs-10">
					<div class="box-panel">
						<div class="Heading-title black">
							<h3>修改这份工作</h3>
						</div>
						<form class="row" action="<%=basePath%>admin/editaddjob.action"
							method="post">
							<input type="hidden" name="jobid" value="${job.jobid}">
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="form-group">
									<label>一 级 职 位 分 类</label> 
									<select class="questions-category form-control" id="cla">
										
											<c:forEach items="${cate1}" var="cate">
											<option value="${cate.cate_id}" 
											
											<c:if test="${cate.cate_id==job.fid}">selected</c:if>
											
											>${cate.cate_name}</option>

										</c:forEach>
											
											
									</select>
								</div>
							</div>

							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="form-group">
									<label>二 级 职 位 分 类</label> 
									<select class="questions-category form-control" name="id" id="cate2">
										
										
										<c:forEach items="${cate2}" var="cate2">
											<option value="${cate2.cate_id}" 
											
											<c:if test="${cate2.cate_id==job.id}">selected</c:if>
											
											>${cate2.cate_name}</option>

										</c:forEach>

									</select>

								</div>
							</div>


							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="form-group">
									<label>职位名</label> <input type="text" name="jobname"
										placeholder="职 位 名" value="${job.jobname}" class="form-control">
								</div>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="form-group">
									<label>工作所在地</label>
									<label>工作所在地</label><select
										class="questions-category form-control" name="location">
										<option value="中国" <c:if test="${job.location=='中国'}">selected</c:if>>中国</option>
										<option value="澳大利亚" <c:if test="${job.location=='澳大利亚'}">selected</c:if>>澳大利亚</option>
										<option value="法国" <c:if test="${job.location=='法国'}">selected</c:if>>法国</option>
										<option value="德国" <c:if test="${job.location=='德国'}">selected</c:if>>德国</option>
										<option value="加拿大" <c:if test="${job.location=='加拿大'}">selected</c:if>>加拿大</option>
									</select>
								</div>
							</div>



							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="form-group">
									<label>职 位 类 型</label> <select
										class="questions-category form-control" name="jobtype">
										<option value="全职" <c:if test="${job.jobtype=='全职'}">
										selected
										</c:if>>全职</option>
										<option value="兼职" <c:if test="${job.jobtype=='兼职'}">
										selected
										</c:if>>兼职</option>
										<option value="远程职业" <c:if test="${job.jobtype=='远程职业'}">
										selected
										</c:if>>远程职业</option>
										<option value="自由职业" <c:if test="${job.jobtype=='自由职业'}">
										selected
										</c:if>>自由职业</option>
									</select>
								</div>
							</div>
							<!--  <div class="clearfix"></div> -->
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="form-group">
									<label>所需工作经验</label> <select
										class="questions-category form-control" name="jobtime">
										<option value="新 手" <c:if test="${job.jobtime=='新 手'}">
										selected
										</c:if>>新 手</option>
										<option value="1 Year" <c:if test="${job.jobtime=='1 Year'}">
										selected
										</c:if> >1 Year</option>
										<option value="2 Years" <c:if test="${job.jobtime=='2 Year'}">
										selected
										</c:if>>2 Years</option>
										<option value="3 Years"<c:if test="${job.jobtime=='3 Year'}">
										selected
										</c:if>>3 Years</option>
										<option value="4 Years" <c:if test="${job.jobtime=='4 Year'}">
										selected
										</c:if>>4 Years</option>
										<option value="5 Years" <c:if test="${job.jobtime=='5 Year'}">
										selected
										</c:if>>5 Years</option>
										<option value="6+ Years" <c:if test="${job.jobtime=='6+ Year'}">
										selected
										</c:if>>6+ Years</option>
									</select>
								</div>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="form-group">
									<label>提供薪水</label> <select
										class="questions-category form-control" name="salary2">
										<option value=">1000"  <c:if test="${job.salary2=='1000'}">
										selected
										</c:if>>不 到 10,00</option>
										<option value="1000+" <c:if test="${job.salary2=='2000'}">
										selected
										</c:if>>10,00 +</option>
										<option value="2000+" <c:if test="${job.salary2=='3000'}">
										selected
										</c:if>>20,00 +</option>
										<option value="3000+" <c:if test="${job.salary2=='4000'}">
										selected
										</c:if>>30,00 +</option>
										<option value="4000+" <c:if test="${job.salary2=='5000'}">
										selected
										</c:if>>40,00 +</option>
										<option value="5000+" <c:if test="${job.salary2=='6000'}">
										selected
										</c:if>>50,00 +</option>
										<option value="面议" <c:if test="${job.salary2=='面 议'}">
										selected
										</c:if>>面 议</option>
									</select>
								</div>
							</div>

							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="form-group">
									<label>所属公司</label> <select
										class="questions-category form-control" name="company">
										<option value="1" <c:if test="${job.company=='1'}">
										selected
										</c:if> >中国 Alibaba</option>
										<option value="2" <c:if test="${job.company=='2'}">
										selected
										</c:if> >澳大利亚 tioen</option>
										<option value="3" <c:if test="${job.company=='3'}">
										selected
										</c:if> >加拿大 sineom</option>
										<option value="4" <c:if test="${job.company=='4'}">
										selected
										</c:if> >德国 DAdun</option>
										<option value="5" <c:if test="${job.company=='5'}">
										selected
										</c:if> >法国 SAFd</option>
									</select>
								</div>
							</div>

							<!--  <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label>Tags</label>
                                        <input type="text" id="tags" value="software ,laravel, html" class="form-control" data-role="tagsinput">
                                    </div>
                                </div> -->
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="form-group">
									<label> 工 作 细 节</label>
									<textarea name="dic" id="ckeditor" cols="50" rows="4" placeholder="">${job.dic}</textarea>
								</div>
							</div>
							<div class="col-md-12 col-sm-12 col-xs-12">
								<button class="btn btn-default pull-right" type="submit">
									发布工作<i class="fa fa-angle-right"></i>
								</button>
							</div>
						</form>



					</div>
				</div>
			</div>
		</div>
	</section>
	
	<script type="<%=basePath%>js/bootstrap-3.1.1.min.js"></script>

	<script src="<%=basePath%>js/jquery-3.1.1.min.js"></script>


	


</body>

</html>