<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<title>Insert title here</title>
<style>
h3, h4 {
	font-family: "宋体"
}
</style>
</head>
<body>

	<h3 style="padding-left: 10px">分类修改</h3>

	<form class="form-horizontal" action='<%=basePath%>admincate/updatecate.action' method="post">
		 <input
			type="hidden" name="cate_id" value="${qb.cate_id}" />

		<c:if test="${empty qb.cate_fid}">


			<div class="form-group" style="padding-left: 70px">
				<h4>正在修改一级分类名</h4>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">分类名：</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" placeholder="${qb.cate_name}"
						name="cate_name" onblur="show()" value="${qb.cate_name}">
				</div>
			</div>
			<div class="form-group" id="selectFirst">
				<label class="col-sm-2 control-label">添加二级分类:</label>
				<div class="col-sm-3">
					<select  class="form-control" name="cate_fid">
						<c:forEach items="${secondlist}" var="f">
						<c:if test="${qb.cate_name!=f.cate_name }">
							<option value="${f.cate_id}" >${f.cate_name}</option>
						</c:if>
						</c:forEach>

					</select>
				</div>
			</div>
			
		</c:if>

		<c:if test="${not empty qb.cate_fid}">
			<div class="form-group" style="padding-left: 70px">
				<h4>正在修改二级分类名</h4>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">分类名：</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" placeholder="${qb.cate_name}"
						name="cate_name" onblur="show()" value="${qb.cate_name}">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label">类别</label>
				<div class="col-sm-3">
					<select class="form-control" name="cla" id="cls">
						<option value="first">一级分类</option>
						<option value="second" selected>二级分类</option>
					</select>
				</div>
			</div>


			<div class="form-group" id="selectFirst">
				<label class="col-sm-2 control-label">所属一级分类:</label>
				<div class="col-sm-3">
					<select class="form-control" name="cate_fid">
						<c:forEach items="${firstlist}" var="f">
							<option value="${f.cate_id}"
								<c:if test="${f.cate_id == qb.cate_fid}">selected</c:if>>${f.cate_name}</option>

						</c:forEach>

					</select>
				</div>
			</div>
		</c:if>

		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">提交</button>
			</div>
		</div>
	</form>


	<script type="text/javascript"  src="<%=basePath%>js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/bootstrap-3.1.1.min.js"></script>
	<script>
		$("#cls").change(function() {

			if ($("#cls").val() == "first") {
				$("#selectFirst").hide();
			} else {
				$("#selectFirst").show();
			}

		});
	</script>


</body>
</html>