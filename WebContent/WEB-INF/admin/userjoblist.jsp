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
	font-size: 15px;
	line-height: 35px;
	padding-left: 25px;
	padding-right: 25px;
	line-height: 35px;
}
</style>
</head>
<body>
	<h3>工作管理</h3>
	<table width="800px" class="table table-bordered" id="footable_demo"
		data-filter="#textFilter" data-page-size="5">

		<thead>
			<tr>
				<th>申请人id</th>
				<th>申请人姓名</th>
				<th>申请人Email</th>
				<th>申请工作</th>
				<th>职工 回信</th>
				<th colspan="2">设置</th>
			</tr>

		</thead>

		<tbody>
			<c:forEach items="${list}" var="job">
				<tr>
					<td>${job.user_id}</td>
					<td>${job.user_name}</td>

					<td>${job.user_email}</td>
					<td>${job.jobname}</td>
					<td>${job.message}</td>
					<td id="${job.user_id}"><a href="<%=basePath%>admin/useraddjob.action?id=${job.user_id}&jobid=${jobid}" onclick="change('${job.user_id}')">同意</a></td>
					<td id="${job.user_id}asd"><a
						href="<%=basePath%>admin/userjobedit.action?id=${job.user_id}&jobid=${jobid}" onclick="change1('${job.user_id}asd')">拒绝</a>
					</td>
				</tr>

			</c:forEach>
		</tbody>

	</table>

	<script src="<%=basePath%>js/jquery.js"></script>
	<script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
	<script type="text/javascript">
	
		function change(id){
			$("#"+id).click(function(){
			    alert("同意成功");
			});
		}	 
	
		function change1(id){
			$("#"+id).click(function(){
			    alert("拒绝成功");
			});
		}
	
	
	
	</script>


</body>
</html>