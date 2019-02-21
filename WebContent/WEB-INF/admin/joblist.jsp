<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<%=basePath%>css/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">

<link href="<%=basePath%>css/css/style.css" rel="stylesheet"
	media="screen">
<link href="<%=basePath%>css/css/elusive-webfont.css" rel="stylesheet"
	media="screen">
<link rel="stylesheet" href="<%=basePath%>css/css/flags.css">
<link rel="stylesheet"
	href="<%=basePath%>css/css/jquery.mcustomscrollbar.css">
<link href="<%=basePath%>css/css/footable.core.min.css" rel="stylesheet"
	media="screen">
<link href='<%=basePath%>css/css/7ce9e3e485ed459fab3d423cac3b229c.css'
	rel='stylesheet' type='text/css'>
<link href="<%=basePath%>css/css/main.min.css" rel="stylesheet"
	media="screen" id="mainCss">
<script src="<%=basePath%>js/js/moment-with-langs.min.js"></script>

<title>Insert title here</title>
<style>
table {
	margin-left: 5px;
	margin-right: 5px;
}

h3 {
	font-family: "宋体"
}

#didi {
	margin-left: 370px;
}

#didi li a {
	font-size: 15px; line-height : 35px;
	padding-left: 25px;
	padding-right: 25px;
	line-height: 35px;
}
</style>
</head>
<body>
	<h3>工作管理</h3>
	<table width="800px" class="table table-bordered" id="footable_demo"
		data-filter="#textFilter" data-page-size="6">

		<thead>
			<tr>
				<th>工作名</th>
				<th>职位分类</th>
				<th>工作经验</th>
				<th>工作类型</th>
				<th>薪水</th>
				<th>所属公司</th>
				<th colspan="3">设置</th>
			</tr>

		</thead>

		<tbody>
			<c:forEach items="${list}" var="job">
				<tr>
					<td>${job.jobname}</td>
					<td>${job.cate_name}</td>

					<td>${job.jobtime}</td>
					<td>${job.jobtype}</td>
					<td>${job.salary2}</td>

					<td><c:if test="${job.company=='1'}">中国  Alibaba</c:if> <c:if
							test="${job.company=='2'}">澳大利亚  tioen</c:if> <c:if
							test="${job.company=='3'}">加拿大  sineom</c:if> <c:if
							test="${job.company=='4'}">德国  DAdun</c:if> <c:if
							test="${job.company=='5'}">法国  SAFd</c:if> <img
						src="<%=basePath%>images/company/${job.company}.png" width="50px"
						height="30px" alt="scriptsbundle"></td>
					<td><a
						href="<%=basePath%>admin/editjob.action?id=${job.jobid}">修改</a></td>
					<td><a href="<%=basePath%>admin/delete.action?id=${job.jobid}">删除</a>
					</td>
					<td><a
						href="<%=basePath%>admin/showuserjob.action?jobid=${job.jobid}">展示申请人</a>
					</td>
				</tr>

			</c:forEach>
		</tbody>

	</table>



	<ul id="didi" class="pagination pagination-sm"></ul>

	<script src="<%=basePath%>js/js/jquery.min.js"></script>

	<script src="<%=basePath%>js/js/jquerycookie.min.js"></script>

	<script src="<%=basePath%>js/js/bootstrap.min.js"></script>
	<!-- retina images -->
	<script src="<%=basePath%>ls/js/retina.min.js"></script>
	<script src="<%=basePath%>js/js/switchery.min.js"></script>
	<!-- typeahead -->
	<script src="<%=basePath%>js/js/typeahead.bundle.min.js"></script>
	<!-- fastclick -->
	<script src="<%=basePath%>js/js/fastclick.min.js"></script>
	<!-- match height -->
	<script src="<%=basePath%>js/js/jquery.matchheight-min.js"></script>
	<!-- scrollbar -->
	<script src="<%=basePath%>js/js/jquery.mcustomscrollbar.concat.min.js"></script>

	<script src="<%=basePath%>js/js/yukon_all.min.js"></script>



	<!-- footable -->
	<script src="<%=basePath%>js/js/footable.min.js"></script>
	<script src="<%=basePath%>js/js/footable.paginate.min.js"></script>
	<script src="<%=basePath%>js/js/footable.filter.min.js"></script>

	<script>
		$(function() {
			// footable
			yukon_footable.p_plugins_tables_footable();
		})
	</script>

</body>
</html>