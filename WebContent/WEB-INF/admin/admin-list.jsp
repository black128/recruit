<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%-- --%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>欢迎页面-X-admin2.0</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<link rel="shortcut icon" href="<%=basePath%>images/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="<%=basePath%>css/font.css">
<link rel="stylesheet" href="<%=basePath%>css/xadmin.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>lib/layui/layui.js"
	charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>js/xadmin.js"></script>
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<div class="x-nav">
		<span class="layui-breadcrumb"> <a href="<%=basePath%>admin/welcome.action">首页</a> 
		<a href="<%=basePath%>admin/admin-list.action">管理员列表</a>
			
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="<%=basePath%>admin/admin-list.action" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row">
			
		</div>
		
		
		<span class="x-right" style="line-height: 40px">共有数据：${adminnum}条</span> </xblock>
		<table class="layui-table">
			<thead>
				<tr>
					
					<th>ID</th>
					<th>登录名</th>
					<th>手机</th>
					<th>邮箱</th>
					<th>角色</th>
					<th>加入时间</th>
					<th>状态</th>
					<th>操作</th>
			</thead>
			<tbody>
			<c:forEach var="adm" items="${adminlist}">
				<tr>
					
					<td>${adm.ad_id}</td>
					<td>${adm.ad_name}</td>
					<td>${adm.ad_phone}</td>
					<td>${adm.ad_email}</td>
					<td><c:if test="${adm.ad_grade==1}">超级管理员</c:if><c:if
									test="${adm.ad_grade==2}">管理员</c:if></td>
					<td><fmt:formatDate value="${adm.ad_date}"  pattern='yyyy-MM-dd HH:ss:mm'/> </td>
					<td class="td-status">
					<c:if test="${adm.ad_grade==1}"><span class="layui-btn layui-btn-normal layui-btn-mini">启用</span></c:if>
					<c:if test="${adm.ad_grade==2}">
						<span class="layui-btn layui-btn-normal layui-btn-mini" id="${adm.ad_id}" name="${adm.ad_state}">
							<c:if test="${adm.ad_state==1}">启用</c:if>
							<c:if test="${adm.ad_state==0}">停用</c:if>
						</span>
					</c:if>
					</td>
					<td class="td-manage">
					<c:if test="${adm.ad_grade==2}">
					<c:if test="${admin.ad_grade==1}">
					<a onclick="member_stop(this,'10001')"
						href="javascript:;" <c:if test="${adm.ad_state==1}">title="启用"</c:if>
							<c:if test="${adm.ad_state==0}">title="停用"</c:if> name="${adm.ad_id}"> <i class="layui-icon">&#xe601;</i>
					</a> 
					</c:if>
					</c:if></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		

	</div>
	<script>
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			//执行一个laydate实例
			laydate.render({
				elem : '#start' //指定元素
			});

			//执行一个laydate实例
			laydate.render({
				elem : '#end' //指定元素
			});
		});

		/*用户-停用*/
		function member_stop(obj, id) {
			layer.confirm('确认要更改吗？', function(index) {

				if ($(obj).attr('title') == '启用') {

					//发异步把用户状态进行更改
					$(obj).attr('title', '停用')
					$(obj).find('i').html('&#xe62f;');

					$(obj).parents("tr").find(".td-status").find('span')
							.addClass('layui-btn-disabled').html('停用');
					layer.msg('停用!', {
						icon : 5,
						time : 1000
					});

				} else {
					$(obj).attr('title', '启用')
					$(obj).find('i').html('&#xe601;');

					$(obj).parents("tr").find(".td-status").find('span')
							.removeClass('layui-btn-disabled').html('启用');
					layer.msg('启用!', {
						icon : 5,
						time : 1000
					});
				}

			});
			
			var id=obj.name;
			var state=$('#'+id).attr('name');
			
			$.ajax({
				type : "POST", // 提交方式
				url : "<%=basePath%>admin/updatestate.action",
					data : {
						"ad_id" : id,
						"ad_state" : state,
					}, // 数据 使用json格式进行传输

			});
			
		}

		/*用户-删除*/
		function member_del(obj, id) {
			layer.confirm('确认要删除吗？', function(index) {
				//发异步删除数据
				$(obj).parents("tr").remove();
				layer.msg('已删除!', {
					icon : 1,
					time : 1000
				});
			});
		}

		function delAll(argument) {

			var data = tableCheck.getData();

			layer.confirm('确认要删除吗？' + data, function(index) {
				//捉到所有被选中的，发异步进行删除
				layer.msg('删除成功', {
					icon : 1
				});
				$(".layui-form-checked").not('.header').parents('tr').remove();
			});
		}
	</script>

</body>

</html>