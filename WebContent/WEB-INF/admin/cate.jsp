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
<meta charset="UTF-8">
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
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<div class="x-nav">
		<span class="layui-breadcrumb"> <a href="<%=basePath%>admin/welcome.action">首页</a> 
		<a href="<%=basePath%>admincate/allcate.action">分类</a>
			
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="<%=basePath%>admincate/allcate.action" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row">
			<form class="layui-form layui-col-md12 x-so layui-form-pane"
				action='<%=basePath%>admincate/addcate.action' method="post">
				<input class="layui-input" placeholder="分类名" name="cate_name">
				<button class="layui-btn" lay-submit="" lay-filter="sreach">
					<i class="layui-icon"></i>增加
				</button>
			</form>
		</div>
			<xblock>
			<p class="layui-btn layui-btn-danger" >
				数据条数
			</p>
			<span class="x-right" style="line-height: 40px">共有数据：${allcatelist}条</span>
			</xblock>
			<table class="layui-table layui-form">
				<thead>
					<tr>
						<th width="20">
							<div >
								├
							</div>
						</th>
						
						<th>父栏目名 &nbsp; &nbsp;</th>
						<th>栏目名</th>
						<th>分类级别</th>
						<th width="50">排序</th>
						<th width="50">状态</th>
						<th width="220">操作</th>
				</thead>
				<tbody class="x-cate">
					<c:forEach items="${cateall}" var="cate" varStatus="sta">
						<tr cate-id='${cate.cate_id }'
							<c:if
								test="${empty cate.cate_father}">fid='0'</c:if>
							<c:if
								test="${not empty cate.cate_father}">fid='${cate.cate_father.cate_id}'</c:if>>
							<td>
								<div >
								├
								</div>
							</td>
							<td><c:if test="${empty cate.cate_father}">无</c:if> <c:if
									test="${not empty cate.cate_father}">${cate.cate_father.cate_name}</c:if></td>
							<td><c:if test="${empty cate.cate_father}">
									<i class="layui-icon x-show" status="true">&#xe623;</i>
								</c:if> ${cate.cate_name}</td>
							<td><c:if test="${empty cate.cate_father}">一级分类</c:if> <c:if
									test="${not empty cate.cate_father}">二级分类</c:if></td>
							<td><span>${sta.index}</span></td>
							<td><a id="${cate.cate_id}" value="${cate.cate_state}" onclick="changestate(this)"><c:if test="${cate.cate_state==1}">启用</c:if><c:if test="${cate.cate_state==0}">停用</c:if></a></td>
							<td class="td-manage">
								<button class="layui-btn layui-btn layui-btn-xs"
									onclick="x_admin_show('编辑','<%=basePath%>admincate/editcatebyid.action?cate_id=${cate.cate_id}')">
									<i class="layui-icon">&#xe642;</i>编辑
								</button> <c:if test="${empty cate.cate_father}">
									<button class="layui-btn layui-btn-warm layui-btn-xs"
										onclick="x_admin_show('编辑','<%=basePath%>admincate/editcatebyid.action?cate_id=${cate.cate_id}')">
										<i class="layui-icon">&#xe642;</i>添加子栏目
									</button>
								</c:if>
								<button class="layui-btn-danger layui-btn layui-btn-xs"
									id="${cate.cate_id}"
									<c:if test="${empty cate.cate_father}">name=""</c:if>
									<c:if
								test="${not empty cate.cate_father}">name="${cate.cate_father.cate_id}"</c:if>
									onclick="member_del(this,'要删除的id')" href="javascript:;">
									<i class="layui-icon">&#xe640;</i>删除
								</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
	
	</div>
	
	<script>
		layui.use([ 'form' ], function() {
			form = layui.form;

		});

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
			
			var tid = obj.id;
			var fid = $("#"+tid).attr("name");
			
			$.ajax({
				type : "POST", // 提交方式
				url : "<%=basePath%>admincate/delcatebyid.action",
				data : {
					"cate_id":tid,
					"cate_fid":fid
				}, // 数据 使用json格式进行传输
				success:function(){
					window.location.reload();
				}
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
	<script type="text/javascript">
	function changestate(obj){
		var id = obj.id;
		var state = $("#"+id).attr("value");
		
		if($("#"+id).html().trim()=="启用"){
			$("#"+id).html("停用");
		}else{
			$("#"+id).html("启用");
		}
		
		
		$.ajax({
			type : "POST", // 提交方式
			url : "<%=basePath%>admincate/updatecatestate.action",
				data : {
					"cate_id" : id,
					"cate_state" : state,
				}, // 数据 使用json格式进行传输

			});
		}
	</script>

</body>

</html>